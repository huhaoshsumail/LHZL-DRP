package com.lhzl.drp.model;

import java.math.BigDecimal;
import java.util.Date;

public class LineAmtsInfo {
    private Long id;

    private Long lineid;

    private Date tripdate;

    private BigDecimal tripprice;

    private String remark;

    private String createby;

    private Date createtime;

    private String updateby;

    private Date updatetime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getLineid() {
        return lineid;
    }

    public void setLineid(Long lineid) {
        this.lineid = lineid;
    }

    public Date getTripdate() {
        return tripdate;
    }

    public void setTripdate(Date tripdate) {
        this.tripdate = tripdate;
    }

    public BigDecimal getTripprice() {
        return tripprice;
    }

    public void setTripprice(BigDecimal tripprice) {
        this.tripprice = tripprice;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) {
        this.updateby = updateby == null ? null : updateby.trim();
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}