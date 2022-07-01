<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alert = (String) request.getAttribute("alert");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | Céline</title>
    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/login.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
    <!--[if lt IE 9]>

    <![endif]-->
</head><!--/head-->

<body>
<header id="header"><!--header-->
    <div class="header_inner">
        <div class="header_inner_left">
            <img src="${url}/images/home/celine_login.png" alt="" class="img">
            <p>Đăng nhập</p>
        </div>
        <div class="header_inner_right">
            Cần trợ giúp?
        </div>
    </div>

</header><!--/header-->
<div id="container">
    <div>.</div>
    <!--Form login-->
    <div id="auth-form-login">
        <div class="auth-form__container">
            <div class="auth-form__header">
                <h3 class="auth-form__heading">
                    Đăng nhập
                </h3>

            </div>
            <form id="form-regex"  onsubmit="checkForm()" action="login" method="post">
                <%
                    if (alert != null) {
                %>
                <p class="alert alert-danger" role="alert">
                    <%= alert %>
                </p>
                <%
                    }
                %>
                <div class="auth-form__form">
                    <div class="auth-form__group">
                        <input type="text" class="auth-form__input" id="email1" name="username"
                               placeholder="Tên người dùng">
                        <small>Error message</small>
                    </div>
                    <div class="auth-form__group">
                        <input type="password" class="auth-form__input" id="password1" name="password"
                               placeholder="Mật khẩu">
                        <small>Error message</small>
                    </div>
                </div>
                <div class="auth-form__aside">
                    <div class="auth-form__help">
                        <a href="${pageContext.request.contextPath}/forgotPassword" class="auth-form__help-link auth-form__help-forgot">Quên mật
                            khẩu</a>
                        <span class="auth-form__help-separate"></span>
                        <a href="${pageContext.request.contextPath}/help" class="auth-form__help-link">Cần trợ giúp?</a>
                    </div>
                </div>
                <div class="auth-form__controls">
                    <a style="margin-right: 12px;margin-top:6px;"
                       href="${pageContext.request.contextPath }/register">Tạo tài khoản</a>
                    <input type="submit" class="btn btn--primary" value="ĐĂNG NHẬP"></input>

                </div>
            </form>
        </div>
        <div class="auth-form__socials">
            <a href="https://www.facebook.com/dialog/oauth?client_id=707516127168532&redirect_uri=http://localhost:8080/CelineShop/login-facebook" class="auth-form__socials--facebook btn btn--size-s btn--with-icon">
                <i class="auth-form__socials-icon fab fa-facebook-square"></i>
                <span class="auth-form__socials-title">
                              Facebook
                         </span>
            </a>
            <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/CelineShop/login-google&response_type=code
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
</div>

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<script src="${url}/js/html5shiv.js"></script>
<script src="${url}/js/respond.min.js"></script>
<script>
    const form = document.getElementById('form-regex');
    const email = document.getElementById('email');
    const phone = document.getElementById('phone');
    const password = document.getElementById('password');
    const re_password = document.getElementById('re-password');
    const email1 = document.getElementById('email1');
    const password1 = document.getElementById('password1');


    //Show input error message

    function showError(input, message) {
        const formControl = input.parentElement;
        formControl.className = 'auth-form__group error';
        const small = formControl.querySelector('small');
        small.style.display = 'block';
        small.innerText = message;

    }

    function showSuccess(input) {
        const formControl = input.parentElement;
        formControl.className = 'auth-form__group success';

    }

    //Email

    function isValidEmail(email) {
        const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<script>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    }

    function isValidVietnamesePhone(phone) {
        return /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/.test(phone);
    }

    var count = 0, count1 = 0;

    function checkForm() {
        if (email.value === '') {
            showError(email, 'Vui lòng nhập email');
        } else if (!isValidEmail(email.value)) {
            showError(email, 'Email không tồn tại');
        } else {
            showSuccess(email);
            count++;
        }
        if (phone.value === '') {
            showError(phone, 'Vui lòng nhập số điện thoại');
        } else if (!isValidVietnamesePhone(phone.value)) {
            showError(phone, 'Email không tồn tại');
        } else {
            showSuccess(phone);
            count++;
        }
        if (password.value === '') {
            showError(password, 'Vui lòng nhập mật khẩu');
        } else {
            showSuccess(password);
            count++;
        }
        if (re_password.value !== password.value || re_password === '') {
            showError(re_password, 'Xác nhận mật khẩu sai');
        } else {
            count++;
        }

        if (email1.value === '') {
            showError(email1, 'Vui lòng nhập email');
        } else if (!isValidEmail(email1.value)) {
            showError(email1, 'Email không tồn tại');
        } else {
            showSuccess(email1);
            count1++;
        }
        if (password1.value === '') {
            showError(password1, 'Vui lòng nhập mật khẩu');
        } else {
            showSuccess(password1);
            count1++;
        }


    }


</script>
</body>
</html>