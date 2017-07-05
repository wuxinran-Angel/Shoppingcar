<%-- 
    Document   : admit
    Created on : 2017-6-22, 20:29:59
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id="product" scope="page" class="p.Product"></jsp:useBean>
<jsp:useBean id="show" scope="page" class="p.ShowProduct"></jsp:useBean>
<jsp:useBean id="user1" scope="page" class="p.User"></jsp:useBean>
    <html>
        <head>
            <meta charset="utf-8">
            <title>确认订单</title>
            <style type="text/css">
                body {
                    background-color: #F63;
                    font-family: "方正美黑简体";
                }
            </style>
        </head>
    <%
        float sum = 0;
        String id = request.getParameter("id");
        //if (id != null) {
          //  id = id.substring(1, 7);
        //}
        user1.setId(request.getParameter("id"));
        int max = show.showShoppingCar(id);
        String add=user1.getAddress();
    %>
    <body>
        <form id="form1" name="form1" method="post" action="address.jsp?id=<%=id%>">
            <table width="677"border="0" align="center" cellpadding="0" cellspacing="5">
                <tr>
                    <td height="75" colspan="3" align="left" bgcolor="#FFFFFF" style="text-align: left; color: #000; font-size: 18px;">收货地址：<%=add %></td>
                    <td width="101" bgcolor="#FFFFFF" style="text-align: center; font-size: 18px; color: #EEE;"><input type="submit" name="submit2" id="submit2" value="修改收货地址"></td>
                </tr>
            </table>
        </form>
        <form id="form2" name="form2" method="post" action="index.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">
            <table width="677"border="0" align="center" cellpadding="0" cellspacing="5">
                <% for (int num = 0; num < max; num++) {
                        product = show.getProduct(num);
                        sum = sum + product.getPrice() * show.getNumber(num);
                %> 
                <tr>
                    <td width="151" height="40" style="text-align: center; color: #EEE; font-size: 18px;">订单<%=num + 1%>：</td>
                    <td width="300" style="color: #EEE; font-size: 18px;">商品名：<%=product.getName()%></td>
                    <td width="100" style="text-align: center; font-size: 18px; color: #EEE;">&yen;<%=product.getPrice()%></td>
                    <td width="101" style="text-align: center; font-size: 18px; color: #EEE;">×<%=show.getNumber(num)%></td>
                </tr>
                <% }%>
                <tr>
                    <td height="40" style="text-align: center; color: #EEE; font-size: 18px;">&nbsp;</td>
                    <td style="color: #EEE; font-size: 18px;">&nbsp;</td>
                    <td style="text-align: center; font-size: 18px; color: #EEE;">合计：<%=sum%></td>
                    <td style="text-align: center; font-size: 18px; color: #EEE;">&nbsp;</td>
                </tr>
                <tr>
                    <td height="24" colspan="4" align="center" style="text-align: center; color: #EEE; font-size: 18px;"><input type="submit" name="submit" id="submit" value="确认提交"></td>
                </tr>
            </table>
        </form>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </body>
</html>
