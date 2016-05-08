package com.lhzl.drp.service;

import com.lhzl.drp.model.BookCode;
import com.lhzl.drp.model.OperatorInfo;
import com.lhzl.drp.model.UserInfo;

import java.util.List;
import java.util.Map;

public interface SupplierService {

    OperatorInfo queryOperById(long id);

    List<UserInfo> querySupplierUser(Map<String, Object> map);

    void insertSupplier(UserInfo userInfo);

    public void updateSupplier(UserInfo userInfo);

    public void deleteSupplier(long id);

    void insertOper(OperatorInfo oper);

    void updateOper(OperatorInfo oper);

    void deleteOper(long id);
}
