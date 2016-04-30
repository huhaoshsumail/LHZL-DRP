package com.lhzl.drp.controller;

import com.lhzl.drp.model.PermissionInfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.RoleInfo;
import com.lhzl.drp.service.OperatorinfoService;
import com.lhzl.drp.service.SecurityService;
import com.lhzl.drp.util.DataBaseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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

    @Autowired
    private OperatorinfoService operatorinfoService;

    @Autowired
    private HttpServletRequest request;

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
            List<RoleInfo> roles = this.securityService.roleList(userId);
            res = new Response().success(roles);
            if (map.containsKey("count")) {
                res.setCount(roles.size());
            }
        } catch (Exception e) {
            this.logger.error("查询角色列表异常", e);
        }
        return res;
    }

    /**
     * 保存角色信息
     * @param roleinfo 角色model
     * @return  保存结果
     */
    @RequestMapping(method = RequestMethod.POST, value = "/saveRole", produces="application/json")
    @ResponseBody
    public Response saveRole(@RequestBody RoleInfo roleinfo) {
        Response res = null;
        try {
            roleinfo.setUserid(operatorinfoService.getOperByAcct((String) request.getAttribute("opacct")).getUserid());
            DataBaseUtil.setUpdateInfo(roleinfo, (String) request.getAttribute("opacct"));
            int result = this.securityService.saveRole(roleinfo);
            switch (result) {
                case 1:
                    res = new Response().success("保存成功!");
                    break;
                case 2:
                    res = new Response().failure("该角色名称已存在!");
                    break;
                case 3:
                    res = new Response().failure("该角色不能修改!");
                    break;
                case -1:
                    res = new Response().failure("服务器异常, 请重试!");
                    break;
            }
        } catch (Exception e) {
            this.logger.error("保存角色异常", e);
        }
        return res;
    }

    /**
     * 删除角色
     * @param roleinfo 角色
     * @return  删除结果
     */
    @RequestMapping(method = RequestMethod.POST, value = "/delRole", produces="application/json")
    @ResponseBody
    public Response delRole(@RequestBody RoleInfo roleinfo) {
        Response res = null;
        try {
            DataBaseUtil.setUpdateInfo(roleinfo, (String) request.getAttribute("opacct"));
            int result = this.securityService.delRole(roleinfo.getId());
            switch (result) {
                case 0:
                    res = new Response().failure("删除角色不存在!");
                    break;
                case 1:
                    res = new Response().success("删除成功!");
                    break;
                case 2:
                    res = new Response().failure("该角色不能删除!");
                    break;
                case -1:
                    res = new Response().failure("服务器异常, 请重试!");
                    break;
            }
        } catch (Exception e) {
            this.logger.error("保存角色异常", e);
        }
        return res;
    }

    /**
     * 权限列表查询
     * @param map map
     * @return 权限列表
     */
    @RequestMapping("/pmsnList")
    @ResponseBody
    public Response pmsnList(@RequestBody Map<String, Object> map) {
        Response res = null;
        try{
            List<PermissionInfo> roles = this.securityService.pmsnList();
            res = new Response().success(roles);
            if (map.containsKey("count")) {
                res.setCount(roles.size());
            }
        } catch (Exception e) {
            this.logger.error("查询权限列表异常", e);
        }
        return res;
    }
}
