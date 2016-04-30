package com.lhzl.drp.dao;

import com.lhzl.drp.model.OperatorInfo;

import java.util.List;
import java.util.Map;

public interface OperatorInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OperatorInfo record);

    int insertSelective(OperatorInfo record);

    OperatorInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OperatorInfo record);

    int updateByPrimaryKey(OperatorInfo record);
	
	/**
     * 查询操作员
     *
     * @param map
     * @return
     */
    List<OperatorInfo> queryOper(Map<String, Object> map);


    int login(OperatorInfo oi);

    /**
     * 根据登陆名获取操作员
     * @param opacct  登陆用户名
     * @return
     */
    OperatorInfo getOperByAcct(String opacct);
}