package org.suirui.code.controller;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;
import org.suirui.code.service.impl.CodeServiceImpl;
import org.suirui.code.util.JsonUtil;
import org.suirui.code.util.PublicUtil;
import org.suirui.code.util.XmlUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.net.URL;
import java.util.List;


/**
 * Created by XRog
 * On 2/1/2017.12:36 AM
 */
@Controller
public class CodeController {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(CodeController.class);
    @Autowired
    private CodeServiceImpl codeService;
    private String filePath="resources/file";
    private String fileName="errorCode";


    /**
     * 指定显示哪个类别的错误码(ajax)
     * @param codetype
     * @return
     */
    @RequestMapping("code")
    public @ResponseBody  JSONObject code(Integer codetype){
        logger.error("code.....codetype:"+codetype);
        JSONObject jsonObject=new JSONObject();
        try{
            List<Errcode> errcodeList = codeService.findByErrorType(codetype);
            jsonObject.put(Configure.JSP.Attrible.errorCodeList,errcodeList);
            jsonObject.put(Configure.JSP.Attrible.CODE_TYPE,codetype);
            int prefix=PublicUtil.pixFix(codetype);
            jsonObject.put(Configure.JSP.Attrible.PREFIX,prefix);
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
        }
        return jsonObject;
    }

    /**
     * 新增（ajax）
     * @param errorCode(@ModelAttribute(value = "errorCode"))
     * @return
     */
    @RequestMapping("insert")
    public @ResponseBody  JSONObject  insertCode(Errcode errorCode){
        logger.error("insertCode.. 。。。。。。getCode："+errorCode.getCode()+" getDescription: "+errorCode.getDescription()+"  getCodetype :"+errorCode.getCodetype()+" getPrefix: "+errorCode.getPrefix());
        JSONObject jsonObject=new JSONObject();
        try {
            if(errorCode!=null){
                if(PublicUtil.isEmpty(errorCode.getCode()) || PublicUtil.isEmpty(errorCode.getPrefix())){
                    jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.ERROR.ERROR_CODE_NOT_NULL);
                }else {
                    String code=PublicUtil.merge(errorCode.getCode(),errorCode.getPrefix());
                    errorCode.setCode(code);
                    int selectCount=codeService.selectByCode(code);
                    logger.error("insertCode.. 。。。。。。selectCount：" + selectCount);
                    if(selectCount>0){
                        jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.ERROR.ERROR_CODE_REPETION);
                    }else {
                        logger.error("insertCode.. 。。。。。。getCode：" + code);
                        codeService.insertCode(errorCode);
                        List<Errcode> errcodeList = codeService.findByErrorType(errorCode.getCodetype());
                        jsonObject.put(Configure.JSP.Attrible.errorCodeList, errcodeList);
                        jsonObject.put(Configure.JSP.Attrible.CODE_TYPE, errorCode.getCodetype());
                        jsonObject.put(Configure.JSP.Attrible.STATUS, Configure.Staus.SUCCESS);
                    }
                }
            }else{
                jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.ERROR.ERROR_CODE_NOT_NULL);
            }
        }catch (Exception e){
            logger.error("springTest.. mybatis。...error:"+e.getMessage().toString());
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
            e.printStackTrace();
        }
        return jsonObject;
    }


    /**
     * 获取修改的数据(ajax)
     * @param id
     * @param codetype
     * @return
     */
    @RequestMapping("findById")
    public @ResponseBody  JSONObject findById(Integer id,Integer codetype){
        logger.error("code....."+codetype+" id："+id);
        JSONObject jsonObject=new JSONObject();
        try {
            Errcode errcode = codeService.findById(id);
            if (errcode != null) {
                jsonObject.put(Configure.JSP.Attrible.CODE_TYPE,codetype);
                //去除code中的prefix,显示用
                String code=PublicUtil.part(errcode.getCode(),errcode.getPrefix());
                logger.error("findById...code: "+code+" getCode：" +errcode.getCode()+" getPrefix："+errcode.getPrefix());
                errcode.setCode(code);
                jsonObject.put(Configure.JSP.Attrible.errorCodeObj,errcode);
                jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.SUCCESS);
            }else{
                jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
            }
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
        }
        return jsonObject;
    }



    /**
     * 修改错误码ajax
     * @param errorCode
     * @throws Exception
     */
    @RequestMapping(value = "/editCode")
    public  @ResponseBody  JSONObject editErrorCode( Errcode errorCode)
    {
        logger.error("editErrorCode.....");
        JSONObject jsonObject=new JSONObject();
        try {
            if(errorCode!=null) {
                if (PublicUtil.isEmpty(errorCode.getCode())) {
                    jsonObject.put(Configure.JSP.Attrible.STATUS, Configure.ERROR.ERROR_CODE_NOT_NULL);
                } else {
                    logger.error("editErrorCode...code....." + errorCode.getCode() + " codetype：" + errorCode.getCodetype()+" prefix:"+errorCode.getPrefix());
                    String code=PublicUtil.merge(errorCode.getCode(),errorCode.getPrefix());
                    int selectCount=codeService.selectByCode(code);
                    if(selectCount>0){
                        jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.ERROR.ERROR_CODE_REPETION);
                    }else {
                        errorCode.setCode(code);
                        codeService.editErrorCode(errorCode);
                        List<Errcode> errcodeList = codeService.findByErrorType(errorCode.getCodetype());
                        jsonObject.put(Configure.JSP.Attrible.errorCodeList, errcodeList);
                        jsonObject.put(Configure.JSP.Attrible.CODE_TYPE, errorCode.getCodetype());
                        jsonObject.put(Configure.JSP.Attrible.STATUS, Configure.Staus.SUCCESS);
                    }
                }
            }else{
                jsonObject.put(Configure.JSP.Attrible.STATUS, Configure.ERROR.ERROR_CODE_NOT_NULL);
            }
        }catch (Exception e){
            e.printStackTrace();
            logger.error("springTest.. mybatis。...error:"+e.getMessage().toString());
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.ERROR.EDIT_FAILER);
        }
        return jsonObject;

    }

    /**
     * 删除错误码(ajax)
     * @param codetype
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteCode")
    public @ResponseBody  JSONObject deleteCode(Integer codetype, Integer id){
        logger.error("deleteCode.. 。...codetype:"+codetype+"  id:"+id);
       JSONObject jsonObject=new JSONObject();
        try {
            codeService.deleteById(id);
            List<Errcode> errcodeList= codeService.findByErrorType(codetype);
            if(errcodeList!=null){
                logger.error(errcodeList.size()+".....deleteCode");
            }
            jsonObject.put(Configure.JSP.Attrible.errorCodeList,errcodeList);
            jsonObject.put(Configure.JSP.Attrible.CODE_TYPE,codetype);
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.SUCCESS);

        }catch (Exception e){
            logger.error("deleteCode。...error:"+e.getMessage().toString());
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
        }
        return jsonObject;
    }

    /**
     * 搜索(ajax)
     * @param searchTxt
     * @param codetype
     * @return
     */
    @RequestMapping(value = "/search")
    public  @ResponseBody  JSONObject searchCode(@Param(value="searchTxt")String searchTxt, Integer codetype){
        logger.error(".. 。...searchCode:"+searchTxt+" codetype: "+codetype);
        JSONObject jsonObject=new JSONObject();
        try{
            List<Errcode> errcodeList = codeService.findBySearch(searchTxt);
            jsonObject.put(Configure.JSP.Attrible.errorCodeList,errcodeList);
            jsonObject.put(Configure.JSP.Attrible.CODE_TYPE,codetype);
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
        }
        return jsonObject;
    }

    /**
     * 导出JSON(ajax)
     * @param codetype
     * @return
     */
    @RequestMapping(value = "/code/toJson")
    public @ResponseBody  JSONObject exportJson(Integer codetype,HttpServletRequest request){

        logger.error(".. 。...exportJson....codetype: "+codetype+" getRealPath: "+request.getSession().getServletContext().getRealPath("resources/file"));
        JSONObject jsonObj=new JSONObject();
        try {
            List<Errcode> errcodeList=codeService.findByAll();

            //json
            JSONObject jsonObject=JsonUtil.ListToJson(errcodeList);
            String jsonStr=JsonUtil.formatJson(jsonObject.toJSONString());
            String path=request.getSession().getServletContext().getRealPath(filePath);
            JsonUtil.fileToJson(jsonStr,path,fileName);
            jsonObj.put(Configure.JSP.Attrible.STATUS,"success");
            jsonObj.put(Configure.JSP.Attrible.FILENAME,"errorCode.json");
        }catch (Exception e){
            jsonObj.put(Configure.JSP.Attrible.STATUS,"failer");
        }
         return jsonObj;
    }

    /**
     * 导出xml(ajax)
     * @param codetype
     * @return
     */
    @RequestMapping(value = "/code/toXml")
    public @ResponseBody  JSONObject exportXml(Integer codetype,HttpServletRequest request){
        logger.error("....exportXml....codeType: "+codetype);
        JSONObject xmlObj=new JSONObject();
        try{
            List<Errcode> errcodeList=codeService.findByAll();
            String xmlStr=XmlUtil.ListToXml(errcodeList);
//            logger.error(xmlStr);
            String path=request.getSession().getServletContext().getRealPath(filePath);
            XmlUtil.fileToXml(xmlStr,path,fileName);

            xmlObj.put(Configure.JSP.Attrible.STATUS,"success");
            xmlObj.put(Configure.JSP.Attrible.FILENAME,"errorCode.xml");
        }catch (Exception e){
            e.printStackTrace();
            xmlObj.put(Configure.JSP.Attrible.STATUS,"failer");
        }
        return xmlObj;
    }

    /**
     * 文件下载
     * @param fileName
     * @param request
     * @param response
     */
    @RequestMapping(value = "downLoad",method = RequestMethod.GET)
    public @ResponseBody  JSONObject downLoad(@Param(value="fileName")String fileName,HttpServletRequest request, HttpServletResponse response){
        BufferedInputStream dis = null;
        BufferedOutputStream fos = null;
        logger.error("fileName:"+fileName);
        JSONObject jsonObject=new JSONObject();
        try {
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.SUCCESS);
            String requestURL=request.getRequestURL().toString();
            String urlString=requestURL.split("/downLoad")[0];
            String name = request.getParameter("fileName");
            logger.error(" downLoad urlString: "+urlString+"  fileName:"+name);
            if(urlString!=null) {
                URL url = new URL(urlString+"/file/"+name);
                //response.setContentType("application/x-msdownload;");
                response.setContentType("application/octet-stream");
                response.setHeader("Content-disposition", "attachment; filename=" + new String(name.getBytes("utf-8"), "ISO8859-1"));
                response.setHeader("Content-Length", String.valueOf(url.openConnection().getContentLength()));

                dis = new BufferedInputStream(url.openStream());
                fos = new BufferedOutputStream(response.getOutputStream());

                byte[] buff = new byte[2048];
                int bytesRead;
                while (-1 != (bytesRead = dis.read(buff, 0, buff.length))) {
                    fos.write(buff, 0, bytesRead);
                }
            }
        } catch (Exception e) {
            jsonObject.put(Configure.JSP.Attrible.STATUS,Configure.Staus.FAILER);
            e.printStackTrace();
        } finally {
            if (dis != null)
                try{
                    dis.close();
                }catch (Exception e){
                    e.printStackTrace();
                }
            if (fos != null)
                try{
                    fos.close();
                }catch (Exception e){
                    e.printStackTrace();
                }

        }
        return jsonObject;
    }

}