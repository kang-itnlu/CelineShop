<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 5/17/2022
  Time: 12:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/static" var="url"></c:url>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sửa sản phẩm</title>
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
    <!-- summernote -->
    <link rel="stylesheet" href="${url}/plugins/summernote/summernote-bs4.css">
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
                        <h1>Sửa sản phẩm</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Admin/Welcome">Trang
                                chủ</a></li>
                            <li class="breadcrumb-item active"><a
                                    href="${pageContext.request.contextPath}/Admin/product/list">Quản lý sản phẩm</a>
                            </li>
                            <li class="breadcrumb-item active">Sửa sản phẩm</li>
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
                                        Điền vào form để sửa sản phẩm</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-md-10">
                                    <div class="card card-info">
                                        <div class="card-header">
                                            <h3 class="card-title">Thông tin sản phẩm</h3>
                                        </div>
                                        <div class="card-body">
                                            <form role="form"
                                                  action="${pageContext.request.contextPath}/Admin/product/edit?id=${product.id}"
                                                  method="post">
                                                <!-- Date dd/mm/yyyy -->
                                                <div class="form-group">
                                                    <label>Tên hàng</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i
                                                                    class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="name" class="form-control" value="${product.name}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Phân loại</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i
                                                                    class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="category" class="form-control" value="${product.category.id}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- phone mask -->
                                                <div class="form-group">
                                                    <label>Hình ảnh</label>

                                                    <!-- <label for="customFile">Custom File</label> -->

                                                    <div class="custom-file">
                                                        <input type="button" value="Tải ảnh lên"
                                                               onclick="BrowseServer();" class="btn btn-controls"/>
                                                        <input type="text" name="image" id="avatar" value="${product.image}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- phone mask -->
                                                <div class="form-group">
                                                    <label>Số lượng</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i class="fa fa-th-list"></i></span>
                                                        </div>
                                                        <input type="text" name="stock" class="form-control" value="${product.stock}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá nhập</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i
                                                                    class="fa fa-money-check"></i></span>
                                                        </div>
                                                        <input type="text" name="price" class="form-control" value="${product.price}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá bán</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i
                                                                    class="fa fa-money-check"></i></span>
                                                        </div>
                                                        <input type="text" name="salePrice" class="form-control" value="${product.salePrice}">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- /.form group -->
                                                <div class="form-group">
                                                    <label>Yêu thích</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                    <span class="input-group-text"><i
                                                            class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="isLiked" value="${product.isLiked}" class="form-control">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Đã bán</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                    <span class="input-group-text"><i
                                                            class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="soldQuantity" value="${product.soldQuantity}" class="form-control">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Rating</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                    <span class="input-group-text"><i
                                                            class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="rating" value="${product.rating}" class="form-control">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Brand</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                    <span class="input-group-text"><i
                                                            class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="brand" value="${product.brand}" class=form-control">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Nơi sản xuất</label>

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                    <span class="input-group-text"><i
                                                            class="fa fa-list"></i></span>
                                                        </div>
                                                        <input type="text" name="manufacturer" value="${product.manufacturer}" class="form-control">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- phone mask -->
                                                <div class="form-group">
                                                    <label>Mô tả</label>

                                                    <div class="input-group">
                                                        <div class="mb-3">
                                  <textarea class="textarea" placeholder="Place some text here" name="des"
                                            style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid rgb(221, 221, 221); padding: 10px; display: none;">${product.des}</textarea>
                                                        </div>
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <label>Chi tiết</label>

                                                    <div class="input-group">
                                                        <div class="mb-3">
                                  <textarea class="textarea" placeholder="Place some text here" name="product_detail"
                                            style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid rgb(221, 221, 221); padding: 10px; display: none;">${product.product_detail}</textarea>
                                                        </div>
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- /.form group -->

                                                <div class="form-group">
                                                    <div class="input-group justify-content-center">

                                                        <button type="submit" class="btn btn-success text-right">
                                                            <i class="fa fa-edit"></i> Sửa
                                                        </button>

                                                        <a href="${pageContext.request.contextPath}/Admin/product/list">
                                                            <button type="button" class="btn btn-info text-right ml-1">
                                                                <i class="fa fa-arrow-alt-circle-left"></i> Trở về
                                                            </button>
                                                        </a>
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <!-- /.form group -->
                                            </form>
                                        </div>
                                        <!-- /.card-body -->
                                    </div>
                                    <!-- /.card -->

                                </div>
                            </div>
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
<!-- Select2 -->
<script src="${url}/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="${url}/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="${url}/plugins/moment/moment.min.js"></script>
<script src="${url}/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- date-range-picker -->
<script src="${url}/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="${url}/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${url}/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="${url}/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- AdminLTE App -->
<script src="${url}/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${url}/dist/js/demo.js"></script>
<script src="${url}/plugins/summernote/summernote-bs4.min.js"></script>
<script src="${url}/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
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
<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2()

        //Initialize Select2 Elements
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })

        //Datemask dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', {'placeholder': 'dd/mm/yyyy'})
        //Datemask2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', {'placeholder': 'mm/dd/yyyy'})
        //Money Euro
        $('[data-mask]').inputmask()

        //Date range picker
        $('#reservation').daterangepicker()
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            locale: {
                format: 'MM/DD/YYYY hh:mm A'
            }
        })
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
            }
        )

        //Timepicker
        $('#timepicker').datetimepicker({
            format: 'LT'
        })

        //Bootstrap Duallistbox
        $('.duallistbox').bootstrapDualListbox()

        //Colorpicker
        $('.my-colorpicker1').colorpicker()
        //color picker with addon
        $('.my-colorpicker2').colorpicker()

        $('.my-colorpicker2').on('colorpickerChange', function (event) {
            $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
        });

        $("input[data-bootstrap-switch]").each(function () {
            $(this).bootstrapSwitch('state', $(this).prop('checked'));
        });

    })
</script>
<script>
    $(function () {
        // Summernote
        $('.textarea').summernote()
    })
    $(document).ready(function () {
        bsCustomFileInput.init();
    });
</script>
</body>
</html>



