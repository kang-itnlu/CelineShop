<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 4/17/2022
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trợ giúp | Céline</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/help.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <script src="${url}/js/jquery.js"></script>
    <script src="${url}/js/bootstrap.min.js"></script>
    <script src="${url}/js/jquery.scrollUp.min.js"></script>
    <script src="${url}/js/jquery.prettyPhoto.js"></script>
    <script src="${url}/js/main.js"></script>
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>
    <!--[if lt IE 9]>
    <script src="${url}/js/html5shiv.js"></script>
    <script src="${url}/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <div id="navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <span id="for-image"><img src="${url}/images/home/logoStore.png"></span>
                    <span id="title">Trợ giúp</span>
                </div>
                <div class="col-lg-4 connection">
                    <span>Kết nối</span>
                    <span><i class="fab fa-facebook social-icon"></i></span>
                    <span><i class="fab fa-instagram social-icon"></i></span>
                    <span><i class="fab fa-twitter social-icon"></i></span>
                    <div id="phone">
                        <i class="fas fa-phone-alt"></i>
                        <span>+84342111202</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</header>
<section id="welcome-ask" class="text-center">
    <div class="container">
        <h1>Chào mừng bạn đến trang trợ giúp của Céline</h1>
        <h2>Chúng tôi có thể giúp gì cho bạn?</h2>
        <div class="input-group">
            <div class="input-group-prepend">
                <input id="question" type="text" placeholder="Đặt câu hỏi hoặc tìm từ khóa">
                <i class="fas fa-search"></i>
            </div>
        </div>

    </div>
</section>
<section id="main-content">
    <div class="container">
        <div class="row">
            <div class="answer col-lg-12">
                <h2 class="text-center">Câu hỏi thường gặp</h2>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse1">[Người dùng mới] Cách đăng kí tài khoản
                                    người dùng trên trang web
                                    của cửa hàng?</a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Chúng tôi rất vui mừng khi bạn đăng kí tài khoản người dùng trên trang
                                    web của shop, việc đăng kí của bạn giúp shop tính toán được mức độ ưa thích các sản
                                    phẩm của
                                    khách hàng.</p>
                                <p><strong>Các bước đăng kí</strong></p>
                                <ol class="list-step">
                                    <li class="step">Tại trang chủ của website, click vào mục đăng nhập trên thanh
                                        menu.
                                    </li>
                                    <li class="step" class="step">Tại trang đăng nhập, click vào mục Đăng kí.</li>
                                    <li class="step">Điền các thông tin như email đăng kí, password. Click chọn Đăng
                                        kí.
                                    </li>
                                    <li class="step">Sau khi đăng kí thành công, trang web sẽ tự động đưa bạn đến mục
                                        cập nhật thông tin tài khoản.
                                    </li>
                                    <li class="step">Bạn vui lòng điền đủ thông tin tài khoản để giúp việc đặt hàng dễ
                                        dàng hơn.
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse2">[Người dùng mới] Quên mật khẩu tài khoản.
                                    Làm thế nào để thay đổi?</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><strong>Các bước thay đổi mật khẩu</strong></p>
                                <ol class="list-step">
                                    <li class="step">Tại trang chủ của website, click vào mục Đăng nhập trên thanh
                                        menu.
                                    </li>
                                    <li class="step">Tại trang đăng nhập, click vào mục Quên mật khẩu.</li>
                                    <li class="step">Điền email đăng kí. Đợi mail xác nhận.</li>
                                    <li class="step">Nhập mã xác nhận vào ô Mã xác nhận.</li>
                                    <li class="step">Điền mật khẩu mới và click chọn Cập nhật.</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse3">[Vận chuyển] Thời gian giao hàng mất bao
                                    lâu?</a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Thời gian giao hàng khoảng 2-5 ngày tùy vào vị trí đặt hàng của bạn.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse4">[Vận chuyển] Tại sao đơn hàng của tôi bị
                                    hủy?</a>
                            </h4>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Do ảnh hưởng của dịch Covid, quy định vận chuyển tại một số khu vực bị hạn chế, dẫn
                                    đến việc lấy/ giao hàng không thành công. Mong bạn thông cảm vì sự bất tiện này.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse5">[Thanh toán] Shop có những phương thức thanh
                                    toán nào?</a>
                            </h4>
                        </div>
                        <div id="collapse5" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p><strong>Các hình thức thanh toán chủ yếu</strong></p>
                                <ol class="list-step">
                                    <li class="step">Thanh toán khi nhận hàng. Áp dụng với trường hợp đặt hàng online và
                                        giao hàng tận nơi.
                                    </li>
                                    <li class="step">Thanh toán bằng thẻ ATM.</li>
                                    <li class="step">Thanh toán bằng hình thức chuyển khoản thông qua app banking.</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#collapse6">[Vận chuyển]Đơn hàng của tôi có thể free
                                    ship không?</a>
                            </h4>
                        </div>
                        <div id="collapse6" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Shop đang áp dụng chương trình khuyến mãi freeship khi mua từ 3 sản phẩm trở lên.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<hr>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <p>2021 Céline. Tất cả các quyền được bảo lưu.</p>
            </div>
            <div class="col-lg-4">
                <span class="rules"><a href="">Điều khoản Céline</a></span>
                <span class="rules"><a href="">Điều khoản dịch vụ</a></span>
                <span class="rules"><a href="">Chính sách riêng tư</a></span>
            </div>
        </div>
    </div>

</footer>
</body>
</html>