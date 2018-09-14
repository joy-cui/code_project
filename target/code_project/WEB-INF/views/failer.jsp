<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>code编码</title>

</head>
<body>
错误码列表：
<table width="100%" border=1>
    <tr>
        <td>错误码</td>
    </tr>
    <tr>
        <td>描述</td>
    </tr>
    <tr>
        <td>详细描述</td>
    </tr>
    <tr>
        <td>操作</td>
    </tr>
    <c:forEach items="${codeList }" var="code">
        <tr>
            <td>${code.code }</td>
            <td>${code.reason}</td>
            <td>${code.description }</td>
            <td>
                <a href="${pageContext.request.contextPath }/editCode?id=${code.id}">修改</a>
                <a href="${pageContext.request.contextPath }/deleteCode?id=${code.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>




<form id="codeForm" action="${pageContext.request.contextPath }/insert" method="post" >
    <input  name="id" type="hidden" value="${username }"/>
    新增code编码：
    <table width="100%" border=1>
        <tr>
            <td>code</td>
            <td><input type="text" name="errCode" /></td>
        </tr>

        <tr>
            <td>描述</td>
            <td><input type="text" name="reason" /></td>
        </tr>

        <tr>
            <td>详细描述</td>
            <td><input type="text" name="description" /></td>
        </tr>

        <tr>
            <td colspan="2" align="center"><input type="submit" value="提交"/>
            </td>
        </tr>
    </table>

</form>
</body>
</html>