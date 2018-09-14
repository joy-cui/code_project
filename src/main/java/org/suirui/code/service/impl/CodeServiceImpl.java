package org.suirui.code.service.impl;

import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.suirui.code.mapper.ErrcodeMapper;
import org.suirui.code.pojo.Errcode;
import org.suirui.code.service.ICodeService;

import java.util.List;
@Service
public class CodeServiceImpl implements ICodeService {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(UserServiceImpl.class);
    @Autowired
    private ErrcodeMapper errcodeMapper;
    @Override
    public void insertCode(Errcode errcode) {
        errcodeMapper.insert(errcode);
    }

    @Override
    public List<Errcode> findByErrorType(int codeType) {
        return errcodeMapper.selectByCodeType(codeType);
    }

    @Override
    public void deleteById(int id) {
        errcodeMapper.deleteById(id);
    }

    @Override
    public Errcode findById(Integer id) {
        return errcodeMapper.findById(id);
    }

    @Override
    public void editErrorCode(Errcode errcode) {
        errcodeMapper.editErrorCode(errcode);
    }

    @Override
    public List<Errcode> findByAll() {
        return errcodeMapper.findByAll();
    }

    @Override
    public List<Errcode> findBySearch(String searchTxt) {
        return errcodeMapper.findBySearch(searchTxt);
    }

    @Override
    public int selectByCode(Integer code) {
        return errcodeMapper.selectByCode(code);
    }

}
