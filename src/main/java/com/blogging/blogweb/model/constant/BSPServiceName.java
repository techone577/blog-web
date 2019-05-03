package com.blogging.blogweb.model.constant;

/**
 * @author techoneduan
 * @date 2018/12/20
 * <p>
 * 需要使用其他系统的 BSP名称 统一管理
 */
public class BSPServiceName {

    /**
     * blog-web
     */
    public static final String APS_homePagePostQuery = "Blogging.APS.PostController.HomePageListQuery";

    public static final String APS_postImageUpload = "Blogging.APS.ImageController.uploadForPost";

    public static final String APS_coverImageUpload = "Blogging.APS.ImageController.uploadForCover";

    public static final String APS_blogQuery = "Blogging.APS.PostController.query";

    public static final String APS_postListPagingQuery = "Blogging.APS.PostController.postListPagingQuery";

    public static final String APS_imageObtain = "Blogging.APS.ImageController.obtain";

    public static final String APS_tagShow = "Blogging.APS.PostController.tagShow";

    public static final String APS_categoryShow = "Blogging.APS.PostController.queryCategoryInfos";

    /**
     * blog-vue-admin
     */
    public static final String APS_BM_queryPosts = "Blogging.APS.BMController.queryPosts";

    public static final String APS_BM_queryTags = "Blogging.APS.BMController.queryTags";

    public static final String APS_BM_queryBlog = "Blogging.APS.BMController.queryBlog";

    public static final String APS_BM_queryDrafts = "Blogging.APS.BMController.queryDrafts";

    public static final String APS_BM_queryRubbishes = "Blogging.APS.BMController.queryRubbishes";

    public static final String APS_BM_queryTagList = "Blogging.APS.BMController.queryTagList";

    public static final String APS_BM_releasePost = "Blogging.APS.BMController.postRelease";

    public static final String APS_BM_offlinePost = "Blogging.APS.BMController.postOffline";

    public static final String APS_BM_removePost = "Blogging.APS.BMController.postRemove";

    public static final String APS_BM_recoverPost = "Blogging.APS.BMController.postRecover";

    public static final String APS_BM_editTag = "Blogging.APS.BMController.editTag";

    public static final String APS_BM_addTag = "Blogging.APS.BMController.addTag";

    public static final String APS_BM_delTagForPost = "Blogging.APS.BMController.delTagForPost";

    public static final String APS_BM_delTag = "Blogging.APS.BMController.tagDelete";

    public static final String APS_BM_postAdd = "Blogging.APS.BMController.postAdd";

    public static final String APS_BM_postUpdate = "Blogging.APS.BMController.postUpdate";

    public static final String APS_BM_postDelete = "Blogging.APS.BMController.postDelete";

    public static final String APS_BM_addCategory = "Blogging.APS.BMController.addCategory";

    public static final String APS_BM_queryCategory = "Blogging.APS.BMController.queryCategory";

    public static final String APS_BM_modifyCategory = "Blogging.APS.BMController.modifyCategory";

    public static final String APS_BM_queryCategoryNames = "Blogging.APS.BMController.queryCategoryNames";


    /**
     * AMS
     */
    public static final String AMS_AUTH_login = "Blogging.AMS.AuthController.login";

    public static final String AMS_AUTH_logout = "Blogging.AMS.AuthController.logout";

    public static final String AMS_AUTH_CERTIFY = "Blogging.AMS.AuthController.stateJudge";

    public static final String AMS_BM_queryUsers = "Blogging.AMS.BMController.queryUsers";

    public static final String AMS_AUTH_register = "Blogging.AMS.AuthController.register";

    public static final String AMS_AUTH_delUser = "Blogging.AMS.AuthController.delUser";

    public static final String AMS_AUTH_modify = "Blogging.AMS.AuthController.modify";

    public static final String AMS_BM_querySingleUser = "Blogging.AMS.BMController.queryUserByName";

}
