package com.ykmimi.newindex.controller;
/**
 * 测试路径
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//该类管理普通路径
@Controller
public class ShowController {

    /*查看首页index,默认展示index.jsp*/
    @RequestMapping("/")
    public String index() {
        return "index";
    }
    /*测试*/
    @RequestMapping("test")
    public String test() {
        return "index1";
    }
    /*展示卡号的jsp页面*/
    @RequestMapping("showCards")
    public String showCards(){
        return "show/showCards";
    }
    /*使用范围*/
    @RequestMapping("union")
    public String union(){
        return "show/union";
    }

    @RequestMapping("email")
    public String email() {
        return "email";
    }

    @RequestMapping("about")
    public String about() {
        return "about";
    }

    @RequestMapping("contact")
    public String contact() {
        return "contact";
    }

    @RequestMapping("single")
    public String single() {
        return "single";
    }

    @RequestMapping("login")
    public String login() {
        return "login";
    }

    //管理员的admin_manager
    @RequestMapping("admin")
    public String adminIndex() {
        return "admin_manager/index";
    }



    @RequestMapping("blogInfo")
    public String blogInfo() {
        return "/views/admin_manager/blogInfo.html";
    }


    //之下为老网页的路径
    @RequestMapping("oldindex")
    public String oldindex() {
        return "oldindex/index";
    }

    @RequestMapping("tools")
    public String tools() {
        return "oldindex/tools";
    }


    //老网站的jsstore路径

    //js仓库首页 index
    @RequestMapping("js/index")
    public String jsStore() {
        return "oldindex/jsstore/index";
    }

    //js仓库第二页 JSstore2
    @RequestMapping("js/JSstore2")
    public String jsStore2() {
        return "oldindex/jsstore/JSstore2";
    }

    //js hurry1
    @RequestMapping("js/hurry1")
    public String jshurry1() {
        return "oldindex/jsstore/hurry1";
    }

    //js hurry2
    @RequestMapping("js/hurry2")
    public String jshurry2() {
        return "oldindex/jsstore/hurry2";
    }


    //js ajax
    @RequestMapping("ajax/ajax_0")
    public String ajax() {
        return "oldindex/ajax/ajax_0";
    }

    //js ajax
    @RequestMapping("oracle/note1")
    public String oracle() {
        return "oldindex/oracle_0";
    }

}
