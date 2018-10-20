package com.ykmimi.newindex.controller;

import com.ykmimi.newindex.service.MailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

@RestController
public class EmailController {

    @Resource
    private MailService mailService;

    @RequestMapping("sendEmail")
    public Map<String,Object> sendEmail(String to, String subject, String content, String filePath){
        return mailService.sendAttachmentsMail(to,subject,content,filePath);
    }
}
