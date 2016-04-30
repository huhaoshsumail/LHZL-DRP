package com.lhzl.drp.service;

import com.lhzl.drp.dao.OperatorInfoMapper;
import com.lhzl.drp.model.OperatorInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service("operatorinfoService")
public class OperatorServiceImpl implements OperatorinfoService {

    private static final Logger logger = LoggerFactory.getLogger(OperatorServiceImpl.class);

    @Autowired
    public OperatorInfoMapper operatorinfoMapper;

    @Override
    public int login(OperatorInfo oi) {
        return operatorinfoMapper.login(oi);
    }

    @Override
    public OperatorInfo getOperByAcct(final String opacct) {
        OperatorInfo operatorinfo = null;
        try {
            Map<String, Object> params = new HashMap<String, Object>();
            params.put("opacct", opacct);
            operatorinfo = this.operatorinfoMapper.queryOper(params).get(0);
        } catch (Exception e) {
            this.logger.error("根据（{}）获取操作员失败", opacct, e);
        }
        return operatorinfo;
    }

}
