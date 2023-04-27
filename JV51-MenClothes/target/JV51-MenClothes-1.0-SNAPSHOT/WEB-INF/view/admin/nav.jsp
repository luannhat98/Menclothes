
<head>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <header class="topbar br-w" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark ">
            <div class="navbar-header " data-logobg="skin5" style="background: #BB2649">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                <a class="navbar-brand" href="RqadMIN">
                    <!-- Logo icon -->
                    <b class="logo-icon p-l-10" style="margin-left: 5px">
                        <img src="<c:url value="/template/admin/assets/images/logo-3.png"/>" alt="homepage" class="light-logo" />
                    </b>
                    <span class="logo-text">
                             <img src="<c:url value="/template/admin/assets/images/logo-text2.png"/>" alt="homepage" class="light-logo" />
                        </span>
                </a>
                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
            </div>
            <!-- End Logo -->
            <div class="navbar-collapse collapse br-w"  data-navbarbg="skin5">
                <!-- toggle and nav items -->
                <ul class="navbar-nav float-left mr-auto">
                    <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light tw" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="fas fa-bars fix-icon"></i></a></li>

                </ul>
                <!-- Right side toggle and nav items -->
                <ul class="navbar-nav float-right" style="margin-right: -10px;">
                    <!-- Comment -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect waves-dark tw" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-bell fix-icon"></i>
                        </a> <%-- Kiểm tra xem có Flash Attribute với key "orderStats" không --%>
<%--                           <div> <c:if test="${not empty orderStats}">--%>
<%--                                &lt;%&ndash; Hiển thị tổng số đơn đặt hàng trong ngày và xóa Flash Attribute để tránh hiển thị lại khi refresh trang &ndash;%&gt;--%>
<%--                                <div class="alert alert-info">abc${orderStats}</div>--%>
<%--                                &lt;%&ndash; Xóa Flash Attribute &ndash;%&gt;--%>
<%--                                <c:remove var="orderStats" />--%>
<%--                            </c:if>--%>
<%--                           </div>--%>

                    </li>
                    <!-- End Comment -->
                    <!-- Messages -->

                    <!-- End Messages -->
                    <!-- User profile and search -->
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
                    <!-- User profile and search -->
                </ul>
            </div>
        </nav>
    </header>
    <!-- End Topbar header -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <aside class="left-sidebar br" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar br">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <%--               sidebar --%>
                <ul id="sidebarnav" class="p-t-30">
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="RqadMIN" aria-expanded="false"><i class="fab fa-microsoft"></i><span class="hide-menu">Dashboard</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fab fa-product-hunt"></i><span class="hide-menu">Product </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="rqPro" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="reqPro" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="allOrder" aria-expanded="false"><i class="fas fa-pen-square"></i><span class="hide-menu">Order</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-user"></i><span class="hide-menu">Manage Customers</span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="reloadCus" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> New </span></a></li>
                            <li class="sidebar-item"><a href="getAllCus" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                        </ul>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="ads" aria-expanded="false"><i class=" fas fa-calendar-alt"></i><span class="hide-menu">Calendar</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-user"></i><span class="hide-menu">Manage Report</span></a>

                        <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item"><a href="rqReport" class="sidebar-link"><i class="fas fa-clone"></i><span class="hide-menu"> Report </span></a></li>
                        <li class="sidebar-item"><a href="rqReportY" class="sidebar-link"><i class="fas fa-list"></i><span class="hide-menu"> List </span></a></li>
                    </ul>
                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
</head>
