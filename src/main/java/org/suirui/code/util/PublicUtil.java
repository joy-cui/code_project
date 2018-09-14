package org.suirui.code.util;

import org.apache.commons.logging.LogFactory;
import org.suirui.code.contant.Configure;

public class PublicUtil {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(PublicUtil.class);
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

    public static  int merge(int code,int prefix) throws Exception{
        String merger = String.valueOf(prefix)+String.valueOf(code) ;
            return Integer.valueOf(merger);

    }

    public static  int part(int code,int prefix) throws Exception{
        String prefix_str=String.valueOf(prefix);
        String code_str=String.valueOf(code);
        String code_= code_str.substring(prefix_str.length());
//        String ss=code_str.replace(prefix_str,"");
        return Integer.valueOf(code_);

    }
}
