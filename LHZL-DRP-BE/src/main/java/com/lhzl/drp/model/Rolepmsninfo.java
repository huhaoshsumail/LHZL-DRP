package com.lhzl.drp.model;

import java.util.Date;

public class RolepmsnInfo {
    private Long id;

    private Long roleid;

    private Long oprtid;

    private String createby;

    private Date createtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleid() {
        return roleid;
    }

    public void setRoleid(Long roleid) {
        this.roleid = roleid;
    }

    public Long getOprtid() {
        return oprtid;
    }

    public void setOprtid(Long oprtid) {
        this.oprtid = oprtid;
    }

    public String getCreateby() {
        return createby;
    }

    public void setCreateby(String createby) {
        this.createby = createby == null ? null : createby.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}