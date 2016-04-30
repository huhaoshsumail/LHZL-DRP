package com.lhzl.drp.dao;

import com.lhzl.drp.model.ExtendInfo;
import com.lhzl.drp.model.ExtendInfoWithBLOBs;

public interface ExtendInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ExtendInfoWithBLOBs record);

    int insertSelective(ExtendInfoWithBLOBs record);

    ExtendInfoWithBLOBs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ExtendInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ExtendInfoWithBLOBs record);

    int updateByPrimaryKey(ExtendInfo record);
}