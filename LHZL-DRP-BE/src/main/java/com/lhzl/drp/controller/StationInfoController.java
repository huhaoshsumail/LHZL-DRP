package com.lhzl.drp.controller;

import com.lhzl.drp.model.BookCode;
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

    @RequestMapping("/querySonStationInfo")
    @ResponseBody
    public Response querySonStationInfo(@RequestBody Map<String, Object> map) {
        List<StationInfo> stationInfo = stationInfoService.querySonStationInfo(map);
        Response res = new Response().success(stationInfo);
        if (map.containsKey("count")) {
            res.setCount((Integer) map.get("count"));
        }
        return res;
    }
    @RequestMapping("/insertStationInfo")
    @ResponseBody
    public Response insertStationInfo(@RequestBody @Valid StationInfo stationInfo) {
        DataBaseUtil.setCreateInfo(stationInfo, (String) request.getAttribute("opacct"));
        //插入父站点的时候默认 pid 为0
        stationInfo.setStationpid(Long.valueOf("0"));
        stationInfoService.insertStationInfo(stationInfo);
        return new Response().success();
    }

    @RequestMapping("/updateStationInfo")
    @ResponseBody
    public Response updateStationInfo(@RequestBody @Valid StationInfo stationInfo) {
        DataBaseUtil.setCreateInfo(stationInfo, (String) request.getAttribute("opacct"));
        stationInfo.setStationpid(Long.valueOf("0"));
        stationInfoService.updateStationInfo(stationInfo);
        return new Response().success();
    }

    @RequestMapping("/updateSonStationInfo")
    @ResponseBody
    public Response updateSonStationInfo(@RequestBody @Valid StationInfo stationInfo) {
        DataBaseUtil.setCreateInfo(stationInfo, (String) request.getAttribute("opacct"));
        stationInfoService.updateStationInfo(stationInfo);
        return new Response().success();
    }


    @RequestMapping("/deleteStationInfo")
    @ResponseBody
    public Response deleteStationInfo(@RequestBody long[] ids) {
        for (int i = 0; i < ids.length; i++) {
            stationInfoService.deleteStationInfo(ids[i]);
        }
        return new Response().success();
    }

    @RequestMapping("/insertSonStationInfo")
    @ResponseBody
    public Response insertSonStationInfo(@RequestBody @Valid StationInfo stationInfo) {
        DataBaseUtil.setCreateInfo(stationInfo, (String) request.getAttribute("opacct"));
        stationInfoService.insertStationInfo(stationInfo);
        return new Response().success();
    }
}
