package com.lhzl.drp.controller;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.OperatorinfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

//操作员类
@Controller
@RequestMapping("/operatorInfoController")
public class OperatorInfoController {

    private static final Logger logger = LoggerFactory.getLogger(OperatorInfoController.class);

    @Autowired
    private OperatorinfoService operatorinfoService;

    private String token = "123456";

    @RequestMapping("/login")
    @ResponseBody
    public Response login(@RequestBody Operatorinfo oi) {
        int count = operatorinfoService.login(oi);
        if (count > 0) {
            Map<String, Object> data = new HashMap<>();
            data.put("token", token);
            return new Response().success(data);
        } else {
            return new Response().failure("登录失败");
        }
    }
}
