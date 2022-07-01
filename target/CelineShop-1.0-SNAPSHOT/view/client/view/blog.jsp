<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/31/2022
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Blog | Céline</title>

    <link href="${url}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${url}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${url}/css/price-range.css" rel="stylesheet">
    <link href="${url}/css/animate.css" rel="stylesheet">
    <link href="${url}/css/main.css" rel="stylesheet">
    <link href="${url}/css/responsive.css" rel="stylesheet">
    <link href="${url}/css/blog.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/images/home/celine_login.png"/>

</head><!--/head-->

<body>
<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<!--/header-->
<section>
    <div class="container">
        <div class="row">
            <div class="description text-center">
                <h2>Chào mừng đến Blog của chúng tôi</h2>
                <p>Nơi chia sẻ những bí quyết mặc đẹp hữu ích, mẹo làm đẹp, và các bộ cánh cuốn hút, khơi gợi cảm hứng
                    thời trang trong bạn</p>
            </div>
        </div>
        <div class="row">

            <div class="col-sm-12">
                <div class="news-wrap">
                    <c:forEach items="${blog}" var="b">
                        <c:url value="${b.image}" var="imgUrl"></c:url>
                        <div class="row">

                            <div class="news-item animate-scroll">
                                <div class="thumb">
                                    <p>
                                        <a href="http://www.maisonjsc.com/blogs/fashion/cam-hung-co-dien-hoi-sinh-thoi-lan-gio-moi-vao-xu-huong-phu-kien-thu-dong-2019/"><img
                                                src="${imgUrl}"></a>
                                    </p>
                                </div>
                                <div class="copy">
                                    <span><a href="blog.html" class="tag">${b.blog_category}</a> ${b.date}</span>
                                    <h3>
                                        <a href="http://www.maisonjsc.com/blogs/fashion/cam-hung-co-dien-hoi-sinh-thoi-lan-gio-moi-vao-xu-huong-phu-kien-thu-dong-2019/">${b.name} </a>
                                    </h3>
                                    <p>${b.des}</p>
                                    <a href="http://www.maisonjsc.com/blogs/fashion/cam-hung-co-dien-hoi-sinh-thoi-lan-gio-moi-vao-xu-huong-phu-kien-thu-dong-2019/"
                                       class="btn">Xem thêm<span><i
                                            class="far fa-arrow-alt-circle-right"></i></span></a>
                                </div>
                                <div class="cl"></div>
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
                </div>

            </div>
        </div>
    </div>
</section>

<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<jsp:include page="/view/client/view/facebook_noti.jsp"></jsp:include><!--/Footer-->
<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
</body>
</html>
