<%-- 
    Document   : register
    Created on : 2017-6-17, 9:18:11
    Author     : cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
 <jsp:useBean id = "newUser" scope = "session" 
    class = "p.Register" />

<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>注册用户</title>
<style type="text/css">
body,td,th {
	color: #EEEEEE;
	font-family: "方正喵呜体";
	font-size: 36px;
}
</style>
<link href="字体2.css" rel="stylesheet" type="text/css">
</head>
<jsp:setProperty name = "newUser" property = "name" />
<jsp:setProperty name = "newUser" property = "password" />
<jsp:setProperty name = "newUser" property = "passwordAgain" />
<jsp:setProperty name = "newUser" property = "phone" />
         <%
             if(newUser.getName()==null||newUser.getPassword()==null||newUser.getPasswordAgain()==null) 
            {
          %>
<body>
<table width="378" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="82" bgcolor="#FF6600">欢迎成为家购物的一员~</td>
  </tr>
  <tr>
    <td height="160" bgcolor="#FFFF99"><form id="form1" name="form1" method="post">
      <table width="388" height="294" border="0" cellpadding="2" cellspacing="2">
        <tr>
          <td width="127" height="47" style="font-weight: normal; font-size: 24px; color: #000000; text-align: center;">用户名：</td>
          <td width="247" height="47" style="text-align: center"><span style="text-align: center"></span>            
              <span style="text-align: center"></span>            <input name="name" type="text" id="name" size="20">            </td>
        </tr>
        <tr>
          <td height="47" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">密码：</td>
          <td height="47" style="text-align: center"><input name="password" type="password" id="password" size="20"></td>
        </tr>
        <tr>
          <td height="58" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">确认密码：</td>
          <td height="58" style="text-align: center"><input name="passwordAgain" type="password" id="passwordAgain" size="20"></td>
        </tr>
        <tr>
          <td height="51" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">电话号码：</td>
          <td height="51" style="text-align: center"><input name="phone" type="text" id="phone" size="20"></td>
        </tr>
        <tr>
          <td height="39" style="font-weight: normal; color: #000000; font-size: 24px; text-align: center;">性别：</td>
          <td style="text-align: center; font-size: 24px; color: #000000;"><p>
            <input type="radio" name="sex" id="sex" value="0">
            <label for="radio">男 </label>
            <input type="radio" name="sex" id="sex" value="1">
            女<label for="radio2"> </label>
          </p></td>
        </tr>
        <tr>
          <td height="32" colspan="2" style="color: #000000; font-size: 24px; text-align: center;"><input type="submit" name="register" id="register" value="注册"> 
            &nbsp;
            <input type="reset" name="reset" id="reset" value="重置"></td>
          </tr>
        </table>
    </form></td>
  </tr>
</table>
    <%
     }
    else
      {
        if(newUser.addUser())
        { 
    %>
        <script type="text/javascript">
            function duihua1()
            {
                this.window.alert("注册成功！");
            }
        </script> 
     <jsp:forward page="index.jsp"/> 
    <%
        }
        else
        { %>
        <script type="text/javascript">
            function duihua2()
            {
               this.window.alert("注册失败！请再次注册~");
            }
        </script>
    <%   
      } 
   }
    %>
</body>
</html>
