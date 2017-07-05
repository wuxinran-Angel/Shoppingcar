<%-- 
    Document   : shoppingCar
    Created on : 2017-6-18, 9:05:06
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<jsp:useBean id="product" scope="page" class="p.Product"></jsp:useBean>
<jsp:useBean id="show" scope="page" class="p.ShowProduct"></jsp:useBean>
<html>
    <head>
        <meta charset="utf-8">
        <title>购物车</title>
        <style type="text/css">
            body {
                background-color: #F63;
                font-family: "方正美黑简体";
            }
        </style>
    </head>
    <%
        float sum=0; 
        String id = request.getParameter("id");
        //if (id != null) {
          //  id = id.substring(1, 7);
        //} 
        int max=show.showShoppingCar(id);
    %>
    <body>
        <table width="677"border="0" align="center" cellpadding="0" cellspacing="5">
            <tr>
                <td width="151" height="40" style="text-align: center; color: #EEE; font-size: 18px;">主页</td>
                <td width="300" style="color: #EEE; font-size: 18px;">欢迎您，</td>
                <td width="100" style="text-align: center; font-size: 18px; color: #EEE;">我的信息</td>
                <td width="101" style="text-align: center; font-size: 18px; color: #EEE;"><a href="edit.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>">编辑订单</a></td>
            </tr>
            <% for(int num=0;num<max;num++){  
                product=show.getProduct(num);
                String pid=product.getId();
                sum=sum+product.getPrice()*show.getNumber(num);
            %>
            <tr>
                <td height="147" rowspan="2" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><img src=<%=product.getPic()%> width="151" height="149"  alt=""/></td>
                <td height="147" rowspan="2" align="center" valign="middle" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><span style="color: #000; font-size: 24px; text-align: justify;">商品名称：<%=product.getName()%></span></td>
                <td height="89" colspan="4" bgcolor="#EEEEEE" style="text-align: center; color: #EEE; font-size: 18px;"><span style="font-size: 36px; color: #000;">&yen;<%=product.getPrice()%></span></td>
            </tr>
            <tr>
                <td height="51" colspan="4" bgcolor="#EEEEEE" style="text-align: right; color: #000; font-size: 24px;">×<%=show.getNumber(num)%></td>
            </tr>
            <tr>
            <td height="40" colspan="6" bgcolor="#FF6633" style="text-align: right; color: #000; font-size: 36px;"><form method="post" action="edit.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>&num=<%=num%>" id ="passForm"><input type="submit" name="submit" id="submit" value="编辑订单"></form></td>
            </tr>
            <% } %>
            <tr>
                <td height="40" colspan="6" bgcolor="#EEEEEE" style="text-align: right; color: #000; font-size: 36px;">合计：<%=sum %></td>
            </tr>
            <tr>
                <td height="31" colspan="6" bgcolor="#FF6633" style="text-align: right; color: #000; font-size: 18px;"><form  id="form" name="form" method="post" action="admit.jsp?username=<%=request.getParameter("username")%>&id=<%=id%>" id ="passForm"><input type="submit" name="button" id="button" value="提交订单"></form></td>
            </tr>       
        </table>
    </body>
</html>


