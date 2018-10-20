//package com.ykmimi.newindex.controller;
//
//import com.ykmimi.newindex.mapper.AdminMapper;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.annotation.Resource;
//import java.util.List;
//
//@RestController
//public class AdminController {
//
//    @Resource
//    private AdminMapper adminMapper;
//
//    @RequestMapping("adminLogin")
//    public Model adminLoginC(Admin admin,Model model){
//        Admin adminIns = adminMapper.adminLogin(admin);
//        if(adminIns.getAdmin_id()>0){
//            model.addAttribute("code",1);
//            model.addAttribute("message","登陆成功");
//            return model;
//        }else{
//            model.addAttribute("code",0);
//            model.addAttribute("message","登陆失败");
//            return model;
//        }
//    }
//
//    /*固态获取用户示例列表*/
//    @RequestMapping("getAllAdmin")
//    public List<Admin> getAllAdmin(){
//        return adminMapper.getAllAdmin();
//    }
//
//    /*动态获取管理员列表*/
//    @RequestMapping("getAdminDynamic")
//    public List<Admin> getAdminDynamic(Admin admin){
//        System.out.println("💗💗 in DynamicGet !");
//        return adminMapper.getAdminDynamic(admin);
//    }
//
//    /*创建新管理员*/ /*前面使用success:function(result)*/
//    @RequestMapping("insertNewAdmin")
//    public Integer insertNewAdmin(Admin admin){
//        return adminMapper.insertNewAdmin(admin);
////        if(insertNum>0){
////            model.addAttribute("code",1);
////            model.addAttribute("message","注册管理员成功!💗");
////            return model;
////        }else{
////            model.addAttribute("code",0);
////            model.addAttribute("message","注册失败,请联系ukzq!💀");
////            return model;
////        }
//    }
//
//    /*更新用户信息*/
//    @RequestMapping("updateAdminDynamic")
//    public Integer updateAdminDynamic(Admin admin){
//        return adminMapper.updateAdminDynamic(admin);
////        if(updateNum>0){
////            model.addAttribute("code",1);
////            model.addAttribute("message","更新成功!💗");
////            return model;
////        }else{
////            model.addAttribute("code",0);
////            model.addAttribute("message","更新失败,请联系ukzq!💀");
////            return model;
////        }
//    }
//
//    /*删除管理员根据其ID*/
//    @RequestMapping("deleteAdminById")
//    public Integer deleteAdminById(Integer admin_id){
//        return adminMapper.deleteAdminById(admin_id);
//    }
//
//}
