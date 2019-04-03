package com.blogging.blogweb.web;


import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.PostAddReqEntity;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/post")
public class PostController {
    @Autowired
    private ServiceClient serviceClient;

    @RequestMapping(value = "add")
    public Response addPost(@RequestBody PostAddReqEntity entity){
        Response resp = serviceClient.call(BSPServiceName.APS_postAdd, JsonUtil.toString(entity));
        return resp;
    }
}
