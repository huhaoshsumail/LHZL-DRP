package com.lhzl.drp.model;

import com.lhzl.drp.dao.AppCodeMapper;
import com.lhzl.drp.service.AppCodeService;
import com.lhzl.drp.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;
import java.util.Date;

public class LineInfo {
    private Long id;

    private String linetype;

    private String tourtype;

    private String lineno;

    private String sysno;

    private Long linestart;

    private Long lineend;

    private String title;

    private String subtitile;

    private String linesid;

    private Long keyword;

    private Integer days;

    private Integer hoteldays;

    private Long hoteltype;

    private String hotelname;

    private String tel;

    private String deadline;

    private String hasweekend;

    private String cusselect;

    private Integer min;

    private BigDecimal rebate;

    private Long traintype;

    private String trainno;

    private String hasconfirm;

    private String status;

    private String createby;

    private Date createtime;

    private String createTimeStr;

    private String updateby;

    private Date updatetime;

    private String updateTimeStr;

    private String linedesc;

    private String remind;

    private String linefeature;

    private String include;

    private String notinclude;

    private String remarks;

    private String shopping;

    private String note;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLinetype() {
        return linetype;
    }

    public void setLinetype(String linetype) {
        this.linetype = linetype == null ? null : linetype.trim();
    }

    public String getTourtype() {
        return tourtype;
    }

    public void setTourtype(String tourtype) {
        this.tourtype = tourtype == null ? null : tourtype.trim();
    }

    public String getLineno() {
        return lineno;
    }

    public void setLineno(String lineno) {
        this.lineno = lineno == null ? null : lineno.trim();
    }

    public String getSysno() {
        return sysno;
    }

    public void setSysno(String sysno) {
        this.sysno = sysno == null ? null : sysno.trim();
    }

    public Long getLinestart() {
        return linestart;
    }

    public void setLinestart(Long linestart) {
        this.linestart = linestart;
    }

    public Long getLineend() {
        return lineend;
    }

    public void setLineend(Long lineend) {
        this.lineend = lineend;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSubtitile() {
        return subtitile;
    }

    public void setSubtitile(String subtitile) {
        this.subtitile = subtitile == null ? null : subtitile.trim();
    }

    public String getLinesid() {
        return linesid;
    }

    public void setLinesid(String linesid) {
        this.linesid = linesid == null ? null : linesid.trim();
    }

    public Long getKeyword() {
        return keyword;
    }

    public void setKeyword(Long keyword) {
        this.keyword = keyword;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public Integer getHoteldays() {
        return hoteldays;
    }

    public void setHoteldays(Integer hoteldays) {
        this.hoteldays = hoteldays;
    }

    public Long getHoteltype() {
        return hoteltype;
    }

    public void setHoteltype(Long hoteltype) {
        this.hoteltype = hoteltype;
    }

    public String getHotelname() {
        return hotelname;
    }

    public void setHotelname(String hotelname) {
        this.hotelname = hotelname == null ? null : hotelname.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline == null ? null : deadline.trim();
    }

    public String getHasweekend() {
        return hasweekend;
    }

    public void setHasweekend(String hasweekend) {
        this.hasweekend = hasweekend == null ? null : hasweekend.trim();
    }

    public String getCusselect() {
        return cusselect;
    }

    public void setCusselect(String cusselect) {
        this.cusselect = cusselect == null ? null : cusselect.trim();
    }

    public Integer getMin() {
        return min;
    }

    public void setMin(Integer min) {
        this.min = min;
    }

    public BigDecimal getRebate() {
        return rebate;
    }

    public void setRebate(BigDecimal rebate) {
        this.rebate = rebate;
    }

    public Long getTraintype() {
        return traintype;
    }

    public void setTraintype(Long traintype) {
        this.traintype = traintype;
    }

    public String getTrainno() {
        return trainno;
    }

    public void setTrainno(String trainno) {
        this.trainno = trainno == null ? null : trainno.trim();
    }

    public String getHasconfirm() {
        return hasconfirm;
    }

    public void setHasconfirm(String hasconfirm) {
        this.hasconfirm = hasconfirm == null ? null : hasconfirm.trim();
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
        this.createTimeStr = DateUtil.dateToString(this.createtime);
    }

    public String getUpdateby() {
        return updateby;
    }

    public void setUpdateby(String updateby) { this.updateby = updateby == null ? null : updateby.trim();}

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
        this.updateTimeStr = DateUtil.dateToString(this.updatetime);
    }

    public String getLinedesc() {
        return linedesc;
    }

    public void setLinedesc(String linedesc) {
        this.linedesc = linedesc == null ? null : linedesc.trim();
    }

    public String getCreateTimeStr() {
        return createTimeStr;
    }

    public void setCreateTimeStr(String createTimeStr) {
        this.createTimeStr = createTimeStr;
    }

    public String getUpdateTimeStr() {
        return updateTimeStr;
    }

    public void setUpdateTimeStr(String updateTimeStr) {
        this.updateTimeStr = updateTimeStr;
    }

    public String getRemind() {
        return remind;
    }

    public void setRemind(String remind) {
        this.remind = remind;
    }

    public String getLinefeature() {
        return linefeature;
    }

    public void setLinefeature(String linefeature) {
        this.linefeature = linefeature;
    }

    public String getInclude() {
        return include;
    }

    public void setInclude(String include) {
        this.include = include;
    }

    public String getNotinclude() {
        return notinclude;
    }

    public void setNotinclude(String notinclude) {
        this.notinclude = notinclude;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getShopping() {
        return shopping;
    }

    public void setShopping(String shopping) {
        this.shopping = shopping;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}