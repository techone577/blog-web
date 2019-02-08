package com.blogging.blogweb.config.spring;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author techoneduan
 * @date 2018/11/26
 */
@Configuration
public class HTTPRedirectConfig {
//    springboot2.0不支持EmbeddedServletContainerFactory
    @Bean
    public ServletWebServerFactory servletContainer() {
        TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory() {
            @Override
            protected void postProcessContext(Context context) {
                //配置http访问
                SecurityConstraint nonSecurityConstraint = new SecurityConstraint();
                nonSecurityConstraint.setUserConstraint("NONE");
                SecurityCollection nonSecurityCollection = new SecurityCollection();
                nonSecurityCollection.addPattern("/test/*");
                nonSecurityConstraint.addCollection(nonSecurityCollection);
                context.addConstraint(nonSecurityConstraint);

                SecurityConstraint securityConstraint = new SecurityConstraint();
                securityConstraint.setUserConstraint("CONFIDENTIAL");
                SecurityCollection collection = new SecurityCollection();
                collection.addPattern("/view/sign/*");
                //用rest测试扣具测接口因为状态码为302/301，会强制切换请求头为get方法，或者客户端手动返回307/308
//              collection.addPattern("/api/index/*");
                securityConstraint.addCollection(collection);
                context.addConstraint(securityConstraint);
            }
        };
        tomcat.addAdditionalTomcatConnectors(redirectConnector());
        return tomcat;
    }

    private Connector redirectConnector() {
        Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
        connector.setScheme("http");
        connector.setPort(8080);
        connector.setSecure(false);
        connector.setRedirectPort(8443);
        return connector;
    }
}
