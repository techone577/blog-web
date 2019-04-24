package com.blogging.blogweb.config.spring;


import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.servlet.MultipartConfigElement;
import java.util.List;

/**
 * @author techoneduan
 * @date 2018/11/6
 */
@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Bean
    public InternalResourceViewResolver viewResolver () {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/jsp/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public ViewInteceptor viewInteceptor () {
        return new ViewInteceptor();
    }

    @Override
    public void addInterceptors (InterceptorRegistry registry) {
        registry.addInterceptor(viewInteceptor()).addPathPatterns("/**");
    }

    //静态资源配置
    @Override
    public void addResourceHandlers (ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }

    //设置上传文件大小限制
    @Bean
    public MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory config = new MultipartConfigFactory();
        config.setMaxFileSize("10MB");
        config.setMaxRequestSize("100MB");
        return config.createMultipartConfig();
    }


//    @Bean
//    public JsonMapperArgumentResolver jsonMapperArgumentResolver () {
//        JsonMapperArgumentResolver jsonMapperArgumentResolver = new JsonMapperArgumentResolver();
//        return jsonMapperArgumentResolver;
//    }

//    @Override
//    public void addArgumentResolvers (List<HandlerMethodArgumentResolver> argumentResolvers) {
//        argumentResolvers.add(jsonMapperArgumentResolver());
//
//    }

//    //过滤器
//    @Bean
//    public FilterRegistrationBean filterRegistrationBean () {
//        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
//        filterRegistrationBean.setFilter(base64DecodingFilter());
//        filterRegistrationBean.setFilter(frameWorkFilter());
//        filterRegistrationBean.addUrlPatterns("/api/*");
//        return filterRegistrationBean;
//    }
//
//    @Bean
//    public FrameWorkFilter frameWorkFilter () {
//        return new FrameWorkFilter();
//    }
//
//    @Bean
//    public Base64DecodingFilter base64DecodingFilter () {
//        return new Base64DecodingFilter();
//    }


//    //消息转换器
//    @Override
//    public void configureMessageConverters(List<HttpMessageConverter<?>> converters){
//        StringHttpMessageConverter converter  = new StringHttpMessageConverter(Charset.forName("UTF-8"));
//       converters.add(converter);
//    }

}
