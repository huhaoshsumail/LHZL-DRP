package com.lhzl.drp.service;

import com.lhzl.drp.dao.StationInfoMapper;
import com.lhzl.drp.dao.TriprulesMapper;
import com.lhzl.drp.model.BookCode;
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


    @Override
    public List<StationInfo> querySonStationInfo(Map<String, Object> map) {
        return stationInfoMapper.querySonStationInfo(map);
    }


    @Override
    public void insertStationInfo(StationInfo stationInfo) {
        stationInfoMapper.insert(stationInfo);
    }


    @Override
    public void updateStationInfo(StationInfo stationInfo) {
        stationInfoMapper.updateByPrimaryKey(stationInfo);
    }

    @Override
    public void deleteStationInfo(long id) {
        stationInfoMapper.deleteByPrimaryKey(id);
    }
}
