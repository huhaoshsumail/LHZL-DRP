package com.lhzl.drp.service;

import com.lhzl.drp.model.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserService {

    UserInfo queryUserById(long id);

    List<UserInfo> queryUser(Map<String, Object> map);

    void insertUser(UserInfo user);

    void updateUser(UserInfo user);

    void deleteUser(long id);
}
