package com.lhzl.drp.service;

import com.lhzl.drp.dao.OperatorInfoMapper;
import com.lhzl.drp.dao.UserInfoMapper;
import com.lhzl.drp.model.OperatorInfo;
import com.lhzl.drp.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    public UserInfoMapper userinfoMapper;

    @Override
    public List<UserInfo> querySupplierUser(Map<String, Object> map) {
        return userinfoMapper.querySupplierUser(map);
    }

    @Override
    public void insertSupplier(UserInfo userInfo) {
        userinfoMapper.insert(userInfo);
    }

    @Override
    public void updateSupplier(UserInfo userInfo) {
        userinfoMapper.updateUserInfoByPrimaryKey(userInfo);
    }


    @Override
    public void updateSubmanage(UserInfo userInfo) {
        userinfoMapper.updateSubmanage(userInfo);
    }

    @Override
    public void deleteSupplier(long id) {
        userinfoMapper.deleteByPrimaryKey(id);
    }


    @Override
    public List<UserInfo> queryManagementUser(Map<String, Object> map) {
        return userinfoMapper.queryManagementUser(map);
    }

    @Override
    public List<UserInfo> querySubmanageUser(Map<String, Object> map) {
        return userinfoMapper.querySubmanageUser(map);
    }
}
