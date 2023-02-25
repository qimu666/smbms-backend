package com.qimu.smbms.config;

import com.qimu.smbms.interceptor.MyInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

/**
 * @author qimu
 */
// @Configuration
public class WebConfig implements WebMvcConfigurer {
    @Resource
    private MyInterceptor myInterceptor;

    public WebConfig() {
    }

    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(this.myInterceptor).addPathPatterns(new String[]{"/**"}).excludePathPatterns(new String[]{"/user/login", "/user/logout", "/user/current"});
    }
}
