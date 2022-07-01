<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 5/29/2022
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Verify Page</title>
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head>
<body>
<span>We already send a verification  code to your email.</span>

<form action="${pageContext.request.contextPath}/verify" method="post">
    <input type="text" name="code">
    <input type="submit" value="verify">
</form>
</body>
</html>
