<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/29/2022
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                        <li data-target="#slider-carousel" data-slide-to="3"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>Céline</span></h1>
                                <h2>Phong cách thời trang Preppy</h2>
                                <p>Phong cách Preppy dù mới xuất hiện trong thời gian gần đây nhưng chúng đã nhanh chóng
                                    được ưa chuộng. Nguồn cảm hứng của phong cách
                                    này chính là những bộ trang phục học đường của Mỹ từ năm 1912. Chúng hướng tới hình
                                    tượng người phụ nữ kín đáo, thanh lịch không kém phần cá tính. </p>
                                <button type="button" class="btn btn-default get">Xem thêm...</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${url}/images/home/jisoo.jpg" class="girl img-responsive" alt=""/>
                                <img src="${url}/images/home/new-arrival-removebg.png" class="pricing" alt=""/>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>Céline</span></h1>
                                <h2>Phong cách thời trang Vintage</h2>
                                <p>Chắc hẳn làn gió mang tên vintage vẫn chưa từng hạ nhiệt trong làng thời trang gần
                                    đây. Bạn có còn nhớ những chiếc quần tây ống rộng hay
                                    những họa tiết nâu trầm trước đây không? Đó chính là nguồn cảm hứng bất tận của
                                    phong cách vintage đó. Mang hơi hướng cổ điển nhưng chưa
                                    bao giờ lỗi mốt, vintage còn có một chút gì đó rất “độc”. Độc ở đây không chỉ là độc
                                    đáo mà còn rất thời thượng, rất cuốn hút. </p>
                                <button type="button" class="btn btn-default get">Xem thêm...</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${url}/images/home/IU.jpg" class="girl img-responsive" alt=""/>
                                <img src="${url}/images/home/saleoff-removebg.png" class="pricing" alt=""/>
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>Céline</span></h1>
                                <h2>Phong cách thời trang Glamorous</h2>
                                <p>Phong cách Glamorous cho thấy một vẻ ngoài chói lọi đi kèm với sự kịch tính tinh tế.
                                    Nhưng nó cũng có một sự quyến rũ tinh tế,
                                    có thể là giữa sự ấn tượng và sự gợi cảm. Tương tự như cảm giác rực rỡ mà sản phẩm
                                    thiết kế mang lại, trang phục thường gây sự chú ý của mọi người. </p>
                                <button type="button" class="btn btn-default get">Xem thêm...</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${url}/images/home/rose.jpeg" class="girl img-responsive" alt=""/>
                                <img src="${url}/images/home/hot-item-removebg-removebg.png" class="pricing" alt=""/>
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>Céline</span></h1>
                                <h2>Phong cách thời trang Romantic</h2>
                                <p> Phong cách Romantic là trang phục gợi lên suy nghĩ về sự lãng mạn và nữ tính. Một
                                    người lãng mạn là duy tâm và
                                    thường không thực tế. Các trang phục thường bao gồm hoa, trái tim, vải thô, vải mềm,
                                    có đường cong nhẹ nhàng và phụ kiện với mề đay và phụ kiện. </p>
                                <button type="button" class="btn btn-default get">Xem thêm...</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${url}/images/home/park.jpg" class="girl img-responsive" alt=""/>
                                <img src="${url}/images/home/outstock-removebg-removebg.png" class="pricing" alt=""/>
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fas fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fas fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>
<!--/slider-->
