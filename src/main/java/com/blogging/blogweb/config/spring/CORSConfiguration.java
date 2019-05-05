package com.blogging.blogweb.config.spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.http.HttpServletRequest;

@Configuration
public class CORSConfiguration {
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            final String ORIGINS[] = new String[] { "GET", "POST", "PUT", "DELETE" };
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**").allowedOrigins("http://39.108.184.185:8088").allowCredentials(true).allowedMethods(ORIGINS)
                        .maxAge(3600).exposedHeaders("Set-Cookie","ams-JSESSIONID");
            }
        };
    }
}