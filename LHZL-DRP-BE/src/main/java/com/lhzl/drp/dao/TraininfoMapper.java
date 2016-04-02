package com.lhzl.drp.dao;

import com.lhzl.drp.model.Traininfo;

public interface TraininfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Traininfo record);

    int insertSelective(Traininfo record);

    Traininfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Traininfo record);

    int updateByPrimaryKey(Traininfo record);
}