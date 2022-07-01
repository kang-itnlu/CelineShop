<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Products | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/shop.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>

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
                    <h2 class="title text-center">Sản phẩm</h2>
                    <!--Sort and filter-->
                    <div class="col-sm-12">
                        <div class="home-filter">
                            <span class="home-filter__label">
                            Sắp xếp theo
                            </span>
                            <button class="btn home-filter__btn">Phổ biến</button>
                            <button class="btn home-filter__btn btn--primary">Mới nhất</button>
                            <button class="btn home-filter__btn">Bán chạy</button>

                            <div class="select-input">
                                <span class="select-input__label">
                                Giá
                                </span>
                                <i class="select-input__icon fas fa-angle-down"></i>
                                <ul class="select-input__list">
                                    <li class="select-input__item">
                                        <a href="${pageContext.request.contextPath }/product/list?type=asc"  class="select-input__link">Giá: Thấp đến cao</a>
                                    </li>
                                    <li class="select-input__item">
                                        <a href="${pageContext.request.contextPath }/product/list?type=desc" class="select-input__link">Giá: Cao đến thấp</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div style="padding: 32px 0;"></div>
                    <c:forEach items="${productList}" var="p">
                        <c:url value="${p.image}" var="imgUrl"></c:url>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <div class="product-img">
                                                <img src="${imgUrl}" alt="" id="img__sp"/></div>
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
                                        <span class="home-product-item__sold">${p.soldQuantity}đã bán</span>
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
                    <ul class="pagination">
                        <c:if test="${currentPage != 1}">
                            <li class="page-item"><a class="page-link"
                                                     href="?page=${currentPage-1}">&laquo;</a>
                            </li>
                        </c:if>

                        <c:forEach begin="1" end="${numOfPages}" var="i">
                            <c:choose>
                                <c:when test="${currentPage eq i}">
                                    <li class="page-item active"><a class="page-link">
                                            ${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="?page=${i}">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <c:if test="${currentPage lt numOfPages}">
                            <li class="page-item"><a class="page-link"
                                                     href="?page=${currentPage+1}">&raquo;</a>
                            </li>
                        </c:if>
                    </ul>
                </div><!--features_items-->
            </div>
        </div>
    </div>
</section>

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<!--/Footer-->
<!--Chi tiết sản phẩm-->
<jsp:include page="/view/client/view/facebook_noti.jsp"></jsp:include>

<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script>
    $(".nav li").click(function () {
        if ($(".nav li").removeClass("active")) {
            $(this).removeClass("active");
        }
        $(this).addClass("active");
    });

</script>
<script src="${url}/js/product_detail.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
</body>
</html>