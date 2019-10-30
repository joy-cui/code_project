package org.suirui.code.util;

import org.apache.commons.logging.LogFactory;
import org.apache.log4j.spi.ErrorCode;
import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;

import java.util.List;

public class PublicUtil {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(PublicUtil.class);
    public static String trimStr(String str){
        if(str==null || str.equals("")){
            return "";
        }else{
            return str.trim();
        }
    }
    public static boolean isEmpty(String str){
        if(str==null || str.equals("")){
            return true;
        }else{
            return false;
        }
    }
    public static boolean isEmpty(Integer str){
        if(str==null ){
            return true;
        }else{
            return false;
        }
    }

    public  static  int pixFix(int codeType){
        int prefix= Configure.Prefix.errorType_api;
        switch (codeType){
            case Configure.ErrCodeType.errorType_api:
                prefix=Configure.Prefix.errorType_api;
            break;
            case Configure.ErrCodeType.errorType_crs:
                prefix=Configure.Prefix.errorType_crs;
                break;
            case Configure.ErrCodeType.errorType_devmgr:
                prefix=Configure.Prefix.errorType_devmgr;
                break;
            case Configure.ErrCodeType.errorType_gw:
                prefix=Configure.Prefix.errorType_gw;
                break;
            case Configure.ErrCodeType.errorType_mc:
                prefix=Configure.Prefix.errorType_mc;
                break;
            case Configure.ErrCodeType.errorType_mp:
                prefix=Configure.Prefix.errorType_mp;
                break;
            case Configure.ErrCodeType.errorType_netmp:
                prefix=Configure.Prefix.errorType_netmp;
                break;
            case Configure.ErrCodeType.errorType_relayserver:
                prefix=Configure.Prefix.errorType_relayserver;
                break;
            case Configure.ErrCodeType.errorType_reloymc:
                prefix=Configure.Prefix.errorType_reloymc;
                break;
            case Configure.ErrCodeType.errorType_app:
                prefix=Configure.Prefix.errorType_app;
                break;

        }
     return prefix;
    }

    public static  String merge(String code,int prefix) throws Exception{
        String merger = String.valueOf(prefix)+String.valueOf(code) ;
            return merger;

    }

    public static  String part(String code,int prefix) throws Exception{
        String prefix_str=String.valueOf(prefix);
        String code_str=String.valueOf(code);
        String code_= code_str.substring(prefix_str.length());
//        String ss=code_str.replace(prefix_str,"");
        return code_;

    }

    public static Integer hexToInt(int prefix,String hexStr){
        int data=0;
        try{

            if(hexStr!=null){
                String errorCode= part(hexStr,prefix);
                String code=errorCode.replaceAll("^0[x|X]","");
                data=Integer.parseInt(code,16);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return data;

    }

    public static List<Errcode> setList(List<Errcode> errcodes){
        if(errcodes!=null) {
            for (Errcode errcode : errcodes) {
                errcode.setDescription(errcode.getDescription());
                errcode.setEnglishdec(errcode.getEnglishdec());
                errcode.setMessage(errcode.getMessage());
            }
        }
        return errcodes;
    }
}
