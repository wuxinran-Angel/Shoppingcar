<%-- 
    Document   : productDetail
    Created on : 2017-6-17, 23:39:43
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<jsp:useBean id="product" scope="page" class="p.Product"></jsp:useBean>
<jsp:useBean id="show" scope="page" class="p.ShowProduct"></jsp:useBean>
    <html>
        <head>  
            <meta charset="utf-8">
            <title>商品详情页1</title>
            <style type="text/css">
                body {
                    background-color: #F63;
                    font-family: "方正美黑简体";
                }
            </style>
        </head>
    <%
        show.show(request.getParameter("classid"));
        String id = request.getParameter("id");
    %>
    <body>
        <table width="662" height="646" border="0" align="center" cellpadding="0" cellspacing="5">
            <tr>
                <td width="77" height="40" style="text-align: center; color: #EEE; font-size: 24px;"><a href="index.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">主页</a></td>
                <td width="169" style="color: #EEE; font-size: 18px;">欢迎您,<%=request.getParameter("username")%></td>
                <td style="text-align: center; color: #EEE; font-size: 24px;"><label for="search">搜索:</label>
                    <input name="search" type="search" id="search" size="15"></td>
                <td width="121" style="text-align: center; color: #EEE; font-size: 24px;">我的信息</td>
                <td width="100" style="text-align: center; color: #EEE; font-size: 24px;"><a href="shoppingCar.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">购物车</a></td>
            </tr>
            <tr>
                <td height="79" colspan="5" bgcolor="#FF6600" style="font-family: '方正美黑简体'; text-align: center; font-size: 52px; color: #FFF;"><img src="image/center2.jpg" width="737" height="251"  alt=""/></td>
            </tr>
            <tr>
                <td height="254" colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(0);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td width="250"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(1);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(2);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(3);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(4);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(5);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(6);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(7);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
                <td colspan="2"><table width="200" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <%
                                product = show.getProduct(8);
                            %>
                            <td colspan="2" bgcolor="#FFCC33"><a href="product_detail.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=product.getId()%>"><img src="<%=product.getPic()%>"width="220" height="220"  alt=""/></a></td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 18px; text-align: center; color: #010;"><%=product.getName()%></td>
                        </tr>
                        <tr>
                            <td width="92" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #010;">&yen;<%=product.getPrice()%></td>
                            <td width="128" bgcolor="#FFCC33" style="font-family: '方正美黑简体'; font-size: 24px; text-align: center; color: #FFF;"><input type="button" name="addincar" id="addincar" value="加入购物车" onclick=""></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </body>
</html>