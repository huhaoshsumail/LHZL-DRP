package com.lhzl.drp.model;

import java.math.BigDecimal;
import java.util.Date;

public class Triprules {
    private Long tripid;

    private String triptype;

    private String buslocation;

    private String starttime;

    private BigDecimal price;

    private String remark;

    private String status;

    private String createby;

    private Date createtime;

    private String updateby;

    private Date updatetime;

    public Long getTripid() {
        return tripid;
    }

    public void setTripid(Long tripid) {
        this.tripid = tripid;
    }

    public String getTriptype() {
        return triptype;
    }

    public void setTriptype(String triptype) {
        this.triptype = triptype == null ? null : triptype.trim();
    }

    public String getBuslocation() {
        return buslocation;
    }

    public void setBuslocation(String buslocation) {
        this.buslocation = buslocation == null ? null : buslocation.trim();
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime == null ? null : starttime.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
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