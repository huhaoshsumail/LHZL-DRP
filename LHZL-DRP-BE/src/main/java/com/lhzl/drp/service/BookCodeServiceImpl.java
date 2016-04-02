package com.lhzl.drp.service;

import com.lhzl.drp.dao.BookCodeMapper;
import com.lhzl.drp.model.BookCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by chenhao on 2016/4/2.
 */
@Service("bookCodeService")
public class BookCodeServiceImpl implements BookCodeService {

    @Autowired
    public BookCodeMapper bookCodeMapper;

    @Override
    public BookCode queryBookCodeById(long codeid) {
        return bookCodeMapper.selectByPrimaryKey(codeid);
    }

    @Override
    public List<BookCode> queryBookCode(Map<String, Object> map) {
        return bookCodeMapper.queryBookCode(map);
    }

    @Override
    public void insertBookCode(BookCode bookCode) {
        bookCodeMapper.insert(bookCode);
    }

    @Override
    public void updateBookCode(BookCode bookCode) {
        bookCodeMapper.updateByPrimaryKey(bookCode);
    }

    @Override
    public void deleteBookCode(long codeid) {
        bookCodeMapper.deleteByPrimaryKey(codeid);
    }

}
