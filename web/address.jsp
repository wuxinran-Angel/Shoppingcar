<%-- 
    Document   : address
    Created on : 2017-6-22, 20:51:22
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id="user1" scope="page" class="p.User"></jsp:useBean>
    <html>
        <head>
            <meta charset="utf-8">
            <title>注册用户</title>
            <style type="text/css">
                body,td,th {
                    color: #EEEEEE;
                    font-family: "方正喵呜体";
                    font-size: 36px;
                    text-align: center;
                }
            </style>
            <link href="字体2.css" rel="stylesheet" type="text/css">
        </head>
    <%
        String id = request.getParameter("id");
        //if (id != null) {
        //    id = id.substring(1, 7);
        //}
        user1.setId(id);
        if (request.getParameter("a")==null) {
    %>
    <body>
        <table width="378" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="82" bgcolor="#FF6600">请添加收货地址~</td>
            </tr>
            <tr>
                <td height="233" bgcolor="#FFFF99"><form id="form1" name="form1" method="post" action="address.jsp?a=1&id=<%=id%>">
                        <table width="388" height="246" border="0" cellpadding="2" cellspacing="2">
                            <tr>
                                <td width="144" height="99" style="font-weight: normal; font-size: 24px; color: #000000; text-align: center;">收货地址：</td>
                                <td width="230" height="99" align="left" style="text-align: center"><span style="text-align: center"></span>            <span style="text-align: center"></span>
                                    <textarea name="address" cols="30" rows="5" id="textarea"></textarea></td>
                            </tr>
                            <tr>
                                <td height="47" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">收货电话：</td>
                                <td height="47" align="left" style="text-align: center"><input name="phone" type="text" id="password" size="30"></td>
                            </tr>
                            <tr>
                                <td height="58" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">收货人姓名：</td>
                                <td height="58" align="left" style="text-align: center"><input name="name" type="text" id="textfield" size="30"></td>
                            </tr>
                            <tr>
                                <td height="32" colspan="2" style="color: #000000; font-size: 24px; text-align: center;"><input type="submit" name="register" id="register" value="提交"> 
                                    &nbsp;
                                    <input type="reset" name="reset" id="reset" value="重置"></td>
                            </tr>
                        </table>
                    </form></td>
            </tr>
        </table>
        <% } else {
            user1.addAddress(request.getParameter("address"), request.getParameter("phone"), request.getParameter("name"));
        %>
        <jsp:forward page="admit.jsp">
            <jsp:param name="id" value="<%=id%>"></jsp:param>
        </jsp:forward>    
        <%
    }%>
    </body>
</html>