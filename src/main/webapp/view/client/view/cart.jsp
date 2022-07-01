<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 4/17/2022
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<c:set var="numProduct" value="${0}"/>
<c:forEach
        items="${sessionScope.cart}" var="map">
    <c:set var="numProduct"
           value="${numProduct + 1}"/>
</c:forEach>
<%
    String alert = (String) request.getAttribute("alert");
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/cart.css" rel="stylesheet">
    <link href="${url}/css/checkout.css" rel="stylesheet">
    <link href="${url}/css/account.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
    <!--[if lt IE 9]>

    <![endif]-->
</head><!--/head-->

<body>
<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath }/welcome">Home</a></li>
                <li class="active">Shopping Cart</li>
            </ol>
        </div>
        <%
            if (alert != null) {
        %>
        <p class="alert alert-danger" role="alert">
            <%= alert %>
        </p>
        <%
            }
        %>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">
                        <input type="checkbox" class="checkbox-filter" name="brands">
                        Tất cả (${numProduct} sản phẩm)
                    </td>
                    <td class="description">Tên sản phẩm</td>
                    <td class="price">Size</td>
                    <td class="price">Đơn giá</td>
                    <td class="quantity">Số lượng</td>
                    <td class="total">Thành tiền</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.cart}" var="map">
                    <tr>
                        <c:url value="${map.value.product.image }"
                               var="imgUrl"></c:url>
                        <td class="cart_product">
                            <input type="checkbox" class="checkbox-filter" name="brands">
                            <a href=""><img src="${imgUrl}" alt=""></a>
                        </td>
                        <td class="cart_description">
                            <h4><a href="">${map.value.product.name}</a></h4>
                        </td>
                        <td class="cart_price">
                            <p>${map.value.size}</p>
                        </td>
                        <td class="cart_price">
                            <p>${map.value.product.salePrice}đ</p>
                        </td>
                        <td class="cart_quantity">
                                ${map.value.quantity}
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">${map.value.product.salePrice * map.value.quantity }đ</p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete"
                               href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id}"><i
                                    class="fa fa-times"></i></a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->

<section id="do_action">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="payment__type">
                    <div class="payment__type-left">Phương thức thanh toán</div>
                    <div class="payment__type-right">
                        <p>Thanh toán khi nhận hàng</p>
                        <div class="payment__type-right-change">
                            <div type="button" class="launch" data-toggle="modal" data-target="#staticBackdrop">THAY ĐỔI
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false"
                                 tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="text-right"><i class="fas fa-times-circle text-close"
                                                                       data-dismiss="modal"></i></div>
                                            <div class="tabs mt-3">
                                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                    <li class="nav-item" role="presentation"><a class="nav-link active"
                                                                                                id="visa-tab"
                                                                                                data-toggle="tab"
                                                                                                href="#visa" role="tab"
                                                                                                aria-controls="visa"
                                                                                                aria-selected="true">
                                                        <img src="${url}/images/home/visa.jpg" width="80"> </a></li>
                                                    <li class="nav-item" role="presentation"><a class="nav-link"
                                                                                                id="paypal-tab"
                                                                                                data-toggle="tab"
                                                                                                href="#paypal"
                                                                                                role="tab"
                                                                                                aria-controls="paypal"
                                                                                                aria-selected="false">
                                                        <img src="${url}/images/home/Paypal.png" width="80"> </a></li>
                                                </ul>
                                                <div class="tab-content" id="myTabContent">
                                                    <div class="tab-pane fade" id="visa" role="tabpanel"
                                                         aria-labelledby="visa-tab">
                                                        <div class="mt-4 mx-4">
                                                            <div class="text-center">
                                                                <h5>Credit card</h5>
                                                            </div>
                                                            <div class="form mt-3">
                                                                <div class="inputbox"><input type="text" name="name"
                                                                                             class="form-control"
                                                                                             required="required"> <span>Cardholder Name</span>
                                                                </div>
                                                                <div class="inputbox"><input type="text" name="name"
                                                                                             min="1" max="999"
                                                                                             class="form-control"
                                                                                             required="required"> <span>Card Number</span>
                                                                    <i class="fa fa-eye"></i></div>
                                                                <div class="d-flex flex-row">
                                                                    <div class="inputbox"><input type="text" name="name"
                                                                                                 min="1" max="999"
                                                                                                 class="form-control"
                                                                                                 required="required">
                                                                        <span>Expiration Date</span></div>
                                                                    <div class="inputbox"><input type="text" name="name"
                                                                                                 min="1" max="999"
                                                                                                 class="form-control"
                                                                                                 required="required">
                                                                        <span>CVV</span></div>
                                                                </div>
                                                                <div class="px-5 pay">
                                                                    <button class="btn btn-success btn-block">Add card
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade  show active" id="paypal" role="tabpanel"
                                                         aria-labelledby="paypal-tab">
                                                        <div class="px-5 mt-5">
                                                            <div class="inputbox"><input type="text" name="name"
                                                                                         class="form-control"
                                                                                         required="required"> <span>Paypal Email Address</span>
                                                            </div>
                                                            <div class="pay px-5">
                                                                <button class="btn btn-primary btn-block">Add paypal
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <form action="${pageContext.request.contextPath}/member/order" method="post">
                <div class="col-sm-6">
                    <div class="chose_area">
                        <div class="heading">
                            <h3>Giao tới </h3>
                        </div>
                        <div class="user_infor">
                            <input type="text" name= "name" class="name" value="${sessionScope.account.name}" style="border:none;">
                            <div class="filter-price-range-filter__range-line"></div>
                            <input type="text" name="phone" class="phone" value="${sessionScope.account.phone}" style="border:none;">
                        </div>
                        <div class="user_address">
                            <input type="text" name="address" class="address" id="address" value="${sessionScope.account.address}" style="border:none;margin-top: 16px;">
                        </div>
                        <input type="button" id="changePasswordBtn" class="change__password-btn"
                               style="margin-top: 12px; margin-left:12px;color:#efac92" onclick="showChangePassword()"
                               value="Thay đổi ">
                        <div class="discount_area">
                            <div class="discount_header">
                                <h3 class="discount">Khuyến mãi</h3>
                                <p class="number_of_discount">Có thể chọn mã giảm giá hoặc mã freeship</p>
                            </div>
                            <i class="fas fa-tag"> Chọn hoặc nhập mã khuyến mãi</i>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="total_area">
                        <c:set var="total" value="${0}"/>
                        <c:set var="numProduct" value="${0}"/>
                        <c:forEach
                                items="${sessionScope.cart}" var="map">
                            <c:set var="total"
                                   value="${total + map.value.quantity * map.value.product.salePrice}"/>
                            <c:set var="numProduct"
                                   value="${numProduct + 1}"/>
                        </c:forEach>
                        <div class="checkout_calculate">
                            <div class="temp_price">
                                <p>Tạm tính</p>
                                <p>${total}đ</p>
                            </div>
                            <div class="discount_checkout">
                                <p>Giảm giá</p>
                                <p>0đ</p>
                            </div>
                            <div class="filter-price-range-filter__range-line-checkout"></div>
                            <div class="sum_price">
                                <p style="font-size: 24px;">Tổng cộng:</p>
                                <p class="no_product"  style="font-size: 24px;">${total}</p>
                            </div>
                            <p class="vat">(Đã bao gồm thuế VAT nếu có)</p>
                        </div>
                        <div class="checkout_button">

                            <input type="submit" class="checkout" value="Mua hàng (${numProduct})">

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section><!--/#do_action-->

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>

<jsp:include page="/view/client/view/facebook_noti.jsp"></jsp:include>
<!--/Modal-->
<div id="modal1">
    <div class="modal__overlay">

    </div>
    <div id="modal__body1">
        <div id="turn__off" style="cursor: pointer; float:right; padding: 0 6px;">
            <i class="fas fa-times"></i>
        </div>
        <div class="card login-form">
            <div class="card-body">
                <h3 class="card-title text-center">Thay đổi thông tin</h3>

                <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->

                <div class="card-text">
                    <form action="${pageContext.request.contextPath}/order/change-address" method="get">
                        <div class="alert alert-danger alert-dismissible show" role="alert">
                            <strong>Xin chào!</strong> Vui lòng điền vào các trường bên dưới để đổi thông tin
                            <input name="id" value="${sessionScope.account.id }" hidden="true">
                            <a class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </a>
                        </div>
                        <div class="form-group">
                            <label>Họ tên</label>
                            <input type="text" name="name" class="form-control form-control-sm" value="${sessionScope.account.name}">
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input type="text" name="phone" class="form-control form-control-sm" value="${sessionScope.account.phone}">
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input type="address" name="address" class="form-control form-control-sm" value="${sessionScope.account.address}">
                        </div>
                        <button type="submit" class="btn btn-block submit-btn">Xác nhận</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="${url}/js/jquery.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.scrollUp.min.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
<script src="${url}/js/html5shiv.js"></script>
<script src="${url}/js/respond.min.js"></script>
<script>
    $("#turn__off").click(
        function close() {
            document.getElementById("modal1").style.display = "none";
        });
    function showChangePassword() {
        document.getElementById("modal1").style.display = "block";
    }
</script>
</body>
</html>
