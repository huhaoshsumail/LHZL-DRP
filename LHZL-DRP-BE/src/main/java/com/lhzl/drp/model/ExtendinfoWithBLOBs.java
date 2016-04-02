package com.lhzl.drp.model;

public class ExtendinfoWithBLOBs extends Extendinfo {
    private String remind;

    private String linefeature;

    private String include;

    private String notinclude;

    private String remarks;

    private String shopping;

    private String note;

    public String getRemind() {
        return remind;
    }

    public void setRemind(String remind) {
        this.remind = remind == null ? null : remind.trim();
    }

    public String getLinefeature() {
        return linefeature;
    }

    public void setLinefeature(String linefeature) {
        this.linefeature = linefeature == null ? null : linefeature.trim();
    }

    public String getInclude() {
        return include;
    }

    public void setInclude(String include) {
        this.include = include == null ? null : include.trim();
    }

    public String getNotinclude() {
        return notinclude;
    }

    public void setNotinclude(String notinclude) {
        this.notinclude = notinclude == null ? null : notinclude.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public String getShopping() {
        return shopping;
    }

    public void setShopping(String shopping) {
        this.shopping = shopping == null ? null : shopping.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
}