package com.blogging.blogweb.web;

import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.*;
import com.blogging.blogweb.support.annotation.ValidAuthentication;
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
    @ValidAuthentication
    public Response queryPosts(@RequestBody BMPostListQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryPosts, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询草稿
     */
    @ResponseBody
    @RequestMapping(value = "/queryDrafts", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryDrafts(@RequestBody BMDraftsQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryDrafts, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询回收站
     */
    @ResponseBody
    @RequestMapping(value = "/queryRubbishes", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryRubbishes(@RequestBody BMRubbishQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryRubbishes, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询标签列表
     */
    @ResponseBody
    @RequestMapping(value = "/queryTags", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryTags(@RequestBody TagQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryTags, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询单篇文章（编辑器使用）
     */
    @ResponseBody
    @RequestMapping(value = "/queryBlog", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryBlog(@RequestBody PostQueryDTO queryDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryBlog, JsonUtil.toString(queryDTO));
        return resp;
    }

    /**
     * 查询下拉tagList
     */
    @ResponseBody
    @RequestMapping(value = "/queryTagList", method = RequestMethod.POST)
    public Response queryTagList() {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryTagList, null);
        return resp;
    }

    /**
     * 发布文章
     */
    @ResponseBody
    @RequestMapping(value = "/releasePost", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response releasePost(@RequestBody BMPostModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_releasePost, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 下线文章
     */
    @ResponseBody
    @RequestMapping(value = "/offlinePost", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response offlinePost(@RequestBody BMPostModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_offlinePost, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 文章逻辑删除
     */
    @ResponseBody
    @RequestMapping(value = "/removePost", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response removePost(@RequestBody BMPostModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_removePost, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 文章恢复
     */
    @ResponseBody
    @RequestMapping(value = "/recoverPost", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response recoverPost(@RequestBody BMPostModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_recoverPost, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 标签名称修改
     */
    @ResponseBody
    @RequestMapping(value = "/editTag", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response editTag(@RequestBody BMTagEditReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_editTag, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 标签名称添加
     */
    @ResponseBody
    @RequestMapping(value = "/addTag", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response addTag(@RequestBody BMTagModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_addTag, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 删除标签
     */
    @ResponseBody
    @RequestMapping(value = "/delTagForPost", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response delTagForPost(@RequestBody BMTagModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_delTagForPost, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 博客新增
     *
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/postAdd", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response addPost(@RequestBody BMPostAddDTO addDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_postAdd, JsonUtil.toString(addDTO));
        return resp;
    }

    /**
     * 博客更新
     *
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/postUpdate", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response postUpdate(@RequestBody BMPostUpdateDTO updateDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_postUpdate, JsonUtil.toString(updateDTO));
        return resp;
    }

    /**
     * 博客删除
     *
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/postDelete", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response postDelete(@RequestBody BMPostModifyReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_postDelete, JsonUtil.toString(reqDTO));
        return resp;
    }

    /**
     * 标签删除
     *
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/tagDelete", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response tagDelete(@RequestBody BMTagDelReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_delTag, JsonUtil.toString(reqDTO));
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/queryUsers", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response queryUsers() {
        Response resp = serviceClient.call(BSPServiceName.AMS_BM_queryUsers, null);
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/querySingleUser", method = RequestMethod.POST)
    @ValidAuthentication
    public Response querySingleUser(@RequestBody AuthReqDTO reqDTO) {
        Response resp = serviceClient.call(BSPServiceName.AMS_BM_querySingleUser, JsonUtil.toString(reqDTO));
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/addCategory", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response addCategory(@RequestBody BMCategoryAddDTO addDTO) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_addCategory, JsonUtil.toString(addDTO));
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/queryCategory", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryCategory() {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryCategory, null);
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/queryCategoryNames", method = RequestMethod.POST)
    @ValidAuthentication
    public Response queryCategoryNames() {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_queryCategoryNames, null);
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/modifyCategory", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response modifyCategory(@RequestBody BMCategoryModifyDTO dto) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_modifyCategory, JsonUtil.toString(dto));
        return resp;
    }

    @ResponseBody
    @RequestMapping(value = "/deleteCategory", method = RequestMethod.POST)
    @ValidAuthentication(permission = "root")
    public Response deleteCategory(@RequestBody BMCategoryModifyDTO dto) {
        Response resp = serviceClient.call(BSPServiceName.APS_BM_deleteCategory, JsonUtil.toString(dto));
        return resp;
    }

}
