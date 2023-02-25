package com.qimu.smbms.interceptor;

import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.User;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author qimu
 */
@Component
public class MyInterceptor implements HandlerInterceptor {
    public MyInterceptor() {
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object attribute = request.getSession().getAttribute("userSession");
        User user = (User) attribute;
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN);
        } else {
            return true;
        }
    }
}