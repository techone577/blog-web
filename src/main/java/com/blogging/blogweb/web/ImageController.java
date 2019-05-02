package com.blogging.blogweb.web;


import com.blogging.blogweb.model.constant.BSPServiceName;
import com.blogging.blogweb.model.entity.ImageLoadReqDTO;
import com.blogging.blogweb.model.entity.ImageRespDTO;
import com.blogging.blogweb.model.entity.Response;
import com.blogging.blogweb.support.bsp.ServiceClient;
import com.blogging.blogweb.support.utils.JsonUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

import sun.misc.BASE64Encoder;

@Controller
@RequestMapping(value = "/image")
public class ImageController {

    private static Logger LOG = LoggerFactory.getLogger(ImageController.class);

    @Autowired
    private ServiceClient client;


    //editormd-image-file
    @ResponseBody
    @RequestMapping(value = "/uploadForPost")
    public ImageRespDTO uploadForPost(@RequestParam(value = "editormd-image-file") MultipartFile file,
                                      HttpServletRequest request, HttpServletResponse response) throws Exception {

        ImageRespDTO respDTO = new ImageRespDTO() {{
            setSuccess(0);
            setMessage("file is null");
            setUrl(null);
        }};
        if (null == file)
            return respDTO;

        BASE64Encoder encoder = new BASE64Encoder();
        String imString = encoder.encode(file.getBytes());
        Map<String, Object> imMap = new HashMap<>();
        imMap.put("imString", imString);
        imMap.put("orignalName", file.getOriginalFilename());
        Response resp = client.call(BSPServiceName.APS_postImageUpload, JsonUtil.toString(imMap));
        if (resp.isSuccess())
            respDTO = JsonUtil.toBean(resp.getData(), ImageRespDTO.class);
        return respDTO;

    }

    @ResponseBody
    @RequestMapping(value = "/uploadForCover")
    public ImageRespDTO uploadForCover(@RequestParam(value = "editormd-image-file") MultipartFile file,
                                       HttpServletRequest request, HttpServletResponse response) throws Exception {

        ImageRespDTO respDTO = new ImageRespDTO() {{
            setSuccess(0);
            setMessage("file is null");
            setUrl(null);
        }};
        if (null == file)
            return respDTO;

        BASE64Encoder encoder = new BASE64Encoder();
        String imString = encoder.encode(file.getBytes());
        Map<String, Object> imMap = new HashMap<>();
        imMap.put("imString", imString);
        imMap.put("orignalName", file.getOriginalFilename());
        Response resp = client.call(BSPServiceName.APS_coverImageUpload, JsonUtil.toString(imMap));
        if (resp.isSuccess())
            respDTO = JsonUtil.toBean(resp.getData(), ImageRespDTO.class);
        return respDTO;

    }

    @ResponseBody
    @RequestMapping(value = "/obtain")
    public Response obtain(@RequestBody ImageLoadReqDTO reqDTO) {
        return client.call(BSPServiceName.APS_imageObtain, JsonUtil.toString(reqDTO));
    }

}
