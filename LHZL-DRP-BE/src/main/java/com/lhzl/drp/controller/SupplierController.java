package com.lhzl.drp.controller;

import com.lhzl.drp.model.BookCode;
import com.lhzl.drp.model.OperatorInfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.UserInfo;
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
@RequestMapping("/supplierController")
public class SupplierController {

    private static final Logger logger = LoggerFactory.getLogger(SupplierController.class);

    @Autowired
    private SupplierService supplierService;

    @Autowired
    private HttpServletRequest request;


    @RequestMapping("/querySupplierUser")
    @ResponseBody
    public Response querySupplierUser(@RequestBody Map<String, Object> map) {
        List<UserInfo> users = supplierService.querySupplierUser(map);
        Response res = new Response().success(users);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }

    @RequestMapping("/queryManagementUser")
    @ResponseBody
    public Response queryManagementUser(@RequestBody Map<String, Object> map) {
        List<UserInfo> users = supplierService.queryManagementUser(map);
        Response res = new Response().success(users);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }

    @RequestMapping("/querySubmanageUser")
    @ResponseBody
    public Response querySubmanageUser(@RequestBody Map<String, Object> map) {
        List<UserInfo> users = supplierService.querySubmanageUser(map);
        Response res = new Response().success(users);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }


    @RequestMapping("/insertSupplier")
    @ResponseBody
    public Response insertSupplier(@RequestBody @Valid UserInfo userInfo) {
        DataBaseUtil.setCreateInfo(userInfo, (String) request.getAttribute("opacct"));
        //先设置死的供应商  因为目前就一个
        userInfo.setUserpid(Long.valueOf(1));
        userInfo.setStatus("F");
        userInfo.setUsertype("F");
        supplierService.insertSupplier(userInfo);
        return new Response().success();
    }

    @RequestMapping("/insertManager")
    @ResponseBody
    public Response insertManager(@RequestBody @Valid UserInfo userInfo) {
        DataBaseUtil.setCreateInfo(userInfo, (String) request.getAttribute("opacct"));
        //先设置死的供应商  因为目前就一个
        userInfo.setUserpid(Long.valueOf(1));
        userInfo.setStatus("F");
        userInfo.setUsertype("U");
        supplierService.insertSupplier(userInfo);
        return new Response().success();
    }

    @RequestMapping("/insertSubmanage")
    @ResponseBody
    public Response insertSubmanage(@RequestBody @Valid UserInfo userInfo) {
        DataBaseUtil.setCreateInfo(userInfo, (String) request.getAttribute("opacct"));
        //先设置死的供应商  因为目前就一个
        userInfo.setStatus("F");
        userInfo.setUsertype("U");
        supplierService.insertSupplier(userInfo);
        return new Response().success();
    }

    @RequestMapping("/updateSupplier")
    @ResponseBody
    public Response updateSupplier(@RequestBody @Valid UserInfo userInfo) {
        DataBaseUtil.setCreateInfo(userInfo, (String) request.getAttribute("opacct"));
        supplierService.updateSupplier(userInfo);
        return new Response().success();
    }

    @RequestMapping("/updateSubmanage")
    @ResponseBody
    public Response updateSubmanage(@RequestBody @Valid UserInfo userInfo) {
        DataBaseUtil.setCreateInfo(userInfo, (String) request.getAttribute("opacct"));
        supplierService.updateSubmanage(userInfo);
        return new Response().success();
    }


    @RequestMapping("/deleteSupplier")
    @ResponseBody
    public Response deleteSupplier(@RequestBody long[] ids) {
        for (int i = 0; i < ids.length; i++) {
            supplierService.deleteSupplier(ids[i]);
        }
        return new Response().success();
    }

}
