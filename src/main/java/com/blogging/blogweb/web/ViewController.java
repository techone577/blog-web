package com.blogging.blogweb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author techoneduan
 * @date 2018/11/6
 */
@Controller
@RequestMapping(value = "/view/blog")
public class ViewController {

    @RequestMapping(value = "/index")
    public String getView () {
        return "admin_index";
    }

    @RequestMapping(value = "/sign_in")
    public String getSignView () {
        return "sign_in";
    }

    @RequestMapping(value = "/sign_up")
    public String getRegistryView () {
        return "sign_up";
    }

    @RequestMapping(value = "/t")
    public String getTest(){
        return "editor";
    }

    @RequestMapping(value = "/home")
    public String getHome(){
        return "homePage";
    }

    @RequestMapping(value = "/search")
    public String getSearch(){
        return "search";
    }

    @RequestMapping(value = "/display")
    public String getDisplay(){
        return "postDisplay";
    }

    @RequestMapping(value = "/postlist")
    public String getPostList(){
        return "postlist";
    }

    @RequestMapping(value = "/tagShow")
    public String getTagShow(){
        return "tagShow";
    }


}
