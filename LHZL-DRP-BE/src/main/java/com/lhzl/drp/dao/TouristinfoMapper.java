package com.lhzl.drp.dao;

import com.lhzl.drp.model.Touristinfo;

public interface TouristinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Touristinfo record);

    int insertSelective(Touristinfo record);

    Touristinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Touristinfo record);

    int updateByPrimaryKey(Touristinfo record);
}