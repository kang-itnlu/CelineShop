<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 4/17/2022
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType= "text/html;charset=UTF-8" language= "java" %>
<%@ taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<c:url value= "/view/client/static" var= "url" ></c:url>
<html lang="en">

<head>

    <!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--====== Title ======-->
    <title>Céline Store</title>

    <!--====== Font awesome =======-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!--====== Favicon Icon ======-->

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="${url}/css/bootstrap4.min.css">

    <!--====== Animate css ======-->
    <link rel="stylesheet" href="${url}/css/animateLanding.css">

    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="${url}/css/magnific-popup.css">

    <!--====== Slick css ======-->
    <link rel="stylesheet" href="${url}/css/slick.css">

    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="${url}/css/LineIcons.css">

    <!--====== Default css ======-->
    <link rel="stylesheet" href="${url}/css/default.css">

    <!--====== Style css ======-->
    <link rel="stylesheet" href="${url}/css/landing.css">

    <!--====== Responsive css ======-->
    <link rel="stylesheet" href="${url}/css/responsive.css">
    <link href="${url}/css/all.min.css" rel="stylesheet">
    <link href="${url}/css/fontawesome.min.css" rel="stylesheet">
    <link href="${url}/css/fontawesome.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head>

<body>
<!--====== HEADER PART START ======-->

<header class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome">
                        <img src="${url}/images/home/logoStore.png" alt="Logo" style="width: 30%;">
                    </a> <!-- Logo -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="bar-icon"></span>
                        <span class="bar-icon"></span>
                        <span class="bar-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="nav" class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <i class="fas fa-phone-alt"></i>
                                +84342111202
                            </li>
                            <li class="nav-item">
                                <i class="far fa-envelope"></i>
                                celine_shop@gmail.com
                            </li>
                        </ul> <!-- navbar nav -->
                    </div>
                </nav> <!-- navbar -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</header>

<!--====== HEADER PART ENDS ======-->

<!--====== SLIDER PART START ======-->

<section id="home" class="slider-area pt-100">
    <div class="container-fluid position-relative">
        <div class="slider-active">
            <div class="single-slider">
                <div class="slider-bg">
                    <div class="row no-gutters align-items-center ">
                        <div class="col-lg-4 col-md-5">
                            <div class="slider-product-image d-none d-md-block">
                                <img src="${url}/images/shop/shirt/leventsPixel02.jpg" alt="Slider">
                                <div class="slider-discount-tag">
                                    <p>-50% <br> OFF</p>
                                </div>
                            </div> <!-- slider product image -->
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="slider-product-content">
                                <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s">Sale sập sàn
                                    50%</h1>
                                <p class="mb-25" data-animation="fadeInUp" data-delay="0.9s">Khuyến mãi giáng sinh -
                                    Sale off lên đến 50%. Khi mua hàng bạn còn có cơ hội nhận những phần quà hấp dẫn.
                                    Hãy đến với chúng tôi ngay thôi</p>
                                <a class="main-btn" href="${pageContext.request.contextPath }/welcome"
                                   data-animation="fadeInUp" data-delay="1.5s">Shop
                                    now <i class="lni-chevron-right"></i></a>
                            </div> <!-- slider product content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div> <!-- single slider -->

            <div class="single-slider">
                <div class="slider-bg">
                    <div class="row no-gutters align-items-center">
                        <div class="col-lg-4 col-md-5">
                            <div class="slider-product-image d-none d-md-block">
                                <img src="${url}/images/shop/pants/pantsBM.jpg" alt="Slider">
                                <div class="slider-discount-tag">
                                    <p>-10% <br> OFF</p>
                                </div>
                            </div> <!-- slider product image -->
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="slider-product-content">
                                <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s">Ưu đãi hấp
                                    dẫn</h1>
                                <p class="mb-25" data-animation="fadeInUp" data-delay="0.9s">Mua từ 3 sản phẩm trở lên
                                    bạn sẽ nhận được ưu đãi giảm 10% tổng hóa đơn. Còn chần chờ gì nữa, hãy đến mua sắm
                                    cùng chúng tôi</p>
                                <a class="main-btn" href="${pageContext.request.contextPath }/welcome"
                                   data-animation="fadeInUp" data-delay="1.5s">Shop
                                    now <i class="lni-chevron-right"></i></a>
                            </div> <!-- slider product content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div> <!-- single slider -->

            <div class="single-slider">
                <div class="slider-bg">
                    <div class="row no-gutters align-items-center">
                        <div class="col-lg-4 col-md-5">
                            <div class="slider-product-image d-none d-md-block">
                                <img src="${url}/images/shop/balo/balo7.jpg" alt="Slider">
                            </div> <!-- slider product image -->
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="slider-product-content">
                                <h1 class="slider-title mb-10" data-animation="fadeInUp" data-delay="0.3s">Cùng khám phá
                                    nào!!!</h1>
                                <a class="main-btn" href="${pageContext.request.contextPath }/welcome"
                                   data-animation="fadeInUp" data-delay="1.5s">Let's
                                    go<i class="lni-chevron-right"></i></a>
                            </div> <!-- slider product content -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- container -->
            </div> <!-- single slider -->
        </div> <!-- slider active -->
        <div class="slider-social">
            <div class="row justify-content-end">
                <div class="col-lg-7 col-md-6">
                    <ul class="social text-right">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-google"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div> <!-- container fluid -->
</section>

<!--====== SLIDER PART ENDS ======-->
<section id="information" class="text-center">
    <div class="row">
        <div class="col-sm-12">
            <h2>Đến với chúng tôi</h2>
        </div>
    </div>
    <div class="row row-3">
        <div class="col-sm-4 box-infor">
            <i class="fas fa-truck"></i>
            <p>Giao hàng trên toàn quốc. Miễn phí ship khi mua từ 5 sản phẩm</p>
        </div>
        <div class="col-sm-4 box-infor">
            <i class="fas fa-exchange-alt"></i>
            <p>Đổi trả hàng miễn phí trong vòng 7 ngày</p>
        </div>
        <div class="col-sm-4 box-infor">
            <i class="fas fa-id-card"></i>
            <p>Nhận nhiều ưu đãi hấp dẫn khi đăng kí thẻ thành viên</p>
        </div>
    </div>
</section>

<!--====== BACK TO TOP PART START ======-->

<a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>

<!--====== BACK TO TOP PART ENDS ======-->


<!--====== jquery js ======-->
<script src="${url}/js/modernizr-3.6.0.min.js"></script>
<script src="${url}/js/jquery-1.12.4.min.js"></script>

<!--====== Bootstrap js ======-->
<script src="${url}/js/bootstrap4.min.js"></script>


<!--====== Slick js ======-->
<script src="${url}/js/slick.min.js"></script>

<!--====== Magnific Popup js ======-->
<script src="${url}/js/jquery.magnific-popup.min.js"></script>


<!--====== nav js ======-->
<script src="${url}/js/jquery.nav.js"></script>

<!--====== Nice Number js ======-->
<script src="${url}/js/jquery.nice-number.min.js"></script>

<!--====== Main js ======-->
<script src="${url}/js/landing.js"></script>

</body>

</html>
