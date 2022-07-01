<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/29/2022
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>

<footer id="footer"><!--Footer-->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="single-widget">
                        <h3>Chăm sóc khách hàng</h3>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Trung tâm trợ giúp</a></li>
                            <li><a href="#">Céline Blog</a></li>
                            <li><a href="#">Hướng dẫn mua hàng</a></li>
                            <li><a href="#">Thanh toán</a></li>
                            <li><a href="#">Vận chuyển</a></li>
                            <li><a href="#">Trả hàng & Hoàn tiền</a></li>
                            <li><a href="#">Chăm sóc khách hàng</a></li>
                            <li><a href="#">Chính sách bảo hành</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single-widget">
                        <h3>Về Céline</h3>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Giới thiệu về Céline</a></li>
                            <li><a href="#">Tuyển dụng</a></li>
                            <li><a href="#">Điều khoản</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Chính hãng</a></li>
                            <li><a href="#">Flash sales</a></li>
                            <li><a href="#">Liên hệ với truyền thông</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="payment shipping_units">
                        <div class="big_title">
                            <h3>Thanh toán</h3>
                        </div>
                        <div class="sub_image">
                            <img class="" src="${url}/images/home/payment.png">
                        </div>
                    </div>
                    <div class="payment shipping_units">
                        <div class="big_title">
                            <h3>Đơn vị vận chuyển</h3>
                        </div>
                        <div class="sub_image">
                            <img id="ship_img" src="${url}/images/home/ship.jpg">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="follow_on">
                        <div class="big_title">
                            <h3>Theo dõi chúng tôi</h3>
                        </div>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">
                                <div class="social_icon fab fa-facebook"></div>
                                Facebook</a></li>
                            <li><a href="#">
                                <div class="social_icon fab fa-twitter"></div>
                                Twitter</a></li>
                            <li><a href="#">
                                <div class="social_icon fab fa-instagram"></div>
                                Instagram</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row row_p2">
                <div class="col-sm-3">
                    <div class="end_titles">
                        <a href="">CHÍNH SÁCH BẢO MẬT</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="end_titles">
                        <a href="">QUY CHẾ HOẠT ĐỘNG</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="end_titles">
                        <a href="">CHÍNH SÁCH VẬN CHUYỂN</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="end_titles">
                        <a href="">CHÍNH SÁCH TRẢ HÀNG VÀ HOÀN TIỀN</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <div class="dk_banquyen">
                        <img class="ban_quyen" src="${url}/images/home/img/bocongthuong/bo-cong-thuong.svg">
                        <img class="ban_quyen" src="${url}/images/home/img/bocongthuong/bocongthuong.jpg">
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <div class="big_title">
                    <h3>Cửa hàng Céline</h3>
                    <div class="sub_title">
                        <p class="txt_style">Địa chỉ: Khu phố 6, phường Linh Trung, quận Thủ Đức, TP Hồ chí Minh, Việt
                            Nam</p>
                        <p class="txt_style">Tổng đài hỗ trợ: 0342111202 - Email:celine_shop@gmail.com</p>
                        <p class="txt_style">Mã số doanh nghiệp: 0106773786 do Sở Kế hoạch & Đầu tư TP Hồ Chí Minh cấp
                            lần đầu ngày 01/11/2019</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container text-center">
            <div class="row">
                <p>Copyright © Bản quyền thuộc về cửa hàng Céline</p>
            </div>
        </div>
    </div>
</footer>
<!--/Footer-->
