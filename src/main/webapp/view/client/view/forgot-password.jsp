<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 4/17/2022
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quên mật khẩu?</title>
    <link rel="stylesheet" href="${url}/css/forgot_password.css"/>
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head>
<body>
<div class="container-center">
    <h2>Đừng Lo!</h2>
    <form action="forgotPassword" method="post">
        <h4>
            Hãy điền email của bạn<br>
            và chúng tôi sẽ xử lí phần còn lại
        </h4>
        <formgroup>
            <input type="text" name="email"/>
            <label><br>Email</label>
            <span>Nhập email của bạn</span>
        </formgroup>
        <input id="login-btn" type="submit" value="Gửi"></input>


    </form>

    <p>Bạn đã nhớ mật khẩu? <a href="${pageContext.request.contextPath}/login">Đăng nhập</a></p>
</div>
</body>
</html>
