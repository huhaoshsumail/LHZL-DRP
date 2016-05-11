package com.lhzl.drp.controller;

import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.StationInfo;
import com.lhzl.drp.model.Triprules;
import com.lhzl.drp.service.ShuttleruleService;
import com.lhzl.drp.service.StationInfoService;
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
@RequestMapping("/stationInfoController")
public class StationInfoController {

    private static final Logger logger = LoggerFactory.getLogger(StationInfoController.class);

    @Autowired
    private StationInfoService stationInfoService;

    @Autowired
    private HttpServletRequest request;


    @RequestMapping("/queryStationInfo")
    @ResponseBody
    public Response queryStationInfo(@RequestBody Map<String, Object> map) {
        List<StationInfo> stationInfo = stationInfoService.queryStationInfo(map);
        Response res = new Response().success(stationInfo);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }


}
