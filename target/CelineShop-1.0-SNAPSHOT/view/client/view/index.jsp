<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/21/2022
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<c:set var="img__sp" value="${img_sp}"/>
<c:set var="product-img" value="${product-img}"/>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="${url}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${url}/css/owl.theme.default.min.css">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
    <!--[if lt IE 9]>
    <![endif]-->
</head><!--/head-->

<body>

<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<jsp:include page="/view/client/view/slider.jsp"></jsp:include>


<section>
    <div class="container">
        <div class="row">
            <jsp:include page="/view/client/view/left-bar.jsp"></jsp:include>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Sản phẩm mới</h2>
                    <c:forEach items="${pwelcome}" var="p">
                        <c:url value="${p.image}" var="imgUrl"></c:url>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <div id=${product-img}>
                                                <img src="${imgUrl}" alt="" id=${img_sp}/></div>
                                        <h4 class="home-product-item__name">${p.name}</h4>
                                    </div>
                                    <div class="home-product-item__price">
                                        <span class="home-product-item__price-old">${p.price}đ</span>
                                        <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                    </div>
                                    <div class="home-product-item__action">
											<span class="home-product-item__like home-product-item__like--liked">
												<i class="home-product-item__like-icon-empty far fa-heart"></i>
                                                 <i class="home-product-item__like-icon-fill fas fa-heart"></i>
											</span>

                                        <div class="home-product-item__rating">
                                            <c:forEach begin="1" end="${p.rating}" var="i">
                                                <i class="home-product-item__star--gold fas fa-star"></i>
                                            </c:forEach>
                                        </div>
                                        <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                    </div>
                                    <div class="home-product-item__origin">
                                        <span class="home-product-item__brand">${p.brand}</span>
                                        <span class="home-product-item__origin-name">${p.manufacturer}</span>
                                    </div>
                                </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="category-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tshirt" data-toggle="tab">Gợi ý hôm nay</a></li>
                            <li><a href="#blazers" data-toggle="tab">Tìm kiếm nhiều</a></li>
                            <li><a href="#sunglass" data-toggle="tab">Sale sập sàn</a></li>
                            <li><a href="#kids" data-toggle="tab">Freeship extra</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="tshirt">
                            <c:forEach items="${ptoday }" var="p">
                                <c:url value="${p.image}" var="imgUrl"></c:url>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <div id="${product-img}">

                                                        <img src="${imgUrl}" alt="" id="${img_sp}"/></div>
                                                <h4 class="home-product-item__name">${p.name}</h4>
                                            </div>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">${p.price}đ</span>
                                                <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                            </div>
                                            <div class="home-product-item__action">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>
                                                <div class="home-product-item__rating">
                                                    <c:forEach begin="1" end="${p.rating}">
                                                        <i class="home-product-item__star--gold fas fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">${p.brand}</span>
                                                <span class="home-product-item__origin-name">${p.manufacturer}</span>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="tab-pane fade" id="blazers">
                            <c:forEach items="${psearch }" var="p">
                                <c:url value="${p.image}" var="imgUrl"></c:url>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <div id="${product-img}">

                                                        <img src="${imgUrl}" alt="" id="${img_sp}"/></div>
                                                <h4 class="home-product-item__name">${p.name}</h4>
                                            </div>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">${p.price}đ</span>
                                                <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                            </div>
                                            <div class="home-product-item__action">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>
                                                <div class="home-product-item__rating">
                                                    <c:forEach begin="1" end="${p.rating}">
                                                        <i class="home-product-item__star--gold fas fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">${p.brand}</span>
                                                <span class="home-product-item__origin-name">${p.manufacturer}</span>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="tab-pane fade" id="sunglass">
                            <c:forEach items="${psale }" var="p">
                                <c:url value="${p.image}" var="imgUrl"></c:url>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">

                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <div id="${product-img}">
                                                        <img src="${imgUrl}" alt="" id="${img_sp}"/></div>
                                                <h4 class="home-product-item__name">${p.name}</h4>
                                            </div>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">${p.price}đ</span>
                                                <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                            </div>
                                            <div class="home-product-item__action">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>
                                                <div class="home-product-item__rating">
                                                    <c:forEach begin="1" end="${p.rating}">
                                                        <i class="home-product-item__star--gold fas fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">${p.brand}</span>
                                                <span class="home-product-item__origin-name">${p.manufacturer}c</span>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="kids">
                            <c:forEach items="${pfreeship }" var="p">
                                <c:url value="${p.image}" var="imgUrl"></c:url>
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <div id="${product-img}">
                                                        <img src="${imgUrl}" alt="" id="${img_sp}"/></div>
                                                <h4 class="home-product-item__name">${p.name}</h4>
                                            </div>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">${p.price}đ</span>
                                                <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                            </div>
                                            <div class="home-product-item__action">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>
                                                <div class="home-product-item__rating">
                                                    <c:forEach begin="1" end="${p.rating}">
                                                        <i class="home-product-item__star--gold fas fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">${p.brand}</span>
                                                <span class="home-product-item__origin-name">${p.manufacturer}</span>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div><!--/category-tab-->

                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">Bán chạy tuần qua</h2>
<div class="row">
                    <div id="recommended">
                        <%--            <div class="carousel-inner">--%>
                        <%--              <div class="carousel-item active">--%>
                        <div class="owl-carousel">
                            <c:forEach items="${photWeek }" var="p" varStatus="status">
                                <c:url value="${p.image}" var="imgUrl"></c:url>


                                <div class="col-sm-12">
                                    <div class="product-image-wrapper">
                                        <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <div id="${product-img}">
                                                        <img src="${imgUrl}" alt="" id="${img_sp}"/></div>
                                                <h4 class="home-product-item__name">${p.name}</h4>
                                            </div>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old">${p.price}đ</span>
                                                <span class="home-product-item__price-current">${p.salePrice}đ</span>
                                            </div>
                                            <div class="home-product-item__action">
														<span class="home-product-item__like home-product-item__like--liked">
															<i class="home-product-item__like-icon-empty far fa-heart"></i>
															<i class="home-product-item__like-icon-fill fas fa-heart"></i>
														</span>
                                                <div class="home-product-item__rating">
                                                    <c:forEach begin="1" end="${p.rating}">
                                                        <i class="home-product-item__star--gold fas fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <span class="home-product-item__sold">${p.soldQuantity} đã bán</span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">${p.brand}</span>
                                                <span class="home-product-item__origin-name">${p.manufacturer}</span>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    </div>
                </div><!--/recommended_items-->

            </div>
        </div>
    </div>
</section>

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>

<jsp:include page="/view/client/view/facebook_noti.jsp"></jsp:include>
<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
<script src="${url}/js/html5shiv.js"></script>
<script src="${url}/js/respond.min.js"></script>
<script src="${url}/js/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 10,
            items: 5
        });
    });
    $(document).ready(function see() {
        $('img').click(function () {

            document.getElementById("modal").style.display = 'flex';
            document.getElementById("modal").style.justifyContent = 'center';

        });
    });

</script>
</body>
</html>
