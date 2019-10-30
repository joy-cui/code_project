package org.suirui.code.mapper;

import java.util.List;

import org.suirui.code.pojo.Errcode;

public interface ErrcodeMapper {
//    int countByExample(ErrcodeExample example);
//
//    int deleteByExample(ErrcodeExample example);
//
//    int deleteByPrimaryKey(Integer id);

    int insert(Errcode record);
    List<Errcode> selectByCodeType(int codeType);
    void deleteById(int id);
    Errcode findById(Integer id);
    void editErrorCode(Errcode errcode);
    void updateErrorByPrefix(Errcode errcode);
    List<Errcode> findByAll();
    List<Errcode> findBySearch(String searchTxt);

    int selectByCode(String code);


//    int insertSelective(Errcode record);
//
//    List<Errcode> selectByExample(ErrcodeExample example);
//
//    Errcode selectByPrimaryKey(Integer id);
//
//    int updateByExampleSelective(@Param("record") Errcode record, @Param("example") ErrcodeExample example);
//
//    int updateByExample(@Param("record") Errcode record, @Param("example") ErrcodeExample example);
//
//    int updateByPrimaryKeySelective(Errcode record);
//
//    int updateByPrimaryKey(Errcode record);
}