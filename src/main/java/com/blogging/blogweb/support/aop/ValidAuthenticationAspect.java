package com.blogging.blogweb.support.aop;

import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.model.enums.ErrorCodeEnum;
import com.blogging.blogweb.support.annotation.ValidAuthentication;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.exception.UnifiedException;
import com.blogging.blogweb.support.utils.JsonUtil;
import com.blogging.blogweb.support.utils.ResponseBuilder;
import org.apache.commons.lang.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * 登录状态及权限判断
 *
 * @author techoneduan
 * @date 2019/4/27
 */

@Aspect
@Component
public class ValidAuthenticationAspect {

    private static final Logger LOG = LoggerFactory.getLogger(ValidAuthenticationAspect.class);

    @Autowired
    private ServiceClient client;

    @Pointcut(value = "@annotation(validAuthentication)", argNames = "validAuthentication")
    public void authenticationPointcut(ValidAuthentication validAuthentication) {
    }


    @Before(value = "authenticationPointcut(validAuthentication)")
    public void validAuthentication(JoinPoint joinPoint, ValidAuthentication validAuthentication) {
        String permission = validAuthentication.permission();
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        String amsJSID = request.getHeader("ams-session-id");
        if (StringUtils.isBlank(amsJSID)) {
            Cookie[] cookies = request.getCookies();
            if (null == cookies || cookies.length == 0)
                throw new UnifiedException(ErrorCodeEnum.AUTH_FAILED_ERROR);
            for (Cookie c : cookies) {
                if ("ams-session-id".equals(c.getName()))
                    amsJSID = c.getValue();
            }
            if (StringUtils.isBlank(amsJSID))
                throw new UnifiedException(ErrorCodeEnum.AUTH_FAILED_ERROR);
        }
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", amsJSID);
        map.put("authority", permission);
        Response response = client.call(BSPServiceName.AMS_AUTH_CERTIFY, JsonUtil.toString(map));
        if (!response.isSuccess()) {
            if (response.getErrorCode() == 20009)
                throw new UnifiedException(ErrorCodeEnum.PERMISSION_DENIED_ERROR,response.getMsg());
            else
                throw new UnifiedException(ErrorCodeEnum.AUTH_FAILED_ERROR);
        }

    }
}
