package com.lhzl.drp.dao;

import com.lhzl.drp.model.MessageInfo;

public interface MessageInfoMapper {
    int deleteByPrimaryKey(Long msgid);

    int insert(MessageInfo record);

    int insertSelective(MessageInfo record);

    MessageInfo selectByPrimaryKey(Long msgid);

    int updateByPrimaryKeySelective(MessageInfo record);

    int updateByPrimaryKeyWithBLOBs(MessageInfo record);

    int updateByPrimaryKey(MessageInfo record);
}