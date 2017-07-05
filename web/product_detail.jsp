<%-- 
    Document   : product_detail
    Created on : 2017-6-18, 9:04:43
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id="product" scope="page" class="p.Product"></jsp:useBean>
    <html>
        <head>
            <meta charset="utf-8">
            <title>女装详情1</title>
            <style type="text/css">
                body {
                    background-color: #F63;
                    font-family: "方正美黑简体";
                }
            </style>
        </head>
    <%
        String productid = request.getParameter("productid");
        product.setId(productid);
        product.getInformation();
        String id = request.getParameter("id");
        if (request.getParameter("a") == null) {
    %>
    <body>
        <form  method="post" action="product_detail.jsp?a=1&username=<%=request.getParameter("username")%>&id=<%=id%>&productid=<%=productid%>" id ="passForm">
            <table width="677" height="1082" border="0" align="center" cellpadding="0" cellspacing="5">
                <tr>
                    <td height="64" colspan="2" style="color: #EEE; font-size: 18px; text-decoration: underline;"><a href="index.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">主页</a>主页</td>
                    <td width="81" style="text-align: center; font-size: 18px; color: #EEE; text-decoration: underline;">我的信息</td>
                    <td colspan="2" style="text-align: center; color: #EEE; font-size: 18px; text-decoration: underline;"><a href="shoppingCar.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">购物车</a></td>
                </tr>
                <tr>
                    <td width="220" height="220" rowspan="2" bgcolor="#FF6633" style="text-align: center; color: #EEE; font-size: 18px;"><img src="<%=product.getPic()%>" width="220" height="220"  alt=""/></td>
                    <td width="270" rowspan="2" valign="middle" bgcolor="#FF9933" style="text-align: justify; color: #000; font-size: 24px;">商品名称：<%=product.getName()%>
                        <p>&nbsp;</p></td>
                    <td height="96" colspan="2" align="center" valign="middle" bgcolor="#FF9933" style="text-align: justify; color: #000; font-size: 24px;"><span style="text-align: center; color: #000; font-size: 24px;">&yen;<%=product.getPrice()%>

                        </span></td>
                </tr>
                <tr>
                    <td height="26" colspan="2" valign="middle" bgcolor="#FF9933" style="text-align: justify; color: #000; font-size: 18px;">店铺名称：<%=product.getOwner()%></td>
                </tr>
                <tr>
                    <td height="21" colspan="4" bgcolor="#FF6633" style="text-align: left"><span style="color: #000; font-size: 18px;"><span style="text-align: left; color: #000; font-size: 24px;">
                                <input type="button" name="button2" id="button2" value="加收藏">
                                &nbsp;&nbsp;
                                <input type="submit" name="button" id="button" value="加入购物车">
                            </span></span></td>
                </tr>
                <tr>
                    <td height="773" colspan="5" bgcolor="#FF9966" style="text-align: center; color: #000; font-size: 18px;"><span style="color: #000000; vertical-align: baseline; text-align: justify; text-indent: 2px;"><%=product.getInfo()%></span></td>
                </tr>
            </table></form>
            <% } 
                else {
                    String username=request.getParameter("username");
                    String classid=product.getClassId();
                    product.addInCar(id);%>
        <script type="text/javascript">
                this.window.alert("成功加入购物车！");
        </script> 
         <jsp:forward page="productDetail.jsp">
            <jsp:param name="username" value="<%=username%>"></jsp:param>
            <jsp:param name="id" value="<%=id%>"></jsp:param>
            <jsp:param name="classid" value="<%=classid%>"></jsp:param>
        </jsp:forward>
        <% }%>
    </body>
</html>


