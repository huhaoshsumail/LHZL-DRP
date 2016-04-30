package com.lhzl.drp.dao;

import com.lhzl.drp.model.LogInfo;

public interface LogInfoMapper {
    int deleteByPrimaryKey(Long logid);

    int insert(LogInfo record);

    int insertSelective(LogInfo record);

    LogInfo selectByPrimaryKey(Long logid);

    int updateByPrimaryKeySelective(LogInfo record);

    int updateByPrimaryKeyWithBLOBs(LogInfo record);

    int updateByPrimaryKey(LogInfo record);
}