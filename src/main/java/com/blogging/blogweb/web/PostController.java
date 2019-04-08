package com.blogging.blogweb.web;


import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.PostAddReqEntity;
import com.blogging.blogweb.model.entity.PostListQueryDTO;
import com.blogging.blogweb.model.entity.PostQueryDTO;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/post")
public class PostController {
    @Autowired
    private ServiceClient serviceClient;

    /**
     * 博客新增
     * @param entity
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public Response addPost(@RequestBody PostAddReqEntity entity){
        Response resp = serviceClient.call(BSPServiceName.APS_postAdd, JsonUtil.toString(entity));
        return resp;
    }

    /**
     * 首页文章查询
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/homePageQuery",method = RequestMethod.POST)
    public Response homePageQuery(){
        Response resp = serviceClient.call(BSPServiceName.APS_homePagePostQuery,null);
        return resp;
    }

    /**
     * 博客展示
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/queryBlog",method = RequestMethod.POST)
    public Response homePageQuery(@RequestBody PostQueryDTO queryDTO){
        Response resp = serviceClient.call(BSPServiceName.APS_blogQuery,JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 分页查询
     */
    @ResponseBody
    @RequestMapping(value = "/queryPostList",method = RequestMethod.POST)
    public Response queryPostList(@RequestBody PostListQueryDTO queryDTO){
        Response resp = serviceClient.call(BSPServiceName.APS_postListPagingQuery,JsonUtil.toString(queryDTO));
        return resp;
    }
}
