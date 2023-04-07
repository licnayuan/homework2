<%--
  Created by IntelliJ IDEA.
  User: 10400
  Date: 2022/11/20
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="css/login.css" rel="stylesheet">
</head>

<body>
<div id="loginDiv">
    <form action="/loginwork/loginServlet" id="form">
        <h1 id="loginMsg">登录</h1>
        <div id="errorMsg" align="center">${login_msg}${register_msg}</div>
        <p>用户名:<input id="username" name="username" type="text"></p>

        <p>密 码:<input id="password" name="password" type="password"></p>


            <p>验证码:</p><input class="inputs" name="checkCode" type="text" id="checkCode">
            <img id="checkCodeImg" src="/loginwork/checkCodeServlet">
            <a href="#" id="changeImg">看不清？</a>

        <div id="subDiv">
            <input type="submit" class="button" value="登录">
            <input type="reset" class="button" value="重置">&nbsp;&nbsp;&nbsp;
            <a href="register.jsp">注册</a>
        </div>
    </form>
</div>

<script>
    document.getElementById("changeImg").onclick = function (){

        document.getElementById("checkCodeImg").src = "/loginwork/checkCodeServlet?"+new Date().getMilliseconds();
    }
</script>


</body>
</html>
