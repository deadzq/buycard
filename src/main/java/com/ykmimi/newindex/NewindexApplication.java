package com.ykmimi.newindex;
/**
 * 系统启动类
 */

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@MapperScan("com.ykmimi.newindex.mapper")
@ComponentScan(basePackages = {"com.ykmimi.newindex.controller", "com.ykmimi.newindex.service", "com.ykmimi.newindex.service.impl"})
public class NewindexApplication {
    public static void main(String[] args) throws Exception {
        SpringApplication.run(NewindexApplication.class, args);
    }


}
