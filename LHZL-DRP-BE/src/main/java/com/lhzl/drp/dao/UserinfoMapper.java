package com.lhzl.drp.dao;

import com.lhzl.drp.model.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    int deleteByPrimaryKey(Long userid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    int insert(UserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    int insertSelective(UserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    UserInfo selectByPrimaryKey(Long userid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    int updateByPrimaryKeySelective(UserInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_userinfo
     *
     * @mbggenerated Thu Mar 24 15:33:09 CST 2016
     */
    int updateByPrimaryKey(UserInfo record);

    /**
     * 查询用户
     *
     * @param map
     * @return
     */
    List<UserInfo> queryUser(Map<String, Object> map);

    /**
     * 查询供应商子账户用户
     *
     * @param map
     * @return
     */
    List<UserInfo> querySupplierUser(Map<String, Object> map);


    int updateUserInfoByPrimaryKey(UserInfo record);

    /**
     * 查询分销商
     *
     * @param map
     * @return
     */
    List<UserInfo> queryManagementUser(Map<String, Object> map);


    /**
     * 查询分销商子账户
     *
     * @param map
     * @return
     */
    List<UserInfo> querySubmanageUser(Map<String, Object> map);


    int updateSubmanage(UserInfo record);
}