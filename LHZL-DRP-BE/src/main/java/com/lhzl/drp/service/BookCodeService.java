package com.lhzl.drp.service;

import com.lhzl.drp.model.BookCode;
import com.lhzl.drp.model.BookValue;

import java.util.List;
import java.util.Map;

/**
 * Created by chenhao on 2016/4/2.
 */
public interface BookCodeService {

    public BookCode queryBookCodeById(long codeid);

    public List<BookCode> queryBookCode(Map<String, Object> map);

    public void insertBookCode(BookCode bookCode);

    public void updateBookCode(BookCode bookCode);

    public void deleteBookCode(long codeid);

    public List<BookValue> queryBookValue(Map<String, Object> map);

    public void insertBookValue(BookValue bookValue);

    public void updateBookValue(BookValue bookValue);

    public void deleteBookValue(long valueid);

    public void deleteBookValueByCodeid(long codeid);

}
