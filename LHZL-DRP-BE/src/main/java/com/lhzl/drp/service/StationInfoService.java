package com.lhzl.drp.service;

import com.lhzl.drp.model.BookCode;
import com.lhzl.drp.model.StationInfo;
import com.lhzl.drp.model.Triprules;

import java.util.List;
import java.util.Map;

public interface StationInfoService {


    List<StationInfo> queryStationInfo(Map<String, Object> map);

    List<StationInfo> querySonStationInfo(Map<String, Object> map);

    void insertStationInfo(StationInfo stationInfo);

    public void updateStationInfo(StationInfo stationInfo);

    public void deleteStationInfo(long id);
}
