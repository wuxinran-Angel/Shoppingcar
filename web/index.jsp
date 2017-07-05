<%-- 
    Document   : index
    Created on : Jun 16, 2017, 3:51:54 PM
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>主页</title>
        <style type="text/css">
            body {
                color: #D6D6D6;
                background-color: #F63;
            }
        </style>
        <link href="字体1.css" rel="stylesheet" type="text/css">
    </head>
    <% 
        String name = request.getParameter("username");
        String id = request.getParameter("id");
    %>
    <body>
        <table width="742" height="767" border="0" align="center">
            <tr>
                <td height="42" align="center" bgcolor="#FF0000" style="font-family: '方正美黑简体'; font-size: 24px; color: #FFF; text-align: center;">主页</td>
                <td height="42" align="center" bgcolor="#FF0000" style="font-family: '方正美黑简体'; font-size: 24px; color: #FFF; text-align: center;">欢迎您，请<a href="login.jsp">登录</a> 或 <a href="register.jsp">注册</a></td>
                <td height="42" align="center" bgcolor="#FF0000" style="font-family: '方正美黑简体'; font-size: 24px; color: #FFF; text-align: center;"><label for="search" style="font-size: 18px">搜索:</label>
                    <input name="search" type="search" id="search" size="20"></td>
            </tr>
            <tr>
                <td height="94" colspan="3"><img src="image/center.jpg" width="741" height="248"  alt=""/></td>
            </tr>
            <tr>
                <td width="247" height="94" align="center" valign="middle" style="text-align: center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00001"><img src="image/女装1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;">服装</td>
                        </tr>
                    </table></td>
                <td width="266" align="center" valign="middle" style="text-align: center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00002"><img src="image/图书1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;">图书</td>
                        </tr>
                    </table></td>
                <td width="220" align="center" valign="middle" style="text-align: center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00003"><img src="image/零食1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td style="font-size: 24px; text-align: center; font-family: '方正美黑简体'; color: #FFF;">零食</td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td height="183" align="center" valign="middle" style="text-align: center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00004"><img src="image/家电1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;">家电</td>
                        </tr>
                    </table></td>
                <td align="center" valign="middle" style="text-align: center"><table width="222" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="220"><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00005"><img src="image/美妆1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td width="220" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;">美妆</td>
                        </tr>
                    </table></td>
                <td align="center" valign="middle" style="text-align: center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="productDetail.jsp?username=<%=name%>&id=<%=id%>&classid=00006"><img src="image/鞋靴1.jpg" width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;">鞋靴</td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </body>
</html>
