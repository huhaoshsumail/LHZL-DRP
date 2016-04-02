package com.lhzl.drp.dao;

import com.lhzl.drp.model.Triprules;

public interface TriprulesMapper {
    int deleteByPrimaryKey(Long tripid);

    int insert(Triprules record);

    int insertSelective(Triprules record);

    Triprules selectByPrimaryKey(Long tripid);

    int updateByPrimaryKeySelective(Triprules record);

    int updateByPrimaryKey(Triprules record);
}