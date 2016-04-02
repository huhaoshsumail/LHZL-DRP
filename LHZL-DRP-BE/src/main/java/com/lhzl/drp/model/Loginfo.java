package com.lhzl.drp.model;

import java.util.Date;

public class Loginfo {
    private Long logid;

    private String createby;

    private Date createtime;

    private String logcont;

    public Long getLogid() {
        return logid;
    }

    public void setLogid(Long logid) {
        this.logid = logid;
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

    public String getLogcont() {
        return logcont;
    }

    public void setLogcont(String logcont) {
        this.logcont = logcont == null ? null : logcont.trim();
    }
}