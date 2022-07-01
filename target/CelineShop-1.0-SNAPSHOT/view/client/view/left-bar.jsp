<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/29/2022
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Danh mục</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
            <div class="panel panel-default">
                <div class="panel-heading  more-button">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" style="cursor: pointer;">
                            Thương hiệu thời trang
                            <span class="badge pull-right"><i class="fas fa-plus"></i></span>
                        </a>

                    </h4>

                </div>
                <div id="sportswear" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath }/productSearchByBrand?brands=Hades">Hades </a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/productSearchByBrand?brands=Loren">Loren </a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/productSearchByBrand?brands=Venus">Venus </a>
                            </li>
                            <li><a href="${pageContext.request.contextPath }/productSearchByBrand?brands=Pearl">Pearl</a></li>
                            <li><a href="${pageContext.request.contextPath }/productSearchByBrand?brands=Tote">Tote </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading more-button1">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" style="cursor: pointer;">

                            Thời trang cho nam
                            <span class="badge pull-right"><i class="fas fa-plus"></i></span>
                        </a>
                    </h4>
                </div>
                <div id="mens" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath }/product/detail?cate_id=16">Thời trang
                                theo mùa</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=17">Thời trang tối
                                giản</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=18">Thời trang
                                Vintage</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=19">Thời trang
                                lịch lãm</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=20">Thời trang
                                công sở</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=21">Thời trang
                                thường ngày</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading more-button2">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" style="cursor: pointer;">
                            <span class="badge pull-right"><i class="fas fa-plus"></i></span>
                            Thời trang cho nữ
                        </a>
                    </h4>
                </div>
                <div id="womens" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=23">Thời trang
                                công sở</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=24">Thời trang
                                Vintage</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=25">Thời trang du
                                mục</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=26">Thời trang cổ
                                điển</a></li>
                            <li><a href="${pageContext.request.contextPath }/product/category?cate_id=27">Thời trang
                                dark-wear</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="${pageContext.request.contextPath }/product/category?cate_id=28">Túi
                        xách</a></h4>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><a href="${pageContext.request.contextPath }/product/category?cate_id=29">Phụ
                        kiện</a></h4>
                </div>
            </div>
        </div><!--/category-products-->

        <div class="filter_products"><!--filter_products-->
            <h2>Bộ lọc tìm kiếm</h2>
            <form action="${pageContext.request.contextPath }/productSearchByPrice" method="post">
                <div class="filter_products-brand">
                    <div class="filter_products-header">Thương Hiệu</div>
                    <div class="filter_products-father-list">

                        <div class="filter_product-son">
                            <input type="checkbox" class="checkbox-filter" name="brands" value="Hades">
                            <label class="brand-name">Hades</label>
                        </div>
                        <div class="filter_product-son">
                            <input type="checkbox" class="checkbox-filter" name="brands" value="Loren">
                            <label class="brand-name">Loren</label>
                        </div>
                        <div class="filter_product-son">
                            <input type="checkbox" class="checkbox-filter" name="brands" value="Venus">
                            <label class="brand-name">Venus</label>
                        </div>
                        <div class="filter_product-son">
                            <input type="checkbox" class="checkbox-filter" name="brands" value="Pearl">
                            <label class="brand-name">Pearl</label>
                        </div>
                        <div class="filter_product-son">
                            <input type="checkbox" class="checkbox-filter" name="brands" value="Tote">
                            <label class="brand-name">Tote</label>
                        </div>
                        <div class="filter_products-more">Thêm
                            <i class="fas fa-angle-down"></i>
                        </div>

                    </div>
                </div>
                <!--Đường kẻ ngang-->
                <div class="line"></div>
                <!--Lọc giá-->
                <div class="filter_products-price-range">
                    <div class="filter_products-price-range-header">Khoảng giá</div>
                    <div class="filter_products-price-range-input">
                        <input type="text" maxlength="13" class="filter-price-range-filter__input" placeholder="₫ TỪ"
                               value="" name="priceFrom">
                        <div class="filter-price-range-filter__range-line"></div>
                        <input type="text" maxlength="13" class="filter-price-range-filter__input" placeholder="₫ ĐẾN"
                               value="" name="priceTo">
                    </div>
                    <input type="submit" class="filter-button-solid" style="background-color: #efac92;"
                           value="ÁP DỤNG"></input>
                </div>
            </form>
            <!--Theo đánh giá-->
            <div class="filter_product-rating">
                <div class="filter_product-rating-header">Đánh giá</div>
                <div class="filter_product-rating-star">
                    <a class="filter_product-rating-5star star" href="${pageContext.request.contextPath}/searchByRating?rating=5">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </a>
                    <br>
                    <a class="filter_product-rating-4star star" href="${pageContext.request.contextPath}/searchByRating?rating=4" style="color:#333;">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        trở lên
                    </a>
                    <br>
                    <a class="filter_product-rating-3star star" href="${pageContext.request.contextPath}/searchByRating?rating=3" style="color:#333;">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        trở lên
                    </a>
                    <br>
                    <a class="filter_product-rating-2star star" href="${pageContext.request.contextPath}/searchByRating?rating=2" style="color:#333;">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        trở lên
                    </a>
                    <br>
                    <a class="filter_product-rating-1star star" href="${pageContext.request.contextPath}/searchByRating?rating=1" style="color:#333;">
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        trở lên
                    </a>
                </div>
            </div>
            <!--Shipping-->
            <div class="filter_products-ship">
                <div class="filter_products-ship-header">Dịch vụ & khuyến mãi</div>
                <div class="filter_products-ship-father">
                    <div class="filter_product-son">
                        <input type="checkbox" class="checkbox-filter" name="brands">
                        <label class="brand-name">Freeship Xtra</label>
                    </div>
                    <div class="filter_product-son">
                        <input type="checkbox" class="checkbox-filter" name="brands">
                        <label class="brand-name">Đang giảm giá</label>
                    </div>
                    <div class="filter_product-son">
                        <input type="checkbox" class="checkbox-filter" name="brands">
                        <label class="brand-name">Miễn phí vận chuyển</label>
                    </div>
                    <div class="filter_product-son">
                        <input type="checkbox" class="checkbox-filter" name="brands">
                        <label class="brand-name">Hàng có sẵn</label>
                    </div>
                    <div class="filter_products-more">Thêm
                        <i class="fas fa-angle-down"></i>
                    </div>
                </div>
            </div>
            <button class="shop-button-solid" style="background-color: #efac92;"><p>XÓA TẤT CẢ</p></button>
        </div><!--/filter_products-->

        <div class="shipping text-center"><!--shipping-->
            <img src="${url}/images/home/shipping.jpg">
            <img src="${url}/images/home/sale50.jpg" alt="" class="img-sale50"/>
        </div><!--/shipping-->

    </div>
