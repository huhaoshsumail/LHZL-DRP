package com.lhzl.drp.model;

import java.util.Date;

public class Shuttleinfo {
    private Long id;

    private Long lineid;

    private Long startid;

    private String starttime;

    private String trip;

    private Long tripid;

    private String returntrip;

    private Long returntripid;

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

    public Long getStartid() {
        return startid;
    }

    public void setStartid(Long startid) {
        this.startid = startid;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime == null ? null : starttime.trim();
    }

    public String getTrip() {
        return trip;
    }

    public void setTrip(String trip) {
        this.trip = trip == null ? null : trip.trim();
    }

    public Long getTripid() {
        return tripid;
    }

    public void setTripid(Long tripid) {
        this.tripid = tripid;
    }

    public String getReturntrip() {
        return returntrip;
    }

    public void setReturntrip(String returntrip) {
        this.returntrip = returntrip == null ? null : returntrip.trim();
    }

    public Long getReturntripid() {
        return returntripid;
    }

    public void setReturntripid(Long returntripid) {
        this.returntripid = returntripid;
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