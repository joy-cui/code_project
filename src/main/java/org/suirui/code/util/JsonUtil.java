package org.suirui.code.util;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.logging.LogFactory;
import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

public class JsonUtil {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(JsonUtil.class);
    public static JSONObject ListToJson(List<Errcode> errcodeList){
        JSONObject jsonObject = new JSONObject();
        JSONArray json = new JSONArray();
        for(Errcode errcode : errcodeList){
            JSONObject jo = new JSONObject();
//            jo.put(Configure.ErrorCode.CODETYPE, errcode.getCodetype());
            jo.put(Configure.ErrorCode.MESSAGE, errcode.getMessage());
            jo.put(Configure.ErrorCode.DESCRIPTION, errcode.getDescription());
            jo.put(Configure.ErrorCode.ACCEPT, errcode.getAccept());
            jo.put(Configure.ErrorCode.REASON, errcode.getReason());
            jo.put(Configure.ErrorCode.CODE, errcode.getCode());
            jo.put(Configure.ErrorCode.PREFIX, errcode.getPrefix());
//            jo.put(Configure.ErrorCode.ID, errcode.getId());
            json.add(jo);
        }
        jsonObject.put(Configure.ErrorCode.ErrorCodedata,json);;
        return jsonObject;
    }

    /**
     * 格式化JSON
     * @param jsonStr
     * @return
     */
    public static String formatJson(String jsonStr){
    int level = 0;
    //存放格式化的json字符串
    StringBuffer jsonForMatStr = new StringBuffer();
    int length=jsonStr.length();
    for(int index=0;index<length;index++)//将字符串中的字符逐个按行输出
    {
        //获取s中的每个字符
        char c = jsonStr.charAt(index);
        //level大于0并且jsonForMatStr中的最后一个字符为\n,jsonForMatStr加入\t
        if (level > 0 && '\n' == jsonForMatStr.charAt(jsonForMatStr.length() - 1)) {
            jsonForMatStr.append(getLevelStr(level));
        }
        //遇到"{"和"["要增加空格和换行，遇到"}"和"]"要减少空格，以对应，遇到","要换行
        switch (c) {
            case '{':
            case '[':
                jsonForMatStr.append(c + "\n");
                level++;
                break;
            case ',':
                jsonForMatStr.append(c + "\n");
                break;
            case '}':
            case ']':
                jsonForMatStr.append("\n");
                level--;
                jsonForMatStr.append(getLevelStr(level));
                jsonForMatStr.append(c);
                break;
            default:
                jsonForMatStr.append(c);
                break;
        }
    }
    return jsonForMatStr.toString();
}
    private static String getLevelStr(int level) {
        StringBuffer levelStr = new StringBuffer();
        for (int levelI = 0; levelI < level; levelI++) {
            levelStr.append("\t");
        }
        return levelStr.toString();
    }

    public static void fileToJson(String jsonStr,String filePath,String fileName) throws Exception{
            String path=filePath+"/"+fileName+".json";
            File file= new File(path);
            logger.error("fileToJson: "+path);
            FileOutputStream fos = new FileOutputStream(file);//保存的地址路径
            OutputStreamWriter writer = new OutputStreamWriter(fos);
            writer.write(jsonStr);
            writer.flush();
            writer.close();
    }

    /**
     * json转对象
     * @param jsonString
     * @param cls
     * @param <T>
     * @return
     */
    public static <T> T getObject(String jsonString, Class cls) {
        T t = null;
        try {
            t = (T) JSON.parseObject(jsonString, cls);
        } catch (Exception e) {
            // TODO: handle exception
        }
        return t;
    }

    /**
     * json转list
     * @param jsonString
     * @param cls
     * @param <T>
     * @return
     */
    public static <T> List<T> getObjects(String jsonString, Class cls) {
        List<T> list = new ArrayList<T>();
        try {
            list = JSON.parseArray(jsonString, cls);
        } catch (Exception e) {
        }
        return list;
    }
}