</div>
<script src="${url}/js/jquery.js"></script>
<script>
    $(document).ready(function () {
        $(".more-button").on("click", function () {
            if ($(this).hasClass("active")) {
                $(this).removeClass("active");
                $(this)
                    .siblings("#sportswear")
                    .slideUp(200);
                $(".more-button > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
            } else {
                $(".more-button > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
                $(this)
                    .find("i")
                    .removeClass("fa-plus")
                    .addClass("fa-minus");
                $(".more-button > h4 > a > span i").removeClass("active");
                $(this).addClass("active");
                $("#sportswear").slideUp(200);
                $(this)
                    .siblings("#sportswear")
                    .slideDown(200);
            }
        });
        $(".more-button1").on("click", function () {
            if ($(this).hasClass("active")) {
                $(this).removeClass("active");
                $(this)
                    .siblings("#mens")
                    .slideUp(200);
                $(".more-button1 > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
            } else {
                $(".more-button1 > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
                $(this)
                    .find("i")
                    .removeClass("fa-plus")
                    .addClass("fa-minus");
                $(".more-button1 > h4 > a > span i").removeClass("active");
                $(this).addClass("active");
                $("#mens").slideUp(200);
                $(this)
                    .siblings("#mens")
                    .slideDown(200);
            }
        });
        $(".more-button2").on("click", function () {
            if ($(this).hasClass("active")) {
                $(this).removeClass("active");
                $(this)
                    .siblings("#womens")
                    .slideUp(200);
                $(".more-button2 > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
            } else {
                $(".more-button2 > h4 > a > span i")
                    .removeClass("fa-minus")
                    .addClass("fa-plus");
                $(this)
                    .find("i")
                    .removeClass("fa-plus")
                    .addClass("fa-minus");
                $(".more-button2 > h4 > a > span i").removeClass("active");
                $(this).addClass("active");
                $("#womens").slideUp(200);
                $(this)
                    .siblings("#womens")
                    .slideDown(200);
            }
        });
    });

</script>
