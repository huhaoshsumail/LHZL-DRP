package com.lhzl.drp.dao;

import com.lhzl.drp.model.Hotelinfo;

public interface HotelinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Hotelinfo record);

    int insertSelective(Hotelinfo record);

    Hotelinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Hotelinfo record);

    int updateByPrimaryKey(Hotelinfo record);
}