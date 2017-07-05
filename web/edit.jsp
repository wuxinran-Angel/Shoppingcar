<%-- 
    Document   : edit
    Created on : 2017-6-22, 17:49:38
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id="product" scope="page" class="p.Product"></jsp:useBean>
<jsp:useBean id="show" scope="page" class="p.ShowProduct"></jsp:useBean>
    <html>
        <head>
            <meta charset="utf-8">
            <title>编辑购物车</title>
            <style type="text/css">
                body {
                    background-color: #F63;
                    font-family: "方正美黑简体";
                }
            </style>
        </head>
    <%
        String id = request.getParameter("id");
        if (request.getParameter("c") == null) {
        show.showShoppingCar(id);
        product=show.getProduct(request.getParameter("num"));
        int a=show.getNumber(request.getParameter("num"));
        String p=product.getId();
    %>
    <body> 
        <form method="post" action="edit.jsp?c=1&id=<%=id%>&productid=<%=p%>&num=<%=request.getParameter("num")%>" id ="passForm" >
         <table width="682" border="0" align="center" cellpadding="0" cellspacing="5">
                <tr>
                    <td width="151" height="40" style="text-align: center; color: #EEE; font-size: 18px;">主页</td>
                    <td width="300" style="color: #EEE; font-size: 18px;">欢迎您，<%=request.getParameter("username") %></td>
                    <td width="100" style="text-align: center; font-size: 18px; color: #EEE;">我的信息</td>
                    <td width="106" style="text-align: center; font-size: 18px; color: #EEE;"><a href="edit.jsp?username='<%=request.getParameter("username")%>'&id='<%=id%>'">返回订单</a></td>
                </tr>
                <tr>
                    <td height="147" rowspan="2" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><img src=<%=product.getPic()%> width="151" height="149"  alt=""/></td>
                    <td height="147" rowspan="2" align="center" valign="middle" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><span style="color: #000; font-size: 24px; text-align: justify;">商品名称：<%=product.getName()%></span></td>
                    <td height="89" colspan="4" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><span style="font-size: 36px; color: #000;">&yen;<%=product.getPrice()%></span></td>
                </tr>
                <tr>
                    <td height="51" colspan="4" bgcolor="#EEEEEE" style="text-align: right; color: #000; font-size: 24px;">×      <input name="n" type="number" id="number" max="100" min="0" value=<%=a%>></td>
                </tr> 
                <tr>
                    <td height="31" colspan="6" bgcolor="#FF6633" style="text-align: right; color: #000; font-size: 18px;"><input type="submit" name="button" id="button" value="提交修改"></td>
                </tr>
    </table></form>
    </body>
        <% } else {
                String i = request.getParameter("n");
                String b=request.getParameter("id");
                int ii=Integer.parseInt(i);
                product.edit(request.getParameter("productid"),b,ii);         
%>
        <jsp:forward page="shoppingCar.jsp">
            <jsp:param name="id" value="<%=b%>"></jsp:param>
        </jsp:forward>
<%   }
        %>
</html>

