package com.ykmimi.newindex.service;

import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface MailService {

    /**
     * 发送带附件的邮件
     */
    Map<String, Object> sendAttachmentsMail(String to, String subject, String content, String filePath);
}
