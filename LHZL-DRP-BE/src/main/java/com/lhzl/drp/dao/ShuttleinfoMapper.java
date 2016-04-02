package com.lhzl.drp.dao;

import com.lhzl.drp.model.Shuttleinfo;

public interface ShuttleinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Shuttleinfo record);

    int insertSelective(Shuttleinfo record);

    Shuttleinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Shuttleinfo record);

    int updateByPrimaryKey(Shuttleinfo record);
}