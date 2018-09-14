package org.suirui.code.contant;

public class Configure {
    public static class JSP {
        public static final String code_jsp_page = "code";//页面跳转
        public static class Attrible {
            public static final String CODE_TYPE = "codetype";//页面显示的错误类型
            public static final String errorCodeList = "errcodeList";
            public static final String errorMsg = "error_Msg";
            public static final String errorCodeObj = "errorCodeObj";
            public static final String searchTxt = "searchTxt";
            public static final String STATUS = "status";
            public static final String FILENAME = "fileName";
            public static final String PREFIX = "prefix";//前缀
        }
    }
        public static class ErrCodeType {
            public static final int errorType_api = 1;      //resful-api
            public static final int errorType_devmgr = 2;      //devmgr
            public static final int errorType_mc = 3;       //mc
            public static final int errorType_reloymc = 4;        //reloymc
            public static final int errorType_netmp = 5;       //netmp
            public static final int errorType_mp = 6;         //mp
            public static final int errorType_relayserver = 7;        //relayserver
            public static final int errorType_gw = 8;      //gw
            public static final int errorType_crs = 9;      //crs
            public static final int errorType_app = 10;  //app
        }

        /**
         * 前缀
         */
        public static class Prefix {
            public static final int errorType_api = 100;      //resful-api
            public static final int errorType_devmgr = 101;      //devmgr
            public static final int errorType_mc = 102;       //mc
            public static final int errorType_reloymc = 103;        //reloymc
            public static final int errorType_netmp = 104;       //netmp
            public static final int errorType_mp = 105;         //mp
            public static final int errorType_relayserver = 106;        //relayserver
            public static final int errorType_gw = 107;      //gw
            public static final int errorType_crs = 108;      //crs
            public static final int errorType_app = 109;      //app
        }


        public static class ErrorCode {
            public static final String ErrorCodedata = "data";


            public static final String ID = "id";

            public static final String CODE = "code";

            public static final String REASON = "reason";

            public static final String DESCRIPTION = "description";

            public static final String MESSAGE = "message";

            public static final String ACCEPT = "accept";

            public static final String CODETYPE = "codetype";

            public static final String PREFIX = "prefix";
        }

        public static class Staus {
            public static final String SUCCESS = "success";
            public static final String FAILER = "failer";
        }

        public static class ERROR {
            public static final String ERROR_CODE_NOT_NULL = "错误码不能为空";
            public static final String  ERROR_CODE_REPETION= "错误编码重复";
            public static final String EDIT_FAILER = "修改出错了";
        }

}
