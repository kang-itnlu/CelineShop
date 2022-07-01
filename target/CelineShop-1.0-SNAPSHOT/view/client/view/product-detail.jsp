<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 4/2/2022
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<c:url value="${product.image}" var="imgUrl"></c:url>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Product-Detail</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/product-detail.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <link rel="stylesheet" href="${url}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${url}/css/owl.theme.default.min.css">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head>
<body>
<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<section>
    <nav role="navigation" class="bread">
        <ul class="breadcrumb" style="background-color:#eef9f9">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/welcome">Céline</a></li>
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/product/list">Sản phẩm</a></li>
            <li class="breadcrumb-item active" aria-current="page">${product.name}</li>
        </ul>
    </nav>
    <div id="container" style="display: block;">
        <div id="container__body">
            <div class="image-gallery" style="padding-right: 24px;">
                <aside class="thumbnails">
                    <div href="" class="selected thumbnail" data-big="${imgUrl}">
                        <div class="thumbnail-image" style="background-image: url(${imgUrl})"></div>
                    </div>
                    <c:forEach items="${moreImg}" var="img">
                        <c:url value="${img}" var="imgMore"></c:url>
                        <div href="" class="thumbnail" data-big="${imgMore}">
                            <div class="thumbnail-image"
                                 style="background-image: url(${imgMore})"></div>
                        </div>
                    </c:forEach>
                </aside>

                <main class="primary " style="background-image: url(${imgUrl});"></main>
            </div>
            <div class="product__infor">

                <form method="post" action="<c:url value="/member/cart/add"></c:url>">
                    <input type="text" value="${product.id }" name="pId" hidden="">
                    <div class="product__detail">
                        <h2>${product.name}</h2>
                        <div class="product__item-star">
                            <div class="home-product-item__rating">
                                <c:forEach begin="1" end="${product.rating}">
                                    <i class="home-product-item__star--gold fas fa-star"></i>
                                </c:forEach>
                            </div>
                            <div class="product__item-star-sold">
                                <p>${product.soldQuantity}</p>
                                <p>Đã bán</p>
                            </div>
                        </div>
                        <div class="product__brand">
                            <p class="first">Thương hiệu: </p>
                            <p>${product.brand}</p>
                        </div>
                        <div class="home-product-item__price">
                            <span class="home-product-item__price-old">${product.price}đ</span>
                            <span class="home-product-item__price-current">${product.salePrice}đ</span>
                        </div>
                        <div class="product__number">
                            <p>Số lượng:</p>

                            <div class="product__number-input">
                                <input onclick="var result = document.getElementById('quantity');
                    var qty = result.value; if( !isNaN(qty) & qty > 1 ) result.value--;return false;" type='button'
                                       value='-' style="padding: 0 5px; border-radius: 4px; border: 1px solid gray;"/>
                                <input id='quantity' min='1' name='quantity' type='text' value='1'
                                       style="text-align:center;"/>
                                <input onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"
                                       type='button' value='+'
                                       style="padding: 0 5px; border-radius: 4px;border: 1px solid gray;"/>
                            </div>
                        </div>
                        <div id="product__size">
                            Size:
                            <input type="radio" id="sizeS" name="size" value="S" style="margin-left:12px;">
                            <label for="sizeS" style="margin-right:12px;">S</label><br>
                            <input type="radio" id="sizeM" name="size" value="M" >
                            <label for="sizeM" style="margin-right:12px;">M</label><br>
                             <input type="radio" id="sizeL" name="size" value="L">
                            <label for="sizeL" style="margin-right:12px;">L</label>
                            <input type="radio" id="sizeXL" name="size" value="XL" >
                            <label for="sizeXL" >XL</label>
                        </div>
                        <div class="product__buy">
                            <div class="add__to-cart">
                                <button class="add-cart" type="submit" >
                                    <i class="fas fa-cart-plus"></i>
                                    Thêm Vào Giỏ Hàng
                                </button>
                            </div>
<%--                            <div class="add__to-checkout">--%>

<%--                                <button class="add-checkout">--%>
<%--                                   Mua Ngay--%>
<%--                                </button>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                </form>
                <div id="product__describe">
                    <div id="product__describe-icon" style="color:teal; cursor: pointer;"><i
                            class="fas fa-angle-right"></i>MÔ TẢ
                    </div>
                    <div id="product__describe-text" style="display: none;
                    -webkit-box-orient: vertical;
                    -webkit-line-clamp: 2;
                    text-align: left;">
                        <p>${product.des}</p>
                    </div>
                </div>
                <div id="product__detail-more">
                    <div id="product__describe-icon1" style="color:teal;cursor: pointer;"><i
                            class="fas fa-angle-right"></i>CHI TIẾT SẢN PHẨM
                    </div>
                    <div id="product__detail-more-text" style="display: none;">
                        <div class="product__detail-more-text1">
                            <img src="${url}/images/home/done.png" alt="" style="width: 20px;height: 20px;">
                            <span style="
                    -webkit-box-orient: vertical;
                    -webkit-line-clamp: 3;
                    text-align: left;width:600px;">${product.product_detail}</span>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <%--        <c:set var="numComment" value="${0}"/>--%>
        <%--        <c:forEach--%>
        <%--                items="${listComment}" var="map">--%>
        <%--            <c:set var="numComment"--%>
        <%--                   value="${numComment + 1}"/>--%>
        <%--        </c:forEach>--%>
        <div id="product__comment">
            <div id="product__comment-icon2" style="color:#efac92;cursor: pointer;padding-bottom: 12px;font-size: 18px;
    font-weight: 700;">ĐÁNH GIÁ SẢN PHẨM
            </div>

            <div id="product__comment-text">
                <c:forEach items="${listComment}" var="comment">
                    <div class="product__comment-text1">
                        <div class="product__comment-text1-cmt">
                            <c:url value="${comment.avatar}"
                                   var="imgUrl"></c:url>
                            <img src="${imgUrl}" alt=""
                                 style="width: 20px;height: 20px;">
                            <p>${comment.username}</p>
                        </div>
                        <div class="home-product-item__rating"
                             style="float: left; margin-left: -12px;padding-right: 12px;">
                            <c:forEach begin="1" end="${comment.rating}">
                                <i class="home-product-item__star--gold fas fa-star"></i>
                            </c:forEach>

                        </div>
                        <p>${comment.content}</p>
                        <p style="font-size: 8px;">${comment.time}</p>
                    </div>
                </c:forEach>
                <div style="margin: auto;width: 50%;">
                    <form action="${pageContext.request.contextPath}/comment?id=${product.id}" method="post">
                        <div class="rating">
                            <input type="radio" id="star5" name="rating" value="5"/>
                            <label class="star" for="star5" title="Awesome" aria-hidden="true"></label>
                            <input type="radio" id="star4" name="rating" value="4"/>
                            <label class="star" for="star4" title="Great" aria-hidden="true"></label>
                            <input type="radio" id="star3" name="rating" value="3"/>
                            <label class="star" for="star3" title="Very good" aria-hidden="true"></label>
                            <input type="radio" id="star2" name="rating" value="2"/>
                            <label class="star" for="star2" title="Good" aria-hidden="true"></label>
                            <input type="radio" id="star1" name="rating" value="1"/>
                            <label class="star" for="star1" title="Bad" aria-hidden="true"></label>
                        </div>

                        <div class="row">
                            <div class="product__comment-input col-md-12 form-group mb-5">


                                <textarea class="form-control ckeditor" name="message1" id="message1" cols="50" rows="2"
                                          placeholder="Bình luận..." required></textarea>
                                <input type="submit" id="commentButton" class="btn product__comment-btn"
                                       value="Bình luận"></input>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="recommend-more">
        <h2 class="title text-center">Sản phẩm gợi ý</h2>
        <div id="con">
            <div class="owl-carousel">
                <c:forEach items="${categories}" var="p">
                    <c:url value="${p.image}" var="imgUrl2"></c:url>
                    <div class="col-sm-12">
                        <div class="product-image-wrapper">
                            <a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <div id="product-img">

                                            <img src="${imgUrl2}" alt="" id="img__sp"/>
                                    </div>

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
</section>
<jsp:include page="/view/client/view/footer.jsp"></jsp:include>

<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script type='text/javascript' src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
<script src="${url}/js/html5shiv.js"></script>
<script src="${url}/js/respond.min.js"></script>
<script src="${url}/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/CKLibraries/ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace('message1', {width: 1000, height: 50});
</script>
<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 10,
            items: 5
        });
    });
    $('.thumbnail').on('click', function () {
        let clicked = $(this);
        let newSelection = clicked.data('big');
        let $img = $('.primary').css("background-image", "url(" + newSelection + ")");
        clicked.parent().find('.thumbnail').removeClass('selected');
        clicked.addClass('selected');
        $('.primary').empty().append($img.hide().fadeIn('slow'));
    });
</script>
<script>
    let i, j, k;
    i = 0;
    j = 0;
    k = 0;
    $(document).ready(function () {
        $('#product__describe').click(function () {
            $('#product__describe-text').toggle();

            i++;
            if (i % 2 !== 0) {
                $('#product__describe-icon').replaceWith('<div id="product__describe-icon" style="color:teal; cursor: pointer;"><i class="fas fa-angle-down"></i>MÔ TẢ</div>');
            } else $("#product__describe-icon").replaceWith('<div id="product__describe-icon" style="color:teal; cursor: pointer;"><i class="fas fa-angle-right"></i>MÔ TẢ</div>');

        });
        $("#product__detail-more").click(function () {
            $("#product__detail-more-text").toggle();
            j++;
            if (j % 2 !== 0) {
                $("#product__describe-icon1").replaceWith('<div id="product__describe-icon1" style="color:teal; cursor: pointer;"><i class="fas fa-angle-down"></i>CHI TIẾT SẢN PHẨM</div>');
            } else $("#product__describe-icon1").replaceWith('<div id="product__describe-icon1" style="color:teal; cursor: pointer;"><i class="fas fa-angle-right"></i>CHI TIẾT SẢN PHẨM</div>');
        });
    });

    $(document).ready(
        function () {
            $(".product__size-S").click(
                function () {
                    $(this).addClass("active").siblings().removeClass("active");
                }
            );
        });
</script>
</body>
</html>
