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

    @RequestMapping("/insertShuttlerule")
    @ResponseBody
    public Response insertShuttlerule(@RequestBody @Valid Triprules triprules) {
        DataBaseUtil.setCreateInfo(triprules, (String) request.getAttribute("opacct"));
        shuttleruleService.insertShuttlerule(triprules);
        return new Response().success();
    }
    @RequestMapping("/updateShuttlerule")
    @ResponseBody
    public Response updateShuttlerule(@RequestBody @Valid Triprules triprules) {
        DataBaseUtil.setCreateInfo(triprules, (String) request.getAttribute("opacct"));
        shuttleruleService.updateShuttlerule(triprules);
        return new Response().success();
    }

    @RequestMapping("/deleteShuttlerule")
    @ResponseBody
    public Response deleteShuttlerule(@RequestBody long[] ids) {
        for (int i = 0; i < ids.length; i++) {
            shuttleruleService.deleteShuttlerule(ids[i]);
        }
        return new Response().success();
    }

}
