package com.lhzl.drp.model;

import java.util.Date;

public class Touristinfo {
    private Long id;

    private Long groupid;

    private Long trainid;

    private String tourname;

    private String ischildren;

    private String idcard;

    private String tourseat;

    private String creatby;

    private Date createtime;

    private String updateby;

    private Date updatetime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getGroupid() {
        return groupid;
    }

    public void setGroupid(Long groupid) {
        this.groupid = groupid;
    }

    public Long getTrainid() {
        return trainid;
    }

    public void setTrainid(Long trainid) {
        this.trainid = trainid;
    }

    public String getTourname() {
        return tourname;
    }

    public void setTourname(String tourname) {
        this.tourname = tourname == null ? null : tourname.trim();
    }

    public String getIschildren() {
        return ischildren;
    }

    public void setIschildren(String ischildren) {
        this.ischildren = ischildren == null ? null : ischildren.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getTourseat() {
        return tourseat;
    }

    public void setTourseat(String tourseat) {
        this.tourseat = tourseat == null ? null : tourseat.trim();
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