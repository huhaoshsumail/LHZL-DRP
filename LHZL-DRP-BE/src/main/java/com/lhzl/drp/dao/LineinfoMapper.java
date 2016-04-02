package com.lhzl.drp.dao;

import com.lhzl.drp.model.Lineinfo;

public interface LineinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Lineinfo record);

    int insertSelective(Lineinfo record);

    Lineinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Lineinfo record);

    int updateByPrimaryKeyWithBLOBs(Lineinfo record);

    int updateByPrimaryKey(Lineinfo record);
}