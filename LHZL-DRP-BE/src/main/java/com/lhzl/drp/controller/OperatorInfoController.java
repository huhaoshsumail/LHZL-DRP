package com.lhzl.drp.controller;

import com.lhzl.drp.cache.CacheKit;
import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.OperatorinfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.UUID;

//操作员类
@Controller
@RequestMapping("/operatorInfoController")
public class OperatorInfoController {

    private static final Logger logger = LoggerFactory.getLogger(OperatorInfoController.class);

    @Autowired
    private OperatorinfoService operatorinfoService;

    private String token = "123456";

    @RequestMapping("/login")
    public Response login(Operatorinfo info) {
//        int count = operatorinfoService.login(oi);
//        if (count > 0) {
//            return new Response().success(token);
//        } else {
//            return new Response().failure("登录失败");
//        }
        //String identity = info.getOpername();
        Operatorinfo oi = operatorinfoService.login(info);
        //测试用的identity
        String identity = oi.getOpername();
        if(oi == null) {
            throw new RuntimeException("该账号信息未同步！");
        }

        String skey = "session:" + identity;
        String token = UUID.randomUUID().toString();

        if(CacheKit.exists(skey)){
            String oldtoken=CacheKit.get(skey);
            CacheKit.del(skey);
            CacheKit.del("token:" + oldtoken);
        }

        if(CacheKit.setnx(skey, token) == 1) {
            CacheKit.expire(skey, 3600 * 24);
            CacheKit.hset("token:" + token, "username", identity);
            CacheKit.expire("token:" + token, 3600 * 24);
        } else {
            token = CacheKit.get(skey);
        }
        return new Response().success(token);
    }
}
