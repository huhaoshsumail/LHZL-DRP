package com.lhzl.drp.service;

import com.lhzl.drp.dao.ExtendInfoMapper;
import com.lhzl.drp.dao.LineInfoMapper;
import com.lhzl.drp.model.ExtendInfoWithBLOBs;
import com.lhzl.drp.model.LineInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by chenhao on 2016/4/2.
 */
@Service("lineService")
public class LineServiceImpl implements LineService {
    // the logger
    private static final Logger logger = LoggerFactory.getLogger(LineServiceImpl.class);

    @Autowired
    public LineInfoMapper lineInfoMapper;

    @Autowired
    public ExtendInfoMapper extendInfoMapper;

    @Override
    public List<LineInfo> qryLines() {
        List<LineInfo> lineInfos = null;
        try {
            lineInfos = this.lineInfoMapper.qryLines();
        } catch (Exception e) {
            this.logger.error("线路查询异常", e);
        }
        return lineInfos;
    }

    @Override
    public int saveLine(LineInfo lineInfo) throws Exception {
        int result = 0;
        try {
            if (lineInfo.getId() == null) {
                // 保存详情对象
                ExtendInfoWithBLOBs extendInfoWithBLOBs = new ExtendInfoWithBLOBs();
                extendInfoWithBLOBs.setRemind(lineInfo.getRemind());
                extendInfoWithBLOBs.setLinefeature(lineInfo.getLinefeature());
                extendInfoWithBLOBs.setInclude(lineInfo.getInclude());
                extendInfoWithBLOBs.setNotinclude(lineInfo.getNotinclude());
                extendInfoWithBLOBs.setRemarks(lineInfo.getRemarks());
                extendInfoWithBLOBs.setShopping(lineInfo.getShopping());
                extendInfoWithBLOBs.setNote(lineInfo.getNote());

                SimpleDateFormat sdf = new SimpleDateFormat("MMddhhmmss");
                String lineNo = "line" + sdf.format(new Date());
                lineInfo.setLineno(lineNo);
                // 保存数据
                this.lineInfoMapper.insertSelective(lineInfo);

                extendInfoWithBLOBs.setLineid(lineInfo.getId());
                extendInfoWithBLOBs.setCreatby(lineInfo.getCreateby());
                extendInfoWithBLOBs.setCreattime(lineInfo.getCreatetime());
                extendInfoWithBLOBs.setUpdateby(lineInfo.getUpdateby());
                extendInfoWithBLOBs.setUpdatetime(lineInfo.getUpdatetime());

                // 保存数据
                this.extendInfoMapper.insertSelective(extendInfoWithBLOBs);
            }
        } catch (Exception e) {
            result = -1;
            this.logger.error("保存线路异常", e);
            throw new Exception("保存线路发生异常", e);
        }
        return result;
    }
}
