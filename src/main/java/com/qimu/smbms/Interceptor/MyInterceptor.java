package com.qimu.smbms.Interceptor;

import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.constant.UserConstant;
import com.qimu.smbms.exception.BusinessException;
import com.qimu.smbms.model.domain.User;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: QiMu
 * @Date: 2023年02月24日 22:50
 * @Version:1.0
 * @Description: 拦截器
 */
@Component
public class MyInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object attribute = request.getSession().getAttribute(UserConstant.USER_LOGIN_STATUS);
        User user = (User) attribute;
        System.out.println("11111111111111");
        if (user == null) {
            throw new BusinessException(ErrorCode.NOT_LOGIN);
        }
        return true;
    }
}
