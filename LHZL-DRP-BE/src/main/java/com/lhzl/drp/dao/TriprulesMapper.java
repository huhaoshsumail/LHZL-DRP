package com.lhzl.drp.dao;

import com.lhzl.drp.model.Triprules;

import java.util.List;
import java.util.Map;

public interface TriprulesMapper {
    int deleteByPrimaryKey(Long tripid);

    int insert(Triprules record);

    int insertSelective(Triprules record);

    Triprules selectByPrimaryKey(Long tripid);

    int updateByPrimaryKeySelective(Triprules record);

    int updateByPrimaryKey(Triprules record);

    List<Triprules> queryShuttlerule(Map<String, Object> map);
}