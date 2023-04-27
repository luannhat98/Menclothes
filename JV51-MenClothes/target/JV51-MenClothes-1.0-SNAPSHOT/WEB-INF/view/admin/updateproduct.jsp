<%--
  Created by IntelliJ IDEA.
  User: THIEN DO
  Date: 11/21/2022
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/template/admin/assets/images/favicon.png"/>">
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link href="<c:url value="/template/admin/assets/libs/flot/css/float-chart.css" />" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/template/admin/dist/css/style.min.css" />" rel="stylesheet">
    <link href="<c:url value="/template/admin/dist/css/icons/material-design-iconic-font/css/materialdesignicons.min.css"/> " rel="stylesheet">

</head>
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>

<div id="main-wrapper">

    <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
            <div class="navbar-header" data-logobg="skin5">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>

                <a class="navbar-brand" href="RqadMIN">
                    <!-- Logo icon -->
                    <b class="logo-icon p-l-10">

                        <img src="<c:url value="/template/admin/assets/images/logo-icon.png"/>" alt="homepage" class="light-logo" />

                    </b>

                    <span class="logo-text">

                             <img src="<c:url value="/template/admin/assets/images/logo-text.png"/>" alt="homepage" class="light-logo" />

                        </span>

                </a>
                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
            </div>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                <!-- ============================================================== -->
                <!-- toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav float-left mr-auto">
                    <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="fas fa-bars fix-icon"></i></a></li>


                    <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><div class="fix-icon"><i class="ti-search "></i> </div> </a>
                        <form class="app-search position-absolute">
                            <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i class="ti-close"></i></a>
                        </form>
                    </li>

                </ul>
                <!-- ============================================================== -->
                <!-- Right side toggle and nav items -->
                <!-- ============================================================== -->
                <ul class="navbar-nav float-right" style="margin-right: -10px;">
                    <!-- ============================================================== -->
                    <!-- Comment -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-bell fix-icon"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- End Comment -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Messages -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-comment-alt fix-icon"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2">
                            <ul class="list-style-none">
                                <li>
                                    <div class="">
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-success btn-circle"><i class="ti-calendar"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Event today</h5>
                                                    <span class="mail-desc">Just a reminder that event</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-info btn-circle"><i class="ti-settings"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Settings</h5>
                                                    <span class="mail-desc">You can customize this template</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Pavan kumar</h5>
                                                    <span class="mail-desc">Just see the my admin!</span>
                                                </div>
                                            </div>
                                        </a>
                                        <!-- Message -->
                                        <a href="javascript:void(0)" class="link border-top">
                                            <div class="d-flex no-block align-items-center p-10">
                                                <span class="btn btn-danger btn-circle"><i class="fa fa-link"></i></span>
                                                <div class="m-l-10">
                                                    <h5 class="m-b-0">Luanch Admin</h5>
                                                    <span class="mail-desc">Just see the my new admin!</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- End Messages -->
                    <!-- ============================================================== -->

                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                            <img src="<c:url value="/template/admin/assets/images/users/1.jpg" /> " alt="user" class="rounded-circle" width="31" style="margin-top: 15px;"></a>
                        <div class="dropdown-menu dropdown-menu-right user-dd animated">

                            <a class="dropdown-item" href="javascript:void(0)" style="margin-top: 13px"><i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript:void(0)"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                            <div class="dropdown-divider"></div>
                            <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded" style="margin: 8px 0px 8px 16px">View Profile</a></div>
                        </div>
                    </li>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav" class="p-t-30">
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="RqadMIN" aria-expanded="false"><i class="fab fa-microsoft"></i><span class="hide-menu">Dashboard</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fab fa-product-hunt"></i><span class="hide-menu">Product </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="/rqproduct" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="/requestProduct" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-newspaper"></i><span class="hide-menu">Order </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="#" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="rqOrder" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-user"></i><span class="hide-menu">Manage Customers</span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="#" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="#" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-pencil-alt"></i><span class="hide-menu">Order </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="#" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="#" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="widgets.html" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">Widgets</span></a></li>

                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->

    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <div class="container-fruit">
            <div class="row">
                <div class="card-body">
                    <h6 class="card-title">Update Product</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="page-wrapper">
        <div class="container-fruit">
            <div class="row">
                <div class="col-6">

                        <div class="card-body">
                            <h4 class="card-title">Product Info</h4>
                            <form:form  modelAttribute ="product" action="updateP" method="post">
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">ID Product</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="id" value="${product.id}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                <label  class="col-sm-3 text-right control-label col-form-label">Name Product</label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="name" value="${product.name}"/>
                                </div>
                                         </div>
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">Category Id</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Category" path="categoryId.id" value="${product.categoryId.id}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                <label  class="col-sm-3 text-right control-label col-form-label">Improt Price</label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="importPrice" value="${product.importPrice}"/>
                                </div>
                            </div>
                                <div class="form-group row">
                                <label  class="col-sm-3 text-right control-label col-form-label">Price</label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="price" value="${product.price}"/>

                                </div>
                            </div>
                                <div class="form-group row">
                                <label class="col-sm-3 text-right control-label col-form-label">Quantity</label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="quantitys" value="${product.quantitys}"/>
                                </div>
                            </div>
                                <div class="form-group row">
                                <label  class="col-sm-3 text-right control-label col-form-label">Date</label>
                                <div class="col-sm-9">
                                    <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="dates" value="${product.dates}"/>
                                </div>
                            </div>
                                <div class="form-group row">
                                <label  class="col-sm-3 text-right control-label col-form-label">Discription</label>
                                <div class="col-sm-9">
                                    <form:textarea class="form-control" placeholder="Enter Date" path="descriptions" value="${product.descriptions}"/>
                                </div>
                            </div>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </form:form>
                        </div>

            </div>
        </div>

    </div>

</div>
</div>
<div style="max-height: 100px">
    <footer class="footer text-center">
        All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
    </footer>
</div>
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="<c:url value="/template/admin/assets/libs/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<c:url value="/template/admin/assets/libs/popper.js/dist/popper.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/extra-libs/sparkline/sparkline.js" />"></script>
<!--Wave Effects -->
<script src="<c:url value="/template/admin/dist/js/waves.js" />"></script>
<!--Menu sidebar -->
<script src="<c:url value="/template/admin/dist/js/sidebarmenu.js"/>"></script>
<%--calenda--%>
<!--Custom JavaScript -->
<script src="<c:url value="/template/admin/dist/js/custom.min.js"/>"></script>
<!--This page JavaScript -->
<!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
<!-- Charts js Files -->
<script src="<c:url value="/template/admin/assets/libs/flot/excanvas.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.pie.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.time.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.stack.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.crosshair.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"/>"></script>
<script src="<c:url value="/template/admin/dist/js/pages/chart/chart-page-init.js"/>"></script>


<!-- This Page JS -->
<script src="<c:url value="/template/admin/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"/>"></script>
<script src="<c:url value="/template/admin/dist/js/pages/mask/mask.init.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/select2/dist/js/select2.full.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/select2/dist/js/select2.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-minicolors/jquery.minicolors.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/quill/dist/quill.min.js"/>"></script>
<script>

    $(".select2").select2();

    $('.demo').each(function() {

        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            position: $(this).attr('data-position') || 'bottom left',

            change: function(value, opacity) {
                if (!value) return;
                if (opacity) value += ', ' + opacity;
                if (typeof console === 'object') {
                    console.log(value);
                }
            },
            theme: 'bootstrap'
        });

    });
    /*datwpicker*/
    jQuery('.mydatepicker').datepicker();
    jQuery('#datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true
    });
    var quill = new Quill('#editor', {
        theme: 'snow'
    });

</script>
</body>
</html>