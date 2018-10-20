//package com.ykmimi.newindex.controller;
//
//import com.ykmimi.newindex.mapper.AdminMapper;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.annotation.Resource;
//
//@Controller
//@RequestMapping("t")
//public class AdminLoginController {
//
//    @Resource
//    private AdminMapper adminMapper;
//
//    /*管理员登陆*/
//    @RequestMapping("test")
//    public String adminLoginC(Admin admin){
//        System.out.println("in admin login");
//        /*adminIns = admin Instance*/
//        Admin adminIns =  adminMapper.adminLogin(admin);
//        if(adminIns.getAdmin_id()>0){
//            System.out.println("id > 0 is true");
//            return "index";
//        }else{
//            //nothing to do
//            return null;
//        }
//    }
//}
