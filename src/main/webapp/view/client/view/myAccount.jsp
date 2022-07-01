<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/30/2022
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alert = (String) request.getAttribute("alert");
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Account | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/account.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
</head>
<!--/head-->

<body>
<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<!--/header-->

<div class="container">
    <div class="view-account">
        <section class="module">
            <div class="module-inner">
                <div class="side-bar">
                    <div class="user-info">
                        <c:url value="${sessionScope.account.avatar }"
                               var="imgUrl"></c:url>
                        <img class="img-profile img-circle img-responsive center-block"
                             src="${imgUrl}" alt="">
                        <ul class="meta list list-unstyled">
                            <li class="name">${sessionScope.account.username}</li>
                        </ul>
                    </div>
                    <nav class="side-menu">
                        <ul class="nav">
                            <li class="active"><a href="#" onclick="showInformation()"><span
                                    class="fa fa-user"></span>
                                Hồ sơ</a></li>
                            <li><a href="#" onclick="showOrder()"><span class="fas fa-money-check-alt"></span> Đơn
                                mua</a></li>
                            <li><a href="#" onclick="showNo()"><span class="fas fa-bell"
                                                                     style="color: #efac92;"></span> Thông báo</a></li>
                            <li><a href="#" onclick="showVoucher()"><span class="fas fa-ticket-alt"></span> Kho
                                Voucher</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="content-panel">
                    <div id="information">

                        <h2 class="title">Hồ sơ</h2>

                        <form class="form-horizontal" action="${pageContext.request.contextPath}/member/myAccount" method="post">
                            <input name="role" value="${sessionScope.account.roleId }"  hidden="true">
                            <input name="id" value="${sessionScope.account.id }" hidden="true">
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thông tin cá nhân</h3>
                                <%
                                    if (alert != null) {
                                %>
                                <p class="alert alert-danger" role="alert">
                                    <%= alert %>
                                </p>
                                <%
                                    }
                                %>
                                <div class="form-group avatar">
                                    <figure class="figure col-md-2 col-sm-3 col-xs-12">

                                        <img class="img-rounded img-responsive avatar" name="image" src="${imgUrl}"
                                             alt="">
                                    </figure>

                                    <div class="form-inline col-md-10 col-sm-9 col-xs-12">
                                        <input type="button" value="Tải ảnh lên"
                                               onclick="BrowseServer();" class="btn btn-controls"/>
                                        <input type="text" name="avatar" id="avatar" hidden="true" value="${sessionScope.account.avatar}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tên đăng nhập</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="username"
                                               value="${sessionScope.account.username}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Họ tên</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="name"
                                               value="${sessionScope.account.name}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Địa chỉ</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="address"
                                               value="${sessionScope.account.address}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 col-sm-3 col-xs-12 control-label">Số điện thoại</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="phone"
                                               value="${sessionScope.account.phone}">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset class="fieldset">
                                <h3 class="fieldset-title">Thông tin liên lạc</h3>
                                <div class="form-group">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="email" class="form-control" name="email" value="${sessionScope.account.email}">
                                        <p class="help-block">Đây là Email của bạn</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Facebook</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control" name="facebook"
                                               value="${sessionScope.account.facebook}">
                                        <p class="help-block">Tên Facebook của bạn</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2  col-sm-3 col-xs-12 control-label">Mật khẩu</label>
                                    <div class="col-md-10 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="password"
                                               value="${sessionScope.account.password}">
                                        <input type="button" id="changePasswordBtn" class="change__password-btn"
                                               style="margin-top: 6px;" onclick="showChangePassword()"
                                               value="Thay đổi mật khẩu">
                                    </div>
                                </div>
                            </fieldset>
                            <hr>
                            <div class="form-group">
                                <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                    <input class="btn btn-primary" type="submit" value="Cập nhật">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!--Đơn mua-->
                    <div id="order" style="display: none">
                        <h2 class="title">Đơn hàng</h2>
                        <%--                        <div class="one-order">--%>
                        <%--                            <div class="row order-header">--%>
                        <%--                                <div class="col-md-8 col-sm-12 order-id">--%>
                        <%--                                    <strong>Đơn hàng:</strong>--%>
                        <%--                                    <span>#ID3721534</span>--%>
                        <%--                                </div>--%>
                        <%--                                <div class="col-md-4 col-sm-12 order-id">--%>
                        <%--                                    <span class="fas fa-truck"></span>--%>
                        <%--                                    <span class="complete">Đang xử lí</span>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="row">--%>
                        <%--                                <div class="col-md-2 product-img">--%>
                        <%--                                    <img src="${url}/images/shop/pants/7milionShort.jpg">--%>
                        <%--                                </div>--%>
                        <%--                                <div class="col-md-10 product-info">--%>
                        <%--                                    <h4>Quần short 7millions Essentials+ / Màu đen</h4>--%>
                        <%--                                    <p>x1</p>--%>
                        <%--                                    <span class="base-price">300.000đ</span>--%>
                        <%--                                    <span class="discount">280.000đ</span>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                            <hr>--%>
                        <%--                            <div class="row">--%>
                        <%--                                <div class="col-md-8 total">--%>
                        <%--                                    <span><i class="fas fa-donate"></i></span>--%>
                        <%--                                    <span class="total-price">Tổng tiền: <strong>280.000đ</strong></span>--%>
                        <%--                                </div>--%>
                        <%--                                <div class="col-md-4 total">--%>
                        <%--                                    <span><button class="btn-again" type="button">Liên hệ</button></span>--%>
                        <%--                                    <span><button class="btn-rate" type="button" data-toggle="modal"--%>
                        <%--                                                  data-target="#cancelOrder">Hủy đơn hàng</button></span>--%>

                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <div class="one-order">
                            <div class="row order-header">
                                <div class="col-md-8 col-sm-12 order-id">
                                    <strong>Đơn hàng:</strong>
<%--                                    <span>#ID${idCart}</span>--%>
                                </div>
                                <div class="col-md-4 col-sm-12 order-id">
                                    <span class="fas fa-truck"></span>
                                    <span class="complete">Giao hàng thành công</span>
                                </div>
                            </div>
                            <c:forEach items="${listCartItem}" var="cart">
                                <div class="row">
                                    <div class="col-md-2 product-img">
                                        <c:url value="${cart.product.image}"
                                               var="imgUrl"></c:url>
                                        <img src="${imgUrl}">
                                    </div>
                                    <div class="col-md-10 product-info">
                                                                                <h4>${cart.product.name}</h4>
                                        <p>x${cart.quantity}</p>
                                                                                <span class="base-price">${cart.product.price}đ</span>
                                                                                <span class="discount">${cart.product.salePrice}đ</span>
                                    </div>
                                </div>
                                <hr>
                            </c:forEach>


                        </div>
                    </div>

                    <!--Thông báo -->

                    <div id="notify_account" style="display: none">
                        <h2 class="title">Thông báo</h2>
                        <div class="box-body p-0">
                            <div class="p-3 one-notify">
                                <div class="row">
                                    <div class="col-lg-2 col-sm-2 icon-round text-center">
                                        <i class="fas fa-bell"></i>
                                    </div>
                                    <div class="col-lg-10 col-sm-10 text-truncate">
                                        <h5>**RA MẮT SẢN PHẨM MỚI**</h5>
                                        <div class="mb-2">
                                            Ghé thăm cửa hàng để xem những sản phẩm mới cũng như nhận những ưu đãi
                                            hấp
                                            dẫn từ...
                                        </div>
                                    </div>
                                </div>
                                <span class="option">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light btn-sm rounded"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                                    style="margin-top:-65px;">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <button class="dropdown-item" type="button" style="margin: 0 14px;"><i
                                                        class="mdi mdi-delete"></i> Delete</button>
                                                <button class="dropdown-item" type="button"><i
                                                        class="mdi mdi-close"></i> Turn Off</button>
                                            </div>
                                        </div>
                                    </span>
                            </div>
                            <hr>
                            <div class="p-3 one-notify">

                                <div class="row">
                                    <div class="col-lg-2 col-sm-2 icon-round text-center">
                                        <i class="fas fa-percent"></i>
                                    </div>
                                    <div class="col-lg-10 col-sm-10 text-truncate">
                                        <h5>MỪNG GIÁNG SINH - SIÊU KHUYẾN MÃI</h5>
                                        <div class="mb-2">
                                            Giảm giá đến 50% các sản phẩm, free ship từ 5 sản phẩm trở lên. Mua ngay
                                            nào...
                                        </div>
                                    </div>
                                </div>
                                <span class="option">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light btn-sm rounded"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                                    style="margin-top:-65px;">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <button class="dropdown-item main-btn" type="button"
                                                        style="margin: 0 14px;"><i
                                                        class="mdi mdi-delete"></i>Delete</button>
                                                <button class="dropdown-item main-btn" type="button"><i
                                                        class="mdi mdi-close"></i> Turn Off</button>
                                            </div>
                                        </div>
                                    </span>
                            </div>
                            <hr>
                            <div class="p-3 one-notify">
                                <div class="row">
                                    <div class="col-lg-2 col-sm-2 icon-round text-center">
                                        <i class="fas fa-bell"></i>
                                    </div>
                                    <div class="col-lg-10 col-sm-10 text-truncate">
                                        <h5>**RA MẮT SẢN PHẨM MỚI**</h5>
                                        <div class="mb-2">
                                            Ghé thăm cửa hàng để xem những sản phẩm mới cũng như nhận những ưu đãi
                                            hấp
                                            dẫn từ...
                                        </div>
                                    </div>
                                </div>
                                <span class="option">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light btn-sm rounded"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                                    style="margin-top:-65px;">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <button class="dropdown-item" type="button" style="margin: 0 14px;"><i
                                                        class="mdi mdi-delete"></i> Delete</button>
                                                <button class="dropdown-item" type="button"><i
                                                        class="mdi mdi-close"></i> Turn Off</button>
                                            </div>
                                        </div>
                                    </span>
                            </div>

                        </div>
                    </div>

                    <!--Voucher -->
                    <div id="voucher" style="display: none">
                        <h2 class="title">Voucher khuyến mãi</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="content-voucher">
                                    <span><img src="${url}/images/home/logoSale.png"></span>
                                    <h4>Giảm giá 10%</h4>
                                    <ul class="list-unstyled m-t-md">
                                        <li>Giảm giá 10% trên tổng hóa đơn khi mua từ 3 sản phẩm trở lên...</li>
                                        <li>Hạn sử dụng: vô hạn</li>
                                        <li>Áp dụng cho hình thức mua hàng trực tiếp và online</li>
                                    </ul>
                                    <button type="button">Sử dụng</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="content-voucher">
                                    <span><img src="${url}/images/home/logoSale.png"></span>
                                    <h4>Giảm giá 5%</h4>
                                    <ul class="list-unstyled m-t-md">
                                        <li>Giảm giá 5% trên tổng hóa đơn khi khách hàng đem túi cá nhân để mua
                                            hàng...
                                        </li>
                                        <li>Áp dụng cho hình thức mua hàng trực tiếp</li>
                                    </ul>
                                    <button type="button">Sử dụng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Modal-->
                    <div class="modal fade" id="cancelOrder" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="cancel-title">Lí do hủy đơn</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <select>
                                        <option>Thay đổi địa chỉ nhận hàng.</option>
                                        <option>Tôi không muốn đặt đơn hàng này nữa.</option>
                                        <option>Thay đổi hình thức thanh toán.</option>
                                        <option>Tôi đặt nhầm size sản phẩm.</option>
                                    </select>
                                    <div id="another">
                                        <h5>Lí do khác</h5>
                                        <textarea id="anotherReason" placeholder="Vui lòng nhập tại đây"></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn-again" data-dismiss="modal">Đóng</button>
                                    <button type="button" class="btn-rate">Hủy đơn</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<jsp:include page="/view/client/view/facebook_noti.jsp"></jsp:include>
<!--/Footer-->
<div id="modal1">
    <div class="modal__overlay">

    </div>
    <div id="modal__body1">
        <div id="turn__off" style="cursor: pointer; float:right; padding: 0 6px;">
            <i class="fas fa-times"></i>
        </div>
        <div class="card login-form">
            <div class="card-body">
                <h3 class="card-title text-center">Đổi mật khẩu</h3>

                <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->

                <div class="card-text">
                    <form action="${pageContext.request.contextPath}/member/change-password" method="post">
                        <div class="alert alert-danger alert-dismissible show" role="alert">
                            <strong>Xin chào!</strong> Vui lòng điền vào các trường bên dưới để đổi mật khẩu
                            <input name="id" value="${sessionScope.account.id }" hidden="true">
                            <a class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </a>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu cũ</label>
                            <input type="password" name="oldPassword" class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu mới</label>
                            <input type="password" name="newPassword" class="form-control form-control-sm">
                        </div>
                        <div class="form-group">
                            <label>Nhập lại mật khẩu mới</label>
                            <input type="password" name="reNewPassword" class="form-control form-control-sm">
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
<script src="${url}/js/price-range.js"></script>
<script src="${url}/js/jquery.prettyPhoto.js"></script>
<script src="${url}/js/main.js"></script>
<script src="${url}/js/account.js"></script>
<script src="${pageContext.request.contextPath}/CKLibraries/ckfinder/ckfinder.js"></script>


<script type="text/javascript">
    function BrowseServer() {
        var finder = new CKFinder();
        finder.basePath = "/CKLibraries/ckfinder";
        finder.selectActionFunction = function (fileUrl) {
            document.getElementById('avatar').value = fileUrl;
        };
        finder.popup();
    }
</script>
<script>
    $(".nav li").click(function () {
        if ($(".nav li").removeClass("active")) {
            $(this).removeClass("active");
        }
        $(this).addClass("active");
    });

    function showChangePassword() {
        document.getElementById("modal1").style.display = "block";
    }
$("#turn__off").click(
    function close() {
        document.getElementById("modal1").style.display = "none";
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {

        var readURL = function(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('.avatar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $(".file-upload").on('change', function() {
            readURL(this);
        });
    });
    //-->
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
</body>

</html>
