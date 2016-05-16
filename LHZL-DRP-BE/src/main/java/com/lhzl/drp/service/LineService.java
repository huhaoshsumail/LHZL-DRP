package com.lhzl.drp.service;

import com.lhzl.drp.model.LineInfo;

import java.util.List;

/**
 * Created by chenhao on 2016/4/2.
 */
public interface LineService {

    public List<LineInfo> qryLines();

    public int saveLine(LineInfo lineInfo) throws Exception;

}
