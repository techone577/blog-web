package com.blogging.blogweb.support.utils;

import com.blogging.blogweb.model.entity.Response;

/**
 * @author techoneduan
 * @date 2018/11/6
 */
public class ResponseBuilder {

    public static Response build (boolean isSuccess, Object data) {
        Response response = new Response();
        response.setSuccess(isSuccess);
        response.setData(data);
        return response;
    }
}
