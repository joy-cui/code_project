package org.suirui.code.service;

import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;

import java.util.List;

public interface ICodeService {
    void insertCode(Errcode errcode);
    List<Errcode> findByErrorType(int codeType);
    void deleteById(int id);
    Errcode findById(Integer id);
    void editErrorCode(Errcode errcode);
    List<Errcode> findByAll();
    List<Errcode> findBySearch(String searchTxt);
    int selectByCode(Integer code);
}
