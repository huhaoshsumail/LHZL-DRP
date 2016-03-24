package com.lhzl.drp.service;

import com.lhzl.drp.model.Userinfo;

import java.util.List;
import java.util.Map;

public interface UserService {

    Userinfo queryUserById(long id);

    List<Userinfo> queryUser(Map<String, Object> map);

    void insertUser(Userinfo user);

    void updateUser(Userinfo user);

    void deleteUser(long id);
}
