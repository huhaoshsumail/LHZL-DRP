package com.lhzl.drp.model;

import java.math.BigDecimal;
import java.util.Date;

public class PayInfo {
    private Long id;

    private String payno;

    private String cusno;

    private Long orderid;

    private BigDecimal orderamt;

    private BigDecimal payamt;

    private BigDecimal prepaidamt;

    private BigDecimal orderrebate;

    private Date prepaidtime;

    private BigDecimal finalamt;

    private Date finaltime;

    private String payer;

    private Date paytime;

    private String status;

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

    public String getPayno() {
        return payno;
    }

    public void setPayno(String payno) {
        this.payno = payno == null ? null : payno.trim();
    }

    public String getCusno() {
        return cusno;
    }

    public void setCusno(String cusno) {
        this.cusno = cusno == null ? null : cusno.trim();
    }

    public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public BigDecimal getOrderamt() {
        return orderamt;
    }

    public void setOrderamt(BigDecimal orderamt) {
        this.orderamt = orderamt;
    }

    public BigDecimal getPayamt() {
        return payamt;
    }

    public void setPayamt(BigDecimal payamt) {
        this.payamt = payamt;
    }

    public BigDecimal getPrepaidamt() {
        return prepaidamt;
    }

    public void setPrepaidamt(BigDecimal prepaidamt) {
        this.prepaidamt = prepaidamt;
    }

    public BigDecimal getOrderrebate() {
        return orderrebate;
    }

    public void setOrderrebate(BigDecimal orderrebate) {
        this.orderrebate = orderrebate;
    }

    public Date getPrepaidtime() {
        return prepaidtime;
    }

    public void setPrepaidtime(Date prepaidtime) {
        this.prepaidtime = prepaidtime;
    }

    public BigDecimal getFinalamt() {
        return finalamt;
    }

    public void setFinalamt(BigDecimal finalamt) {
        this.finalamt = finalamt;
    }

    public Date getFinaltime() {
        return finaltime;
    }

    public void setFinaltime(Date finaltime) {
        this.finaltime = finaltime;
    }

    public String getPayer() {
        return payer;
    }

    public void setPayer(String payer) {
        this.payer = payer == null ? null : payer.trim();
    }

    public Date getPaytime() {
        return paytime;
    }

    public void setPaytime(Date paytime) {
        this.paytime = paytime;
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