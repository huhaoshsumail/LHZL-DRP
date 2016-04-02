package com.lhzl.drp.controller;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.OperatorinfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//操作员类
@Controller
@RequestMapping("/operatorInfoController")
public class OperatorInfoController {

    private static final Logger logger = LoggerFactory.getLogger(OperatorInfoController.class);

    @Autowired
    private OperatorinfoService operatorinfoService;

    private String token = "123456";

    @RequestMapping("/login")
    public Response login(Operatorinfo oi) {
        int count = operatorinfoService.login(oi);
        if (count > 0) {
            return new Response().success(token);
        } else {
            return new Response().failure("登录失败");
        }
    }
}
