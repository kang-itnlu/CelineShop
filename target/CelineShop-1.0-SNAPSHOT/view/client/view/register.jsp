<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alertMsg = (String) request.getAttribute("alert");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/login.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head><!--/head-->

<body>
<header id="header"><!--header-->
    <div class="header_inner">
        <div class="header_inner_left">
            <img src="${url}/images/home/celine_login.png" alt="" class="img">
            <p>Tạo tài khoản</p>
        </div>
        <div class="header_inner_right">
            Cần trợ giúp?
        </div>
    </div>

</header><!--/header-->
<div id="container" style="height:690px;">
    <div>.</div>
    <!--Form register-->
    <div id="auth-form-register" style="display:block;">
        <div class="auth-form__container">
            <div class="auth-form__header">
                <h3 class="auth-form__heading">
                    Đăng ký
                </h3>

            </div>
            <form id="form-regex" autocomplete="off" onsubmit="return(checkForm())" action="register" method="post">
                <%
                    if (alertMsg != null) {
                %>
                <p class="alert alert-danger" role="alert">
                    <%= alertMsg %>
                </p>
                <%
                    }
                %>
                <div class="auth-form__form">

                    <div class="auth-form__group">
                        <input type="text" class="auth-form__input" id="email" name="email" placeholder="Email">
                        <small>Error message</small>
                    </div>
                    <div class="auth-form__group">
                        <input type="text" class="auth-form__input" id="phone" name="username"
                               placeholder="Tên người dùng">
                        <small>Error message</small>
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" id="password" name="password"
                               placeholder="Mật khẩu">
                        <small>Error message</small>
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" id="re-password" name="re-password"
                               placeholder="Nhập lại mật khẩu">
                        <small>Error message</small>
                    </div>
                </div>

                <div class="auth-form__aside">
                    <p class="auth-form__policy-text">
                        Bằng việc đăng ký, bạn đã đồng ý với Céline về
                        <a href="" class="auth-form__text-link">Điều khoản dịch vụ</a>&
                        <a href="" class="auth-form__text-link">Chính sách bảo mật</a>
                    </p>
                </div>
                <div class="auth-form__controls">
                    <input type="button" class="btn auth-form__controls-back btn--normal"
                           onclick=location.href="${pageContext.request.contextPath }/login" value="TRỞ LẠI">
                    <input type="submit" class="btn btn--primary" value="ĐĂNG KÝ">
                </div>
            </form>
        </div>
        <div class="auth-form__socials">
            <a href="https://www.facebook.com/dialog/oauth?client_id=707516127168532&redirect_uri=http://localhost:8080/CelineBE_war_exploded/login-facebook" class="auth-form__socials--facebook btn btn--size-s btn--with-icon">
                <i class="auth-form__socials-icon fab fa-facebook-square"></i>
                <span class="auth-form__socials-title">
                              Facebook
                         </span>
            </a>
            <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/CelineBE_war_exploded/login-google&response_type=code
    &client_id=769211015171-ngntld852tlcoodj7i5g8bt9452vjkgm.apps.googleusercontent.com&approval_prompt=force"
               class="auth-form__socials--google btn btn--size-s btn--with-icon">
                <img src="${url}/images/home/google.png" alt="">
                <span class="auth-form__socials-title">
                              Google
                         </span>
            </a>
        </div>
    </div>

</div>

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<script src="${url}/js/html5shiv.js"></script>
<script src="${url}/js/respond.min.js"></script>
<script src="${url}/js/register.js"></script>
</body>
</html>