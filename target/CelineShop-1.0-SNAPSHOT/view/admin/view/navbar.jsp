<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 5/24/2022
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/static" var="url"></c:url>
<nav class="main-header navbar navbar-expand navbar-dark navbar-info">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Tìm kiếm..." aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>
    <c:url value="${sessionScope.account.avatar }"
           var="imgUrl"></c:url>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
            <c:choose>
                <c:when test="${sessionScope.account.avatar==null}">
                    <a href="#"
                       class="nav-link" data-toggle="dropdown"
                       style="display: contents;font-size: 36px;margin-right: 12px;"><i class="fas fa-user" style=""></i>
                </c:when>
                <c:otherwise>
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <img src="${imgUrl}" alt="" style="width:40px;height:40px;">
                    </a>
                </c:otherwise>
            </c:choose>

            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-item dropdown-header">Tài khoản Admin: ${sessionScope.account.username}</span>
                          <div class="dropdown-divider"></div>
                          <a href="${pageContext.request.contextPath}/AdminLogin" class="dropdown-item">
                            <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập
                          </a>
                <div class="dropdown-divider"></div>
                <a href="${pageContext.request.contextPath}/AdminLogout" class="dropdown-item">
                    <i class="fas fa-sign-out-alt mr-2"></i> Đăng xuất
                </a>
                <div class="dropdown-divider"></div>
            </div>
        </li>

    </ul>
</nav>
<!-- /.navbar -->