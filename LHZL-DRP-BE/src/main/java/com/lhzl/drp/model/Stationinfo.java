package com.lhzl.drp.model;

import java.util.Date;

public class StationInfo {
    private Long id;

    private Long stationpid;

    private String stationname;

    private String stationpname;

    private String status;

    private String creatby;

    private Date createtime;

    private String updateby;

    private Date updatetime;

    public String getStationpname() {
        return stationpname;
    }

    public void setStationpname(String stationpname) {
        this.stationpname = stationpname;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getStationpid() {
        return stationpid;
    }

    public void setStationpid(Long stationpid) {
        this.stationpid = stationpid;
    }

    public String getStationname() {
        return stationname;
    }

    public void setStationname(String stationname) {
        this.stationname = stationname == null ? null : stationname.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getCreatby() {
        return creatby;
    }

    public void setCreatby(String creatby) {
        this.creatby = creatby == null ? null : creatby.trim();
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