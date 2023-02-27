package com.qimu.smbms.config;

import com.qimu.smbms.interceptor.MyInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

/**
 * @author qimu
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Resource
    private MyInterceptor myInterceptor;

    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(this.myInterceptor)
                .addPathPatterns("/**").
                excludePathPatterns("/user/login", "/user/logout", "/user/current");
    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                .allowedOriginPatterns("http://101.43.61.87", "http://localhost:8090")
                .allowCredentials(true)
                .allowedHeaders("*")
                .allowedMethods("*")
                .maxAge(3600);
    }
}
