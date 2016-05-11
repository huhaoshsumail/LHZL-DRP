package com.lhzl.drp.service;

import com.lhzl.drp.dao.StationInfoMapper;
import com.lhzl.drp.dao.TriprulesMapper;
import com.lhzl.drp.model.StationInfo;
import com.lhzl.drp.model.Triprules;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("stationInfoService")
public class StationInfoServiceImpl implements StationInfoService {

    @Autowired
    public StationInfoMapper stationInfoMapper;

    @Override
    public List<StationInfo> queryStationInfo(Map<String, Object> map) {
        return stationInfoMapper.queryStationInfo(map);
    }

}
