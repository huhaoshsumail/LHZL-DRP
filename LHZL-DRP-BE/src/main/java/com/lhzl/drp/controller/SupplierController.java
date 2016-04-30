package com.lhzl.drp.controller;

import com.lhzl.drp.model.OperatorInfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.SupplierService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;


@org.springframework.stereotype.Controller
@RequestMapping("/supplierController")
public class SupplierController {

    private static final Logger logger = LoggerFactory.getLogger(SupplierController.class);

    @Autowired
    private SupplierService supplierService;

    @RequestMapping("/queryOperById")
    @ResponseBody
    public Response queryOperById(long id) {
        OperatorInfo oper = supplierService.queryOperById(id);
        return new Response().success(oper);
    }

    @RequestMapping("/queryOper")
    @ResponseBody
    public Response queryOper(@RequestBody Map<String, Object> map) {
        List<OperatorInfo> opers = supplierService.queryOper(map);
        Response res = new Response().success(opers);
//        if (map.containsKey("count")) {
//            res.setCount((Integer) map.get("count"));
//        }
        return res;
    }

    @RequestMapping("/insertOper")
    @ResponseBody
    public Response insertOper(@RequestBody @Valid OperatorInfo oper) {
        supplierService.insertOper(oper);
        return new Response().success();
    }

    @RequestMapping("/updateOper")
    @ResponseBody
    public Response updateOper(@RequestBody @Valid OperatorInfo oper) {
        supplierService.updateOper(oper);
        return new Response().success();
    }

    @RequestMapping("/deleteOper")
    @ResponseBody
    public Response deleteOper(long id) {
        supplierService.deleteOper(id);
        return new Response().success();
    }

}
