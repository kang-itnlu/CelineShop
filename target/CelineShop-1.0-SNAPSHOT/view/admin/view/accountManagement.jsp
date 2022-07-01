<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 5/16/2022
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/static" var="url"></c:url>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý tài khoản</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${url}/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${url}/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${url}/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="${url}/dist/img/celine_login.png"/>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <jsp:include page="/view/admin/view/navbar.jsp"></jsp:include>
    <jsp:include page="/view/admin/view/mainbar.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Quản lý tài khoản</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Admin/Welcome">Trang
                                chủ</a></li>
                            <li class="breadcrumb-item active">Quản lý tài khoản</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class=" col-6">
                                    <a class="card-title">
                                        Bảng quản lý các tài khoản</a>
                                </div>
                                <div class=" col-6 text-right">
                                    <a href="add">
                                        <button type="button" class="btn btn-primary text-right">
                                            <i class="fa fa-plus-circle"></i> Thêm tài khoản
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-responsive-md">
                                <thead>
                                <tr>
                                    <th>Mã khách hàng</th>
                                    <th>Email</th>
                                    <th>Tên người dùng</th>
                                    <th>Họ Tên</th>
                                    <th>Địa chỉ </th>
                                    <th>Facebook</th>
                                    <th>Password</th>
                                    <th>Avatar</th>
                                    <th>Role</th>
                                    <th>Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userList}" var="account">
                                    <tr>
                                        <td>${account.id}</td>
                                        <td>${account.email}</td>
                                        <td>${account.username}</td>
                                        <td>${account.name}</td>
                                        <td>${account.address}</td>
                                        <td>${account.facebook}</td>
                                        <td>${account.password}</td>
                                        <c:url value="${account.avatar }" var="imgUrl"></c:url>
                                        <td><img src="${imgUrl}" alt="" style="width:30px; height: 30px;margin: 0 auto;
                    display: block"></td>
                                        <td>${account.roleId}</td>
                                        <td>
                                            <div class="row justify-content-center">
                                                <a href="${pageContext.request.contextPath}/Admin/user/delete?id=${account.id}">
                                                    <button type="button" class="btn btn-block btn-outline-danger">
                                                        <i class="fa fa-trash-alt"></i>
                                                    </button>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/Admin/user/edit?id=${account.id}">
                                                    <button type="button"
                                                            class="btn btn-block btn-outline-success ml-1">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                </a>

                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <jsp:include page="/view/admin/view/footer.jsp"></jsp:include>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${url}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${url}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="${url}/plugins/datatables/jquery.dataTables.js"></script>
<script src="${url}/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="${url}/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${url}/dist/js/demo.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
</script>
</body>
</html>



