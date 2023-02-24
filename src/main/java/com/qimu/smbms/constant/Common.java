package com.qimu.smbms.constant;

import com.qimu.smbms.common.ErrorCode;
import com.qimu.smbms.exception.BusinessException;
import org.apache.commons.lang3.StringUtils;

import java.util.Objects;

/**
 * @author: QiMu
 * @Date: 2023年02月24日 16:55
 * @Version:1.0
 * @Description: 公共类处理共同的逻辑
 */
public class Common {
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

}