<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/29/2022
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alert = (String) request.getAttribute("alert");
%>
<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <!--Logo và login account...-->

        <div class="banner__header">
            <div class="row">
                <div>
                    <div id="countdown">
                        <h1>F <i class="fas fa-bolt"></i>ash sale</h1>
                        <div class="countdown-container">
                            <div class="cont-el days-c">
                                <p class="big-text" id="days">0</p>
                                <span>ngày</span>
                            </div>
                            <div class="cont-el hours-c">
                                <p class="big-text" id="hours">0</p>
                                <span>giờ</span>
                            </div>
                            <div class="cont-el mins-c">
                                <p class="big-text" id="mins">0</p>
                                <span>phút</span>
                            </div>
                            <div class="cont-el secondss-c">
                                <p class="big-text" id="seconds">0</p>
                                <span>giây</span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <input type="date" class="date" id="date" style="display:none;">
                    </div>
                </div>
            </div>
        </div>
<%--        <%--%>
<%--            if (alert != null) {--%>
<%--        %>--%>
<%--        <p class="alert alert-danger" role="alert">--%>
<%--            <%= alert %>--%>
<%--        </p>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
        <div class="middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="${pageContext.request.contextPath}/welcome" class="navbar__header-first">Trang
                                    Chủ</a>
                                </li>
                                <li><a href="${pageContext.request.contextPath }/product/list"
                                       class="navbar__header-first">Sản Phẩm</a></li>


                                <li><a href="${pageContext.request.contextPath }/blog"
                                       class="navbar__header-first">Blog</a>
                                </li>
                                <li><a href="${pageContext.request.contextPath }/contact" class="navbar__header-first">Liên
                                    Hệ</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="shop-menu pull-right col-sm-6">
                        <ul class="nav navbar-nav">
                            <li><a href="${pageContext.request.contextPath }/help" target="_blank" class="text"><i
                                    class="far fa-question-circle"></i> Trợ Giúp</a></li>
                            <li id="notify" class="text">
                                <i class="far fa-bell"></i>
                                <span class="header-notify text">Thông Báo</span>
                                <div class="header-notify-text">
                                    <img src="${url}/images/home/cuteoops.jpg" class="header-notify-text__img">
                                    <c:choose>
                                        <c:when test="${sessionScope.account.id==null}">
                                            <p>Đăng nhập để xem thông báo</p>
                                        </c:when>
                                        <c:otherwise>
                                            <p>Không có thông báo mới</p>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </li>
                            <li class="header__navbar-item header__navbar-user">

                                <c:url value="${sessionScope.account.avatar}"
                                       var="imgUrl"></c:url>
                                <c:choose>
                                    <c:when test="${sessionScope.account.username==null}">
                                        <a href="${pageContext.request.contextPath }/login"
                                           class="header__navbar-user-name text"
                                           style="display: contents;"><i class="fas fa-user"></i> Đăng nhập<i
                                                class="fas fa-chevron-down" style="padding-left: 6px;"></i></a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${pageContext.request.contextPath }/member/myAccount?id=${sessionScope.account.id}"
                                           class="header__navbar-user-name text"
                                           style="display: contents;"><img src="${imgUrl}"
                                                                           style="width:24px;height:24px;border-radius: 50%;"> ${sessionScope.account.username}<i
                                                class="fas fa-chevron-down" style="padding-left: 6px;"></i></a>
                                    </c:otherwise>
                                </c:choose>


                                <ul class="header__navbar-user-menu">
                                    <li class="header__navbar-user-item">
                                        <a href="${pageContext.request.contextPath }/member/myAccount?id=${sessionScope.account.id}"><i
                                                class="fas fa-user-alt"></i>Tài khoản của tôi</a>
                                    </li>
                                    <li class="header__navbar-user-item">
                                        <a href=""><i class="fas fa-cog"></i>Cài đặt</a>
                                    </li>
                                    <li class="header__navbar-user-item">
                                        <a href="${pageContext.request.contextPath }/member/cart"><i
                                                class="fas fa-receipt"></i>Đơn mua</a>
                                    </li>
                                    <li class="header__navbar-user-item header__navbar-user-item-separate">
                                        <a href="${pageContext.request.contextPath }/logout"><i
                                                class="fas fa-sign-out-alt"></i>Đăng xuất</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#" class="text"> <i class="fab fa-instagram"></i>Kết Nối </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="${pageContext.request.contextPath }/welcome"><img
                                src="${url}/images/home/celine_login.png" class="logo-shop"
                                alt=""/></a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="header__search pull-right">
                        <form action="${pageContext.request.contextPath }/product/search" method="get">
                            <div class="header__search-input-wrap">

                                <input oninput="searchByName(this)" type="text" class="header__search-input" placeholder="BỘ SƯU TẬP CUỐI NĂM"
                                       name="name">
<%--                                <!--Lịch sử tìm kiếm-->--%>
<%--                                <div class="header__search-history">--%>
<%--                                    <h3 class="header__search-history-heading">--%>
<%--                                        Lịch sử tìm kiếm--%>
<%--                                    </h3>--%>
<%--                                    <ul class="header__search-history-list">--%>
<%--                                        <li class="header__search-history-item">--%>
<%--                                            <a href="">Áo thun croptop</a>--%>
<%--                                        </li>--%>
<%--                                        <li class="header__search-history-item">--%>
<%--                                            <a href="">Quần leggy</a>--%>
<%--                                        </li>--%>
<%--                                        <li class="header__search-history-item">--%>
<%--                                            <a href="">Balo thỏ</a>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
                                <button class="header__search-btn">
                                    <i class="header__search-btn-icon fas fa-search"></i>
                                </button>

                            </div>
                        </form>
                    </div>
                </div>
                <div class="cart col-sm-2 ">

                    <ul class="list-inline shop-badge badge-lists badge-icons pull-right header__nav-cart ">
                        <li class="header__nav-item header__nav-item-has-product">
                            <a href="${pageContext.request.contextPath }/member/cart" class="header__nav-item-link">
                                <i class="fas fa-shopping-cart"><c:set var="count" value="${0}"/></i>
                            </a>
                            <c:forEach items="${sessionScope.cart}" var="map">
                                <c:set var="count" value="${count + 1}"/>
                            </c:forEach>
                            <span class="badge badge-sea rounded-x">${count }</span>

                            <c:choose>
                                <c:when test="${sessionScope.account.avatar==null}">
                                    <div class="header__no-cart">
                                        <img src="${url}/images/home/no-cart.png" class="img__no-cart">
                                        <div class="no__cart-text">
                                            <span>Đăng nhập để xem giỏ hàng</span>
                                        </div>

                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="header__has-cart">
                                        <ul class="list-unstyled badge-open mCustomScrollbar header__cart-list"
                                            data-mcs-theme="minimal-dark" id="contentCart">
                                            <c:forEach items="${sessionScope.cart}" var="map">
                                                <li class="header__cart-item header__cart-view">
                                                    <c:url
                                                        value="${map.value.product.image}"
                                                        var="imgUrl"></c:url><a class="header__cart-link"
                                                                                href="${pageContext.request.contextPath}/product/detail?id=${map.value.product.id}">
                                                    <img src="${imgUrl}" alt="" width="10"
                                                         height="20" class="header__cart-img">
                                                    <div class="overflow-h header__cart-name">
                                                        <span>${map.value.product.name }</span>
                                                        <small>${map.value.quantity }
                                                            * ${map.value.product.salePrice }đ </small>
                                                    </div>
                                                    <a
                                                            href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id} ">
                                                        <button
                                                                type="button" class="close">×
                                                        </button>
                                                    </a>

                                                </a>
                                                </li>
                                            </c:forEach>

                                                <%--                                &lt;%&ndash;                                <div class="row">&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                    <div class="col-xs-6">&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                        <a href="${pageContext.request.contextPath}/member/cart"&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                           class="btn-u btn-brd btn-brd-hover btn-u-sea-shop btn-block">View&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                            Cart</a>&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                    </div>&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                    <div class="col-xs-6">&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                        <a href="${pageContext.request.contextPath}/member/order"&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                           class="btn-u btn-u-sea-shop btn-block">Checkout</a>&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                    </div>&ndash;%&gt;--%>
                                                <%--                                &lt;%&ndash;                                </div>&ndash;%&gt;--%>
                                        </ul>
                                        <footer class="header__cart-footer">
                                            <a href="${pageContext.request.contextPath }/member/cart"
                                               class="header__cart-footer-btn">Xem tất cả</a>
                                        </footer>
                                    </div>
                                </c:otherwise>
                            </c:choose>


                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header>
