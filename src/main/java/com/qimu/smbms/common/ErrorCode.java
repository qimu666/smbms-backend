package com.qimu.smbms.common;

/**
 * @author: QiMu
 * @Date: 2023年02月13日 20:26
 * @Version:1.0
 * @Description: 错误码
 */
public enum ErrorCode {
    /**
     * 未登录
     */
    NOT_LOGIN(40100, "未登录", ""),
    /**
     * 操作失败
     */
    ERROR_CODE(40400, "操作失败", ""),
    /**
     * 失败
     */
    OPERATE_ERROR(40002, "error", ""),
    /**
     * 请求参数错误
     */
    PARAMS_ERROR(40000, "请求参数错误", ""),
    /**
     * 请求参数为空
     */
    REQUEST_NULL_ERROR(40001, "请求参数为空", ""),
    /**
     * 请求有误
     */
    RESULT_ERROR(40102, "请求有误", ""),
    /**
     * 成功
     */
    SUCCESS(0, "ok", ""),
    /**
     * 系统内部错误
     */
    SYSTEM_ERROR(50000, "系统内部错误", ""),
    /**
     * 用户存在
     */
    USER_EXITS(40003, "用户已存在", ""),
    ;
    /**
     * 错误码
     */

    private final int code;
    /**
     * 错误描述
     */
    private final String message;
    /**
     * 错误详细描述
     */
    private final String description;

    ErrorCode(int code, String message, String description) {
        this.code = code;
        this.message = message;
        this.description = description;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    public String getDescription() {
        return description;
    }
}
