package org.suirui.code.util;

import org.apache.commons.logging.LogFactory;
import org.suirui.code.CodeEntry;
import org.suirui.code.ErrorCodeEntry;
import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import java.io.*;
import java.util.List;
import java.util.logging.Logger;

public class XmlUtil {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(XmlUtil.class);
//    public static String ListToXml(List<Errcode> errcodeList){
//        if(errcodeList!=null && errcodeList.size()>1) {
//             Code code=new Code();
//             code.setErrcodes(errcodeList);
//             return convertToXml(code);
//        }
//        return "";
//    }
    public static String ListToXml(List<ErrorCodeEntry> errcodeList){
        if(errcodeList!=null && errcodeList.size()>1) {
            CodeEntry code=new CodeEntry();
            code.setErrcodes(errcodeList);
            return convertToXml(code);
        }
        return "";
    }

    /**
     * 对象转xml
     * @param obj
     * @return
     */
    public static String convertToXml(Object obj) {
        // 创建输出流
        StringWriter sw = new StringWriter();
        try {
            // 利用jdk中自带的转换类实现
            CodeEntry errcode=(CodeEntry) obj;
//            logger.error("....exportXml....xmlStr: "+errcode.toString());
            JAXBContext context = JAXBContext.newInstance(errcode.getClass());

            Marshaller marshaller = context.createMarshaller();
            // 格式化xml输出的格式
            marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT,
                    Boolean.TRUE);
            marshaller.setProperty(Marshaller.JAXB_ENCODING, "utf-8");
            // 将对象转换成输出流形式的xml
            marshaller.marshal(obj, sw);
        } catch (JAXBException e) {
            e.printStackTrace();
        }
        return sw.toString();
    }
//    public void xmlToObj(String xmlStr) throws JAXBException {
//        JAXBContext jc = JAXBContext.newInstance(Code.class);
//        Unmarshaller unmar = jc.createUnmarshaller();
//        Code code = (Code) unmar.unmarshal(new StringReader(xmlStr));
//        System.out.println(code.getName());
//    }

        /**
         * 保存文件
         * @param jsonStr
         */
    public static void fileToXml(String jsonStr,String filePath,String fileName) throws  Exception{
            String path=filePath+"\\"+fileName+".xml";
            File file= new File(path);
            logger.error("fileToXml: "+path);
            FileOutputStream fos = new FileOutputStream(file);//保存的地址路径
            OutputStreamWriter writer = new OutputStreamWriter(fos);
            writer.write(jsonStr);
            writer.flush();
            writer.close();

    }
}
