package com.lhzl.drp.dao;

import com.lhzl.drp.model.Stationinfo;

public interface StationinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Stationinfo record);

    int insertSelective(Stationinfo record);

    Stationinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Stationinfo record);

    int updateByPrimaryKey(Stationinfo record);
}