package com.qimu.smbms.config;

import com.qimu.smbms.Interceptor.MyInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

/**
 * @author: QiMu
 * @Date: 2023年02月24日 22:58
 * @Version:1.0
 * @Description:
 */

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Resource
    private MyInterceptor myInterceptor;

    /**
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(myInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/user/login", "/user/logout","/user/current");
    }

    // @Override
    // public void addCorsMappings(CorsRegistry registry) {
    //     registry.addMapping("/**")
    //             .allowedOriginPatterns("*")
    //             .allowCredentials(true)
    //             .allowedHeaders("*")
    //             .allowedMethods("*")
    //             .maxAge(3600);
    // }
}