<!--/header-->
<script src="${url}/js/jquery.js"></script>

<script>
    $(document).ready(
        function () {
            $(".navbar__header-first").click(
                function () {
                    $(this).addClass("active").siblings().removeClass("active");
                }
            );
        });
</script>
<script>

    let newYears = '12 August 2022';
    const dayEl = document.getElementById('days')
    const hourEl = document.getElementById('hours')
    const minsEl = document.getElementById('mins')
    const secondeEl = document.getElementById('seconds')
    const changeDate = document.getElementById('date')
    changeDate.addEventListener('change', myChange)

    function countdown() {
        const newYearsDate = new Date(newYears)
        const currentDate = new Date()
        const totalsecond = (newYearsDate - currentDate) / 1000
        const days = Math.floor(totalsecond / 3600 / 24)
        const hours = Math.floor(totalsecond / 3600) % 24
        const minutes = Math.floor(totalsecond / 60) % 60
        const second = Math.floor(totalsecond % 60)
        dayEl.innerHTML = time(days);
        hourEl.innerHTML = time(hours);
        minsEl.innerHTML = time(minutes);
        secondeEl.innerHTML = time(second);
    }

    function time(time) {
        if (time < 10) {
            return `0${time}`
        } else {
            return time
        }
    }

    function myChange() {
        const change = document.getElementById('date').value
        newYears = change
        console.log(change)
    }

    //countdown ();
    setInterval(countdown, 1000);
</script>