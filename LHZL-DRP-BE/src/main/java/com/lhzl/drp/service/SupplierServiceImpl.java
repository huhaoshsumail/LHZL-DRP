package com.lhzl.drp.service;

import com.lhzl.drp.dao.OperatorInfoMapper;
import com.lhzl.drp.model.OperatorInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    public OperatorInfoMapper operinfoMapper;

    @Override
    public OperatorInfo queryOperById(long id) {
        return operinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OperatorInfo> queryOper(Map<String, Object> map) {
        return operinfoMapper.queryOper(map);
    }

    @Override
    public void insertOper(OperatorInfo oper) {
        operinfoMapper.insert(oper);
    }

    @Override
    public void updateOper(OperatorInfo oper) {
        operinfoMapper.updateByPrimaryKey(oper);
    }

    @Override
    public void deleteOper(long ids) {
        operinfoMapper.deleteByPrimaryKey(ids);
    }

}
