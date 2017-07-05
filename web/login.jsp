<%-- 
    Document   : login
    Created on : 2017-6-18, 11:25:39
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id = "user" scope = "session" class = "p.User" />
<html>
    <head>
        <meta charset="utf-8">
        <title>登录</title>
        <style type="text/css">
            body {
                color: #CC0033;
                background-color: #F96;
                text-align: center;
            }
        </style>
        <link href="字体1.css" rel="stylesheet" type="text/css">
        <style type="text/css">
            body,td,th {
                color: #000000;
            }
        </style>
    </head>
    <jsp:setProperty name = "user" property = "name" />
    <jsp:setProperty name = "user" property = "password" />
    <%
        if (request.getParameter("name") == null ||request.getParameter("password") == null) {
    %>
    <body>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table width="967" height="228" border="0" align="center">
            <tr>
                <td width="637" height="224" bgcolor="#FF6633" style="text-align: justify"><img src="image/center2.jpg" width="637" height="248"  alt=""/></td>
                <td width="304" bgcolor="#FFFFFF" style="text-align: center; color: #F33; font-family: '方正美黑简体'; font-size: 18px;">
                    <form id="form2" name="form1" method="post">
                        <table width="295" border="0" align="center">
                            <tr>
                                <td height="51" colspan="4" align="center" valign="middle">请在下表中填写您的用户名和密码</td>
                            </tr>
                            <tr>
                                <td width="111" height="51" align="center" valign="middle"><strong style="color: #F33; font-weight: normal;">用户名：</strong></td>
                                <td colspan="3" align="left"><input name="name" type="text" id="name2" size="20"></td>
                            </tr>
                            <tr>
                                <td height="52" align="center" valign="middle"><strong style="color: #F33; font-weight: normal;">密码：</strong></td>
                                <td colspan="3" align="left"><input name="password" type="password" id="password2" size="20"></td>
                            </tr>
                            <tr>
                                <td height="31" colspan="2" align="center"><span style="text-align: center">
                                        <input type="reset" name="reset2" id="reset2" value="重置">
                                    </span></td>
                                <td width="95" height="31" align="center" style="text-align: center"><input type="submit" name="button3" id="button4" value="登录"></td>
                                <td width="74" align="center" style="text-align: center"><input type="button" name="button" id="button" value="返回"></td>
                            </tr>
                        </table>
                    </form></td>
            </tr>
        </table>
        <%
        } else {
            if (user.checkLogin()) {
                String username = request.getParameter("name");
                String id = user.getId();
        %>
        <jsp:forward page="index.jsp">
            <jsp:param name="username" value="<%=username%>"></jsp:param>
            <jsp:param name="id" value="<%=id%>"></jsp:param>
        </jsp:forward>
        <% }%>
        <script type="text/javascript">
                this.window.alert("登录失败！");
        </script>        
        <% }%>
    </body>
</html>