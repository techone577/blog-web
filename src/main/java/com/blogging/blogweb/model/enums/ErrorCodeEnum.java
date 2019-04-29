package com.blogging.blogweb.model.enums;

/**
 * @author techoneduan
 * @date 2018/12/13
 */

public enum ErrorCodeEnum {
    //通用错误码 10950001-10950099

    NO_SERVICE_AVAILABLR(0, "服务不可用"),

    /**
     * 验证
     */
    AUTH_FAILED_ERROR(10000, "验证失败,需要重新登录"),
    PERMISSION_DENIED_ERROR(10001, "权限认证失败");

    private int code;

    private String msg;

    ErrorCodeEnum(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
