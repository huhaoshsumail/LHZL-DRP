package com.lhzl.drp.service;

import com.lhzl.drp.model.OperatorInfo;

public interface OperatorinfoService {

    public int login(OperatorInfo oi);

    /**
     * 根据登录用户名查找操作员
     * @param opacct 用户名
     * @return 操作员
     */
    OperatorInfo getOperByAcct(String opacct);
}
