package com.blogging.blogweb.web;

import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.PostListQueryDTO;
import com.blogging.blogweb.model.entity.PostQueryDTO;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author techoneduan
 * @date 2019/4/13
 */

@Controller
@RequestMapping(value = "/BM")
public class BMController {

    @Autowired
    private ServiceClient serviceClient;

    /**
     * 查询文章列表
     */
    @ResponseBody
    @RequestMapping(value = "/queryPosts", method = RequestMethod.POST)
    public Response queryPosts(@RequestBody PostListQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryPosts, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询标签列表
     */
    @ResponseBody
    @RequestMapping(value = "/queryTags", method = RequestMethod.POST)
    public Response queryPosts() {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryTags, null);
        return resp;
    }

    /**
     * 查询单篇文章（编辑器使用）
     */
    @ResponseBody
    @RequestMapping(value = "/queryBlog", method = RequestMethod.POST)
    public Response queryBlog(@RequestBody PostQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryBlog, JsonUtil.toString(queryDTO));
        return resp;
    }
}
