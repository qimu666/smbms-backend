package com.qimu.smbms.common;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: QiMu
 * @Date: 2023年02月13日 14:47
 * @Version:1.0
 * @Description: 返回工具类
 */
@Data
public class ResultUtil implements Serializable {
    public static <T> BaseResponse<T> success(T data) {
        return new BaseResponse<>(200, data, "ok", "");
    }

    public static <T> BaseResponse<T> success(ErrorCode errorCode, T date) {
        return new BaseResponse<>(errorCode.getCode(), date, errorCode.getMessage(), errorCode.getDescription());
    }

    public static <T> BaseResponse<T> success(ErrorCode errorCode) {
        return new BaseResponse<>(errorCode.getCode(), null, errorCode.getMessage(), errorCode.getDescription());
    }

    public static <T> BaseResponse<T> success(ErrorCode errorCode, String description) {
        return new BaseResponse<>(errorCode.getCode(), null, errorCode.getMessage(), description);
    }

    public static <T> BaseResponse<T> success(int code, String message) {
        return new BaseResponse<>(code, null, message, "");
    }

    public static <T> BaseResponse<T> success(T data, ErrorCode errorCode) {
        return new BaseResponse<>(errorCode.getCode(), data, errorCode.getMessage(), errorCode.getDescription());
    }

    public static <T> BaseResponse<T> error(int code, String message) {
        return new BaseResponse<>(code, null, message, "");
    }
    public static <T> BaseResponse<T> error(ErrorCode errorCode) {
        return new BaseResponse<>(errorCode.getCode(), null, errorCode.getMessage(), errorCode.getDescription());
    }

    public static <T> BaseResponse<T> error(ErrorCode errorCode, String description) {
        return new BaseResponse<>(errorCode.getCode(), null, errorCode.getMessage(), description);
    }

    public static <T> BaseResponse<T> error(ErrorCode errorCode, String message, String description) {
        return new BaseResponse<>(errorCode.getCode(), null, message, description);
    }

    public static <T> BaseResponse<T> error(int code, String message, String description) {
        return new BaseResponse<>(code, null, message, description);
    }
}
