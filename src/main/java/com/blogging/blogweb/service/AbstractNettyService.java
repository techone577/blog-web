package com.blogging.blogweb.service;


import com.blogging.blogweb.model.entity.NettyRespEntity;
import com.blogging.blogweb.support.strategy.MatchingBean;

/**
 * @author techoneduan
 * @date 2018/12/17
 */
public abstract class AbstractNettyService implements MatchingBean<String> {

    public abstract void dealRequest (NettyRespEntity resp);

}
