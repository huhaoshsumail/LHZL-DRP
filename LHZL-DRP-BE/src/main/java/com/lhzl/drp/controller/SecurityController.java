package com.lhzl.drp.controller;

import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.Roleinfo;
import com.lhzl.drp.service.SecurityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * 权限管理
 * @author  chen jinyi
 */
@Controller
@RequestMapping("/securityController")
public class SecurityController {

    private static final Logger logger = LoggerFactory.getLogger(SecurityController.class);

    @Autowired
    private SecurityService securityService;

    /**
     * 角色列表查询
     * @param map map
     * @return 角色列表
     */
    @RequestMapping("/roleList")
    @ResponseBody
    public Response roleList(@RequestBody Map<String, Object> map) {
        Response res = null;
        try{
            long userId = 1;
            List<Roleinfo> roles = securityService.roleList(userId);
             res = new Response().success(roles);
            if (map.containsKey("count")) {
                res.setCount((Integer) map.get("count"));
            }
        } catch (Exception e) {
            this.logger.error("查询角色列表异常", e);
        }
        return res;
    }
}
