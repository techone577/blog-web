package com.blogging.blogweb.model.constant;

import java.util.ArrayList;
import java.util.List;

/**
 * @author techoneduan
 * @date 2018/12/20
 */
public class BspSubscribeService {

    /**
     * 注册成为该服务的消费者 统一管理
     */
    public static List<String> subscribeList = new ArrayList<String>() {
        {
            add(BSPServiceName.APS_postAdd);
            add(BSPServiceName.APS_homePagePostQuery);
            add(BSPServiceName.APS_imageUpload);
            add(BSPServiceName.APS_blogQuery);
            add(BSPServiceName.APS_postListPagingQuery);
            add(BSPServiceName.APS_imageObtain);
            add(BSPServiceName.APS_tagShow);
            add(BSPServiceName.APS_BM_queryPosts);
            add(BSPServiceName.APS_BM_queryTags);
            add(BSPServiceName.APS_BM_queryBlog);
            add(BSPServiceName.APS_BM_queryDrafts);
            add(BSPServiceName.APS_BM_queryRubbishes);
            add(BSPServiceName.APS_BM_queryTagList);
            add(BSPServiceName.APS_BM_releasePost);
            add(BSPServiceName.APS_BM_removePost);
            add(BSPServiceName.APS_BM_offlinePost);
            add(BSPServiceName.APS_BM_recoverPost);
            add(BSPServiceName.APS_BM_editTag);
            add(BSPServiceName.APS_BM_addTag);
            add(BSPServiceName.APS_BM_delTagForPost);
        }
    };
}
