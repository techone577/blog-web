package com.blogging.blogweb.service;

import com.blogging.blogweb.model.constant.NettyHeader;
import com.blogging.blogweb.model.constant.RedisConstants;
import com.blogging.blogweb.model.entity.NettyRespEntity;
import com.blogging.blogweb.support.utils.RedisUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

/**
 * @author techoneduan
 * @date 2018/12/17
 */

@Service
public class RegistryNettyService extends AbstractNettyService {

    private static final Logger LOG = LoggerFactory.getLogger(RegistryNettyService.class);

    @Autowired
    private RedisUtil redisUtil;

    @Override
    public void dealRequest (NettyRespEntity resp) {
        redisUtil.doCache(RedisConstants.INSTANCE_CACHE, resp.getResponse());
        redisUtil.expire(RedisConstants.INSTANCE_CACHE, 30, TimeUnit.DAYS);
    }

    @Override
    public boolean matching (String factor) {
        return NettyHeader.REGISTRY.equals(factor);
    }


}
