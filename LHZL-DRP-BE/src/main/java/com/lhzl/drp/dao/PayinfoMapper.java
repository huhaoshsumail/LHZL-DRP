package com.lhzl.drp.dao;

import com.lhzl.drp.model.Payinfo;

public interface PayinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Payinfo record);

    int insertSelective(Payinfo record);

    Payinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Payinfo record);

    int updateByPrimaryKey(Payinfo record);
}