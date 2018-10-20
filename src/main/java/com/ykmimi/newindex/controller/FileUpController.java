package com.ykmimi.newindex.controller;


import org.apache.commons.io.FileUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class FileUpController {

    @RequestMapping("upload")
    public Map<String, Object> queryFileData(
            @RequestParam(value = "uploadfile", required = false) MultipartFile file,
            HttpSession session) {
        System.out.println("in upload");
        Map<String, Object> map = new HashMap<String, Object>();
        // MultipartFile是对当前上传的文件的封装,当要同时上传多个文件时,可以给定多个MultipartFile参数(数组)

        if (file.isEmpty()) {
            map.put("filepath", "");
            map.put("upcode", 0);
            map.put("message", "上传失败了💀");
            return map;
        } else {
            //更改不重复名字
//            String type = file.getOriginalFilename().substring(
//                    file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
//            String filename = System.currentTimeMillis() + type;// 取当前时间戳作为文件名
//
            String filename = file.getOriginalFilename();
            String path = session.getServletContext().getRealPath(
                    "upload/"+filename);// 存放位置
            System.err.println("path:"+path);
            //如果为windows系统,这里获取的路径应该是系统绝对路径↑

            String path2 = session.getServletContext().getRealPath("/home/upload");
            String absolutePath = "/home/upload/"+filename;
            System.err.println("path2:"+path2);
            System.err.println("absolutePath:"+absolutePath);
            //windows路径↓
//            File destFile = new File(path);
            //linux路径↓
            File destFile = new File(absolutePath);
            try {
                FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下.
            } catch (IOException e) {
                e.printStackTrace();
            }

            //windows路径↓
//            map.put("filepath",path);
            //linux路径↓
            map.put("filepath",absolutePath);

            map.put("upcode", 1);
            map.put("message", "上传成功💗");
            return map;
        }
    }
}


