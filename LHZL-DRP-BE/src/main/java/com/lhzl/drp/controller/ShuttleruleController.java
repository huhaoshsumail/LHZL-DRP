package com.lhzl.drp.controller;

import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.Triprules;
import com.lhzl.drp.model.UserInfo;
import com.lhzl.drp.service.ShuttleruleService;
import com.lhzl.drp.service.SupplierService;
import com.lhzl.drp.util.DataBaseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;


@org.springframework.stereotype.Controller
@RequestMapping("/shuttleruleController")
public class ShuttleruleController {

    private static final Logger logger = LoggerFactory.getLogger(ShuttleruleController.class);

    @Autowired
    private ShuttleruleService shuttleruleService;

    @Autowired
    private HttpServletRequest request;


    @RequestMapping("/queryShuttlerule")
    @ResponseBody
    public Response queryShuttlerule(@RequestBody Map<String, Object> map) {
        List<Triprules> triprules = shuttleruleService.queryShuttlerule(map);
        Response res = new Response().success(triprules);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }



}
