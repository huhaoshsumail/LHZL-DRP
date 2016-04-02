package com.lhzl.drp.dao;

import com.lhzl.drp.model.Orderinfo;

public interface OrderinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Orderinfo record);

    int insertSelective(Orderinfo record);

    Orderinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Orderinfo record);

    int updateByPrimaryKey(Orderinfo record);
}