package com.blogging.blogweb.model.entity;

public class ImageRespDTO {

    // 0-上传失败 1-上传成功
    private Integer success;

    //提示信息
    private String message;

    //图片地址
    private String url;

    public Integer getSuccess() {
        return success;
    }

    public void setSuccess(Integer success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
