package com.lhzl.drp.controller;

import com.lhzl.drp.model.LineInfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.service.LineService;
import com.lhzl.drp.util.DataBaseUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Map;

/**
 * 线路管理
 * Created by Chen on 2016/4/24.
 */
@Controller
@RequestMapping("/lineController")
public class LineController {
    // the logger
    private static final Logger logger = LoggerFactory.getLogger(LineController.class);

    @Autowired
    public LineService lineService;

    @Autowired
    private HttpServletRequest request;

    /**
     * 线路列表查询
     * @param map map
     * @return 线路列表
     */
    @RequestMapping("/lineList")
    @ResponseBody
    public Response lineList(@RequestBody Map<String, Object> map) {
        Response res = null;
        try{

        } catch (Exception e) {
            this.logger.error("查询线路列表异常", e);
        }
        return res;
    }

    /**
     * 保存线路信息
     * @param lineInfo 线路model
     * @return  保存结果
     */
    @RequestMapping(method = RequestMethod.POST, value = "/saveLine", produces="application/json")
    @ResponseBody
    public Response saveRole(@RequestBody @Valid LineInfo lineInfo) throws Exception {
        Response res = null;
        try {
            DataBaseUtil.setCreateInfo(lineInfo, (String) request.getAttribute("opacct"));
            DataBaseUtil.setUpdateInfo(lineInfo, (String) request.getAttribute("opacct"));
            int result = this.lineService.saveLine(lineInfo);
            switch (result) {
                case 0:
                    res = new Response().success("保存成功!");
                    break;
                case -1:
                    res = new Response().failure("系统异常， 请重试!");
                    break;
                default:
                    res = new Response().failure("系统异常， 请重试!");
                    break;
            }
        } catch (Exception e) {
            this.logger.error("保存线路异常", e);
            throw new Exception("线路保存异常", e);
        }
        return res;
    }
}
