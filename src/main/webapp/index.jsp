<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body class="login">
<div class="loginCon">
    <h1><img src="images/logo.png" width="101" height="76" alt="LOGO"> 会见系统管理平台</h1>
    <div class="loginForm">
        <form id="userForm" action="${pageContext.request.contextPath }/doLogin" method="post" >
            <table width="340" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="95">用户名：</td>
                    <td><input type="text" name="username" id="username"></td>
                </tr>
                <tr>
                    <td>密　码：</td>
                    <td><input type="text" name="password" id="password"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="登录" style="background:#117dda; color:#fff; cursor:pointer;"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div style="position:absolute; bottom: 20px; left:50%; margin-left:-80px; font-family:'微软雅黑'; font-size:16px; color:#7faef8;">&copy;随锐科技股份有限公司</div>
</body>
</html>