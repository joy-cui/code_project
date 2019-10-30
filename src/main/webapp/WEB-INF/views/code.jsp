<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>错误码管理平台</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="wrapper">
    <div class="headWrapper">
        <div class="head">
            <div class="headMain clearfix">
                <div class="logo"><img src="images/logoB.png" width="48" height="37" alt="会见" title="会见"> 会见系统管理平台</div>
                <div class="loginArea">欢迎您，<span class="userName"><a href="#">郑小凡</a></span>&nbsp;|&nbsp;<span class="loginOut"><a href="#" style="color:#ff8a52;">注销</a></span></div>
            </div>
        </div>
    </div>
    <div class="center">
        <div class="mainBody clearfix">
            <div class="nav">
                <ul>
                <li class="cur"><a href="#" onclick="forward(1)">resful-api</a></li>
                <li><a href="#" onclick="forward(2)">devmgr</a></li>
                <li ><a href="#" onclick="forward(3)">mc</a></li>
                <li><a href="#" onclick="forward(4)">reloymc</a></li>
                <li><a href="#" onclick="forward(5)">netmp</a></li>
                <li><a href="#" onclick="forward(6)">mp</a></li>
                <li><a href="#" onclick="forward(7)">relayserver</a></li>
                <li><a href="#" onclick="forward(8)">gw</a></li>
                <li><a href="#" onclick="forward(9)">crs</a></li>
                <li><a href="#" onclick="forward(10)">app</a></li>
            </ul>
            </div>
            <div class="mainCon">
                <div class="content">
                    <div class="searchCon clearfix">
                        <div class="meetingSelectOpts">
                            <table width="300" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <th align="center"><a href="#" class="shareMeeting">新增</a></th>
                                    <th align="center"> <a href="#" class="downloadMeeting">导出</a></th>
                                    <th>
                                        <input type="hidden" id="codetype" name="codetype" value="${codetype}" />
                                        <input type="hidden" id="prefix" name="prefix" value="${prefix}" />
                                        <input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
                                    </th>

                                <tr>
                            </table>
                        </div>
                        <div class="search fr">
                            <input type="text" class="iptText" id="searchTxt" value="${searchTxt}" placeholder="请输入错误码" name="searchTxt">
                            <!--$('#searchFromId').submit()-->
                            <input name="searchBtn" type="button" class="searchBtn" onclick="searchAjax()">

                        </div>
                    </div>
                    <div class="listCon" id="errcodeListId">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableSty3">
                            <tr>
                                <th align="center">序号</th>
                                <th align="center">错误编码</th>
                                <th align="center">原因</th>
                                <th align="center">接收端</th>
                                <th align="center">简单描述</th>
                                <th align="center">产品描述</th>
                                <th align="center">英文描述</th>
                                <th align="center">操作</th>
                            </tr>

                            <c:forEach items="${errcodeList }" var="errorCode"  varStatus="status">
                            <tr >
                                <td align="center">${ status.index + 1}  </td>
                                <td align="center">${errorCode.code } </td>
                                <td align="center">${errorCode.reason }</td>
                                <td align="center">${errorCode.accept }</td>
                                <td align="center">${errorCode.description }</td>
                                <td align="center">${errorCode.message }</td>
                                <td align="center">${errorCode.englishdec }</td>
                                <td align="center" class="meetingSet">
                                    <a href="#" class="delMeeting" onclick="deleteByCodeId(${errorCode.id })">删除</a>
                                    <a href="#" class="editMeetingN" onclick="editErrorCode(${errorCode.id } )">编辑</a><!--meetingLog-->
                                </td>
                            </tr>
                            </c:forEach>

                        </table>
                    </div>
                    <div class="page" style="display: none" ><span class="preP"><a href="#">上一页</a></span> <span><a href="#">1</a></span> <span><a href="#" class="curP">2</a></span> <span><a href="#">3</a></span> <span>...</span> <span><a href="#">10</a></span> <span class="nextP"><a href="#">下一页</a></span> <span class="lastP"><a href="#">最后一页</a></span></div>
                </div>
            </div>
        </div>
    </div>

</div>
<div id="vertical_box">
    <div id="vertical_box_sub">
        <div id="vertical_box_container">
            <!--删除 -->
            <div class="popOut" id="delMeeting">
                <h3>删除会议<input type="hidden" id="deleteId" name="deleteId"/> <i class="closePop">×</i></h3>
                <div class="popContent">
                    <table width="400" border="0" cellspacing="0" cellpadding="0" class="delTip">
                        <tbody>
                        <tr>
                            <td><img src="images/warming.png" width="49" height="49"></td>
                            <td><p>是否确定将会议删除？</p></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <p class="btns" ><a href="#" class="define orange" onclick="deleteCode()">确 定</a><a href="#" class="cancel">取 消</a></p>
            </div>
            <!-- 导出-->
            <div class="popOut" id="downloadMeeting">
                <h3>下载<i class="closePop">×</i></h3>
                <div class="popContent">
                    <table width="450" border="0" cellspacing="0" cellpadding="0" class="delTip">
                        <tbody>
                        <tr>
                            <td align="center" onclick="exportToJson(true)"><a href="#">JSON</a></td><!-- <img src="images/meetingDAn.png" width="112" height="113">-->
                            <td align="center"   onclick="exportToJson(false)"><a href="#">XML</a></td><!--<img src="images/meetingDAp.png" width="112" height="113">-->
                            <%--<td align="center"><a href="#"><img src="images/meetingDWi.png" width="115" height="116"></a></td>--%>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 编辑-->
            <div class="popOut" id="editMeetingN">
                <h3>编辑错误编码<i class="closePop">×</i></h3>
                <form id="editCodeForm" onsubmit="return false" action="##" method="post" >
                <div class="popContent">
                    <input type="text" id="editCodeType" name="codetype" value="${codetype}" />
                    <input type="hidden" id="editid" name="id" />
                    <table width="380" border="0" cellspacing="0" cellpadding="0" class="">
                        <tbody>
                        <tr>
                            <td align="center">前缀</td>
                            <td align="center"> <input type="text" id="editPrefix"  name="prefix" disabled /></td>
                        </tr>
                        <tr>
                            <td align="center">错误编码</td>
                            <td align="center">

                                <input type="text" id="editcode"  name="code"   placeholder="请输入错误编码"
                                         maxlength="16" />
                                <!-- onKeyUp="value=value.replace(/[^\d]/g,'')"-->
                            </td>
                        </tr>
                        <tr>
                            <td align="center">原因</td>
                            <td align="center"><input type="text"  id="editreason" name="reason"   placeholder="请输入错误原因"  /></td>
                        </tr>
                        <tr>
                            <td align="center">接收端</td>
                            <td align="center"><input type="text" id="editaccept"  name="accept"   placeholder="请输入接收端" /></td>
                        </tr>
                        <tr>
                            <td align="center">简单描述</td>
                            <td align="center"><input type="text" id="editdescription" name="description"   placeholder="请输入原对应的字符描述" /></td>
                        </tr>
                        <tr>
                            <td align="center">产品描述</td>
                            <td align="center"><input type="text" id="editmessage" name="message"   placeholder="请输入产品描述" /></td>
                        </tr>
                        <tr>
                            <td align="center">英文描述</td>
                            <td align="center"><input type="text" id="editenglishdec" name="englishdec"  placeholder="请输入英文描述" /></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                    <!--javascript:document:editCodeForm.submit();-->
                    <p class="btns"><a href="#" class="define blue" onclick="editSubmit()">确 定</a><a href="#" class="cancel">取 消</a></p>
                </form>
            </div>
               <!--新增 -->
            <div class="popOut" id="shareMeeting">
                <h3>新增错误编码<i class="closePop">×</i></h3>
                <form id="insertCodeForm" onsubmit="return false" action="##"  method="post" >
                    <div class="popContent">
                        <input type="hidden" id="insertCodeType" name="codetype" value="${codetype}" />

                            <table width="380" border="0" cellspacing="0" cellpadding="0" class="">
                                <tbody>
                                <tr>
                                    <td align="center">前缀</td>
                                    <td align="center"> <input type="text" id="insertPrefix"  name="prefix"  value="${prefix}" disabled/></td>
                                </tr>
                                <tr>
                                    <td align="center">错误编码</td>
                                    <td align="center">
                                        <%--<input type="Number"   name="code" value=""  placeholder="请输入会议主题"--%>
                                                              <%--onKeyUp="value=value.replace(/[^\d]/g,'')"   maxlength="10" />--%>
                                            <input type="text"   name="code"   placeholder="请输入错误编码"
                                                   maxlength="16" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">原因</td>
                                    <td align="center"><input type="text"  id="reason" name="reason"   placeholder="请输入错误原因"  /></td>
                                </tr>
                                <tr>
                                    <td align="center">接收端</td>
                                    <td align="center"><input type="text"  name="accept" value=""  placeholder="请输入接收端" /></td>
                                </tr>
                                <tr>
                                    <td align="center">简单描述</td>
                                    <td align="center"><input type="text"  name="description" value=""  placeholder="请输入原对应的字符描述" /></td>
                                </tr>
                                <tr>
                                    <td align="center">产品描述</td>
                                    <td align="center"><input type="text"  name="message" value=""  placeholder="请输入产品描述" /></td>
                                </tr>
                                <tr>
                                    <td align="center">英文描述</td>
                                    <td align="center"><input type="text"  name="englishdec" value=""  placeholder="请输入英文描述" /></td>
                                </tr>
                                </tbody>
                            </table>
                    </div>
                    <!--javascript:document:insertCodeForm.submit();-->
                    <p class="btns"><a href="#" class="define blue" onclick="insertSubmit()">确 定</a><a href="#" class="cancel">取 消</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-1.8.0.js"></script>
<script src="js/js.js"></script>
<script src="js/code.js"></script>
</body>
</html>