<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 5/24/2022
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/static" var="url"></c:url>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-info elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link navbar-cyan">
        <img src="${url}/dist/img/logo_login.png"
             alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-bolder">Céline Store</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="${url}/dist/img/logo_login.png" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Céline Admin</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath }/Admin/Welcome" class="nav-link active">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Trang chủ
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/category/list" class="nav-link">
                        <i class="nav-icon fas fa-th-list"></i>
                        <p>
                            Quản lý loại sản phẩm
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/user/list" class="nav-link">
                        <i class="nav-icon fas fa-user"></i>
                        <p>
                            Quản lý tài khoản
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/order/list" class="nav-link">
                        <i class="nav-icon fas fa-money-bill"></i>
                        <p>
                            Quản lý hóa đơn
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/product/list" class="nav-link">
                        <i class="nav-icon fa fa-book"></i>
                        <p>
                            Quản lý sản phẩm
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/blog/list" class="nav-link">
                        <i class="nav-icon fa fa-newspaper"></i>
                        <p>
                            Quản lý bài viết
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/comment/list" class="nav-link">
                        <i class="nav-icon fas fa-comment"></i>
                        <p>
                            Quản lý bình luận
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/Admin/user/dashboard" class="nav-link">
                        <i class="nav-icon fas fa-chart-area"></i>
                        <p>
                            Thống kê
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
