package com.qimu.smbms.constant;

/**
 * @author: QiMu
 * @Date: 2023年02月13日 09:28
 * @Version:1.0
 * @Description: 公用组件
 */
public interface UserConstant {
    /**
     * 用户登录态
     */
    String USER_LOGIN_STATUS = "userSession";

    int LOGIN_SUCCESS = 1;

    int LOGIN_OUT_SUCCESS = 0;

    String PAID = "已支付";

    String NOT_PAID = "未支付";

    /**
     * 输入的不是特殊字符正则
     */
    String PATTERN = "[0-9a-zA-Z]+";

    /**
     * 手机号正则
     */
    String PHONE_PATTERN = "^[1-9]\\d{10}$";

}
