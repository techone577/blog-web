package com.blogging.blogweb.support.bsp;

import com.blogging.blogweb.model.constant.Constants;
import com.blogging.blogweb.model.constant.NettyHeader;
import com.blogging.blogweb.model.constant.RedisConstants;
import com.blogging.blogweb.model.constant.RestMethod;
import com.blogging.blogweb.model.entity.NettyReqEntity;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.model.entity.ServiceEntity;
import com.blogging.blogweb.model.enums.ErrorCodeEnum;
import com.blogging.blogweb.model.syncMap.SyncMap;
import com.blogging.blogweb.netty.NettyClient;
import com.blogging.blogweb.support.exception.UnifiedException;
import com.blogging.blogweb.support.interceptor.RestRequestInterceptor;
import com.blogging.blogweb.support.utils.Base64Util;
import com.blogging.blogweb.support.utils.JsonUtil;
import com.blogging.blogweb.support.utils.RedisUtil;
import com.blogging.blogweb.support.utils.ResponseBuilder;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * @author techoneduan
 * @date 2018/12/15
 * <p>
 * 服务调用工具
 */
@Component
public class ServiceClient {

    private static final Logger LOG = LoggerFactory.getLogger(ServiceClient.class);

    private final RestTemplate restTemplate = new RestTemplate() {
        {
            setInterceptors(Collections.singletonList(new RestRequestInterceptor()));
        }
    };

    @Autowired
    private RedisUtil redisUtil;

    public Response call(String serviceName, String params) {
        String response = excuteCall(serviceName, params);
        return ResponseBuilder.buildResult(response);
    }

    private String excuteCall(String serviceName, String params) {
        List<ServiceEntity> serviceList = pullServiceFromLocal();
        if (null == serviceList || serviceList.size() == 0)
            throw new UnifiedException(ErrorCodeEnum.NO_SERVICE_AVAILABLR);
        /**
         * TODO 超时重试、负载均衡
         */
        Optional<ServiceEntity> optional = serviceList.stream().filter(item -> item.getServiceName().equals(serviceName)).findAny();
        if (!optional.isPresent() || null == optional.get())
            throw new UnifiedException(ErrorCodeEnum.NO_SERVICE_AVAILABLR);
        ServiceEntity service = optional.get();
        String resp = excuteByMethod(service, params);
        return resp;
    }

    private String excuteByMethod(ServiceEntity service, String params) {
        String resp = null;
        String url = Constants.HTTP_PREFIX + service.getIpAddr() + Constants.PATH_SEPERATOR + service.getPort() + service.getRouteAddr();
        LOG.info("BSP调用,serviceName:{},route:{},params:{}", service.getServiceName(), url, params);
        if (null != params)
            params = Base64Util.encodeToUrlSafeString(params);
        if (RestMethod.POST.equalsIgnoreCase(service.getMethod())) {
            ResponseEntity<String> responseEntity = restTemplate.postForEntity(url, params, String.class);
            setCookie(responseEntity);
            setAMSJSESSIONID(responseEntity);
            resp = responseEntity.getBody();
        } else if (RestMethod.GET.equalsIgnoreCase(service.getMethod())) {
            /**
             * 避免restTemplate强制url encode
             */
            UriComponentsBuilder uriBuilder = null;
            if (null != params) {
               uriBuilder = UriComponentsBuilder.fromHttpUrl(url + Constants.QUESTION_MARK + params);
            } else{
                uriBuilder = UriComponentsBuilder.fromHttpUrl(url);
            }
            ResponseEntity<String> responseEntity = restTemplate.getForEntity(uriBuilder.build().toUri(), String.class);
            setCookie(responseEntity);
            resp = responseEntity.getBody();
        }
//        resp = Base64Util.decode(resp.replaceAll("\"",""));
        resp = Base64Util.decode(resp);
        return resp;
    }

    /**
     * 设置cookie
     *
     * @param responseEntity
     */
    private void setCookie(ResponseEntity responseEntity) {
        if (null != responseEntity && responseEntity.getHeaders().containsKey("Set-Cookie")) {
            HttpHeaders httpHeaders = responseEntity.getHeaders();
            List<String> cookies = httpHeaders.get("Set-Cookie");
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            HttpServletResponse response = attributes.getResponse();
            if (null != cookies) {
                cookies.forEach(i -> {
                    String name = i.split(";")[0].split("=")[0];
                    String value = i.split(";")[0].split("=")[1];
                    Cookie cookie = new Cookie(name, value);
                    //不指定过期时间 为绘画性cookie 浏览器关闭自动清除
//                  cookie.setMaxAge(3600);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                });
            }
        }
    }

    /**
     * 设置 ams-JSID response header
     *
     * @return
     */
    private void setAMSJSESSIONID(ResponseEntity responseEntity) {
        HttpHeaders httpHeaders = responseEntity.getHeaders();
        if (httpHeaders.containsKey("ams-JSESSIONID")) {
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            HttpServletResponse response = attributes.getResponse();
            List<String> jsid = httpHeaders.get("ams-JSESSIONID");
            if (null != jsid && jsid.size() > 0)
                response.addHeader("ams-JSESSIONID", jsid.get(0));
        }
    }

    private List<ServiceEntity> pullServiceFromLocal() {
        List<ServiceEntity> list = null;
        String services = redisUtil.getString(RedisConstants.INSTANCE_CACHE);
        if (StringUtils.isBlank(services))
            services = pullServiceFromRemote();

        if (StringUtils.isBlank(services))
            throw new UnifiedException(ErrorCodeEnum.NO_SERVICE_AVAILABLR);
        List<ServiceEntity> serviceList = JsonUtil.toList(services, ServiceEntity.class);
        return serviceList;
    }

    private String pullServiceFromRemote() {
        NettyReqEntity entity = new NettyReqEntity();
        entity.setRequestId(UUID.randomUUID().toString());
        entity.setHeader(NettyHeader.PULL);
        NettyClient.send(JsonUtil.toString(entity));
        while (!SyncMap.hasKey(entity.getRequestId())) {
            //TODO 设置超时时间
            LOG.info("wait!");
        }
        return SyncMap.get(entity.getRequestId());
    }

}
