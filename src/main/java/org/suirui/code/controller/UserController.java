package org.suirui.code.controller;

import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.suirui.code.contant.Configure;
import org.suirui.code.pojo.Errcode;
import org.suirui.code.pojo.User;
import org.suirui.code.service.IUserService;
import org.suirui.code.service.impl.CodeServiceImpl;

import java.util.List;

@Controller
public class UserController {
    private final  int codeType=Configure.ErrCodeType.errorType_api;
    private final  int prefix=Configure.Prefix.errorType_api;
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(CodeController.class);
    @Autowired
    private IUserService userService;
    @Autowired
    private CodeServiceImpl codeService;
    @RequestMapping("doLogin")
    public String doLogin(User user, Model model){
        logger.error("doLogin....."+user.getUsername()+" : "+user.getPassword());
        model.addAttribute("username",user.getUsername());
        model.addAttribute("user",user);
        model.addAttribute(Configure.JSP.Attrible.CODE_TYPE,codeType);
        model.addAttribute(Configure.JSP.Attrible.PREFIX,prefix);
        try {
            List<Errcode> errcodeList = codeService.findByErrorType(codeType);
            if (errcodeList != null) {
                model.addAttribute(Configure.JSP.Attrible.errorCodeList, errcodeList);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return Configure.JSP.code_jsp_page;
    }


}
