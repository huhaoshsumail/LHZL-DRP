package com.lhzl.drp.dao;

import com.lhzl.drp.model.Extendinfo;
import com.lhzl.drp.model.ExtendinfoWithBLOBs;

public interface ExtendinfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ExtendinfoWithBLOBs record);

    int insertSelective(ExtendinfoWithBLOBs record);

    ExtendinfoWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ExtendinfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ExtendinfoWithBLOBs record);

    int updateByPrimaryKey(Extendinfo record);
}