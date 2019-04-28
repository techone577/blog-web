package com.blogging.blogweb.support.interceptor;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.ClientHttpRequestExecution;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author techoneduan
 * @date 2018/12/17
 * <p>
 * 构造请求头
 */
public class RestRequestInterceptor implements ClientHttpRequestInterceptor {
    @Override
    public ClientHttpResponse intercept(HttpRequest httpRequest, byte[] bytes, ClientHttpRequestExecution clientHttpRequestExecution) throws IOException {
        HttpHeaders headers = httpRequest.getHeaders();
        headers.add("Content-Type", "application/json");
        //TODO 请求status 406 错误
//        headers.add("Accept", "application / json");

        /**
         * 获取cookie并传递
         */
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        headers.add("ams-session-id", request.getHeader("ams-session-id"));
        Cookie[] cookies = request.getCookies();
        if (null != cookies) {
            List<String> cookieList = new ArrayList<>();
            for (Cookie cookie : cookies) {
                String k_v = cookie.getName() + "=" + cookie.getValue();
                cookieList.add(k_v);
            }
            headers.put(HttpHeaders.COOKIE, cookieList);
        }
        return clientHttpRequestExecution.execute(httpRequest, bytes);
    }
}
