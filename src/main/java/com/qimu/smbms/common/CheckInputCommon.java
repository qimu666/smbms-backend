package com.qimu.smbms.common;

import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.constant.UserConstant;
import com.qimu.smbms.exception.BusinessException;
import org.apache.commons.lang3.StringUtils;

import java.util.Objects;

/**
 * @author: QiMu
 * @Date: 2023年02月24日 16:55
 * @Version:1.0
 * @Description: 公共类处理共同的逻辑
 */
public class CheckInputCommon {
    /**
     * 检查id是否为空或者为0,如果是就抛出异常
     *
     * @param id id
     */
    public static void checkId(Integer id) {
        if (id == null || Objects.equals(id, 0) || id < 0) {
            throw new BusinessException(ErrorCode.RESULT_ERROR);
        }
    }

    /**
     * 校验是否为空
     *
     * @param obj 对象
     * @param <T> 泛型
     */
    public static <T> void notNull(T obj) {
        if (obj == null) {
            throw new BusinessException(ErrorCode.RESULT_ERROR, "请求有误");
        }
    }

    /**
     * 校验String类型是否为空白
     *
     * @param string 字符串
     */
    public static void checkStringIsAnyBlank(String... string) {
        if (StringUtils.isAnyBlank(string)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "输入有误 (>_<) !!!");
        }
    }

    /**
     * 正则匹配字符串不包含特殊字符是否符合要求
     *
     * @param string 字符串
     */
    public static void stringPattern(String string) {
        if (!string.matches(UserConstant.PATTERN)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户编码不能包含特殊字符 (>_<) !!! ");
        }
    }

    /**
     * 正则手机号是否符合要求
     * * @param phone 手机号
     */
    public static void phonePattern(String phone) {
        if (!phone.matches(UserConstant.PHONE_PATTERN)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "手机号不正确 (>_<) !!!");
        }
    }
}
