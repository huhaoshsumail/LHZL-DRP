package com.lhzl.drp.controller;

import com.lhzl.drp.model.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * 线路管理
 * Created by Chen on 2016/4/24.
 */
@Controller
@RequestMapping("/lineController")
public class LineController {
    private static final Logger logger = LoggerFactory.getLogger(LineController.class);

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
}
