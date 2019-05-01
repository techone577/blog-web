package com.blogging.blogweb.web;

import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.AuthReqDTO;
import com.blogging.blogweb.model.entity.RegisterReqDTO;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.model.entity.UserInfoModifyDTO;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.utils.JsonUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author techoneduan
 * @date 2019/4/27
 */

@Controller
@RequestMapping(value = "/auth")
public class AuthController {

    public static final Logger LOG = LoggerFactory.getLogger(AuthController.class);

    @Autowired
    private ServiceClient client;


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Response login(@RequestBody AuthReqDTO reqDTO) {
        return client.call(BSPServiceName.AMS_AUTH_login, JsonUtil.toString(reqDTO));
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public Response logout(@RequestBody AuthReqDTO reqDTO) {
        return client.call(BSPServiceName.AMS_AUTH_logout, JsonUtil.toString(reqDTO));
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Response rehister(@RequestBody RegisterReqDTO dto) {
        return client.call(BSPServiceName.AMS_AUTH_register, JsonUtil.toString(dto));
    }

    @RequestMapping(value = "/delUser", method = RequestMethod.POST)
    @ResponseBody
    public Response delUser(@RequestBody AuthReqDTO dto) {
        return client.call(BSPServiceName.AMS_AUTH_delUser, JsonUtil.toString(dto));
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    @ResponseBody
    public Response modify(@RequestBody UserInfoModifyDTO dto) {
        return client.call(BSPServiceName.AMS_AUTH_modify, JsonUtil.toString(dto));
    }

}
