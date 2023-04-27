<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 30/12/2022
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Men Bay - Shopper</title>
    <link rel="shortcut icon" type="image/png" href="<c:url value="/template/user/images/home/favicon.PNG"/>"/>
    <!-- CSS only -->
    <link href="<c:url value="/template/user/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/price-range.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/main.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/responsive.css"/>" rel="stylesheet">
    <style>
        .logo {
            width: 60%;
            height: 60%;
        }
        #formSearch {
            color: #BB2649;
            display: flex;
            padding: 2px;
            border: 1px solid currentColor;
            border-radius: 5px;
            margin: 0 0 30px;
        }

        #inputSearch[type="search"] {
            border: none;
            background: transparent;
            margin: 0;
            width: 250px;
            height: 25px;
            padding: 7px 8px;
            font-size: 14px;
            color: inherit;
            border: 1px solid transparent;
            border-radius: inherit;
        }

        #inputSearch[type="search"]::placeholder {
            color: #bbb;
        }

        #buttonSearch[type="submit"] {
            text-indent: -999px;
            overflow: hidden;
            width: 40px;
            padding: 0;
            margin: 0;
            border: 1px solid transparent;
            border-radius: inherit;
            background: transparent url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' class='bi bi-search' viewBox='0 0 16 16'%3E%3Cpath d='M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z'%3E%3C/path%3E%3C/svg%3E") no-repeat center;
            cursor: pointer;
            opacity: 0.7;
        }

        #buttonSearch[type="submit"]:hover {
            opacity: 1;
        }

        #buttonSearch[type="submit"]:focus,
        input[type="search"]:focus {
            box-shadow: 0 0 3px 0 #BB2649;
            border-color: #BB2649;
            outline: none;
        }
        .logoutInput[type=submit] {
            padding:5px 15px;
            background:#ccc;
            border:0 none;
            cursor:pointer;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        body {
            font-family: 'Varela Round', sans-serif;
        }
        .modal-login {
            width: 350px;
        }
        .modal-login .modal-content {
            padding: 20px;
            border-radius: 5px;
            border: none;
        }
        .modal-login .modal-header {
            border-bottom: none;
            position: relative;
            justify-content: center;
        }
        .modal-login .close {
            position: absolute;
            top: -10px;
            right: -10px;
        }
        .modal-login h4 {
            color: #636363;
            text-align: center;
            font-size: 26px;
            margin-top: 0;
        }
        .modal-login .modal-content {
            color: #999;
            border-radius: 1px;
            margin-bottom: 15px;
            background: #fff;
            border: 1px solid #f3f3f3;
            box-shadow: 0px 2px 2px #BB2649;
            padding: 25px;
        }
        .modal-login .form-group {
            margin-bottom: 20px;
        }
        .modal-login label {
            font-weight: normal;
            font-size: 13px;
        }
        .modal-login .form-control {
            min-height: 38px;
            padding-left: 5px;
            box-shadow: none !important;
            border-width: 0 0 1px 0;
            border-radius: 0;
        }
        .modal-login .form-control:focus {
            border-color: #ccc;
        }
        .modal-login .input-group-addon {
            max-width: 42px;
            text-align: center;
            background: none;
            border-bottom: 1px solid #ced4da;
            padding-right: 5px;
            border-radius: 0;
        }
        .modal-login .btn, .modal-login .btn:active {
            font-size: 16px;
            font-weight: bold;
            background: #BB2649 !important;
            border-radius: 3px;
            border: none;
            min-width: 140px;
        }
        .modal-login .btn:hover, .modal-login .btn:focus {
            background: #BB2649 !important;
        }
        .modal-login .hint-text {
            text-align: center;
            padding-top: 5px;
            font-size: 13px;
        }
        .modal-login .modal-footer {
            color: #999;
            border-color: #dee4e7;
            text-align: center;
            margin: 0 -25px -25px;
            font-size: 13px;
            justify-content: center;
        }
        .modal-login a {
            color: #fff;
            text-decoration: underline;
        }
        .modal-login a:hover {
            text-decoration: none;
        }
        .modal-login a {
            color: #BB2649;
            text-decoration: none;
        }
        .modal-login a:hover {
            text-decoration: underline;
        }
        .modal-login .fa {
            font-size: 21px;
            position: relative;
            top: 6px;
        }
        .trigger-btn {
            display: inline-block;
            margin: 100px auto;
        }
    </style>

</head><!--/head-->

<body>
<div id="myModalRegist" class="modal fade">
    <mvc:form modelAttribute="account" action="addAccountUser" method="post">
        <div class="modal-dialog modal-login">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Register</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <mvc:input path="username" type="text" class="form-control" name="account name"
                                       placeholder="Account Name" required="required" pattern="[A-Za-z0-9_]{1,15}"
                                       title="Username should only contain lowercase letters and contains no special characters . e.g. John123 "/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <mvc:input path="password" type="password" class="form-control" name="pw1"
                                       placeholder="Password" required="required"
                                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                       title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
                            <mvc:hidden path="enabled" value="1"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-check-label"><input type="checkbox" required="required"> I accept the <a
                                href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
                    </div>
                    <p style="color: red;font-style: italic">${message}</p>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block btn-lg">Register Now</button>
                    </div>
                </div>
                <div class="text-center">Already have an account? <a href="#myModalLogin" data-toggle="modal">Sign in</a></div>
            </div>
        </div>
    </mvc:form>
</div>
<div id="myModalLogin" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Sign In</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form name='loginForm' action="j_spring_security_login" method='POST'>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type='text' name='username' class="form-control" placeholder="Username" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type='password' name='password' class="form-control" placeholder="Password" required="required">
                        </div>
                    </div>
                    <p style="color: red;font-style: italic">${message}</p>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block btn-lg">Sign In</button>
                    </div>
                    <p class="hint-text"><a href="#">Forgot Password?</a></p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
            </div>
            <div class="modal-footer">Don't have an account? <a href="#myModalRegist" data-toggle="modal">Create one</a></div>
        </div>
    </div>
</div>

<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="homePage"><img src="<c:url value="/template/user/images/home/logo.png"/>" alt="logo"
                                                class="logo"/></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="row" style="border: none;margin-bottom: -10px;">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="viewCart"><i class="fa fa-shopping-cart"></i> Cart&emsp;${Order.orderDetailsList.size()}</a></li>
                                <c:choose>
                                    <c:when test="${user == null}">
                                        <li><a href="#myModalLogin" data-toggle="modal"><i class="fa fa-sign-in"></i>Login</a></li>
                                        <li><a href="#myModalRegist" data-toggle="modal"><i class="fa fa-sign-in"></i>Regist</a></li>
                                    </c:when>
                                    <c:when test="${user != null}">
                                        <c:choose>
                                            <c:when test="${role.role.equals('ROLE_ADMIN')}">
                                                <li><a href="userOrder?page=1"><i class="fa fa-user"></i>Hi,&emsp;${customer.name}</a></li>
                                                <li><a href="adminPage">Admin</a></li>
                                                <li><form action="j_spring_security_logout" method="post">
                                                    <input class="btn btn-default check_out" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                    <input class="logoutInput" type="submit" value="logout">
                                                </form></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="userOrder?page=1"><i class="fa fa-user"></i>Hi,&emsp;${customer.name}</a></li>
                                                <li><form action="j_spring_security_logout" method="post">
                                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                    <input class="logoutInput" type="submit" value="logout">
                                                </form></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="homePage" class="active">Home</a></li>
                            <li><a href="shop?page=1" class="active">Shop</a></li>
                            <li class="dropdown"><a href="#">Account<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="userOrder?page=1">Account</a></li>
                                    <li><a href="viewCart">Cart</a></li>
                                    <c:choose>
                                        <c:when test="${user == null}">
                                            <li><a href="userOrder?page=1">Login</a></li>
                                            <li><a href="regist">Regist</a></li>
                                        </c:when>
                                        <c:when test="${user != null}">
                                            <c:choose>
                                                <c:when test="${role.role.equals('ROLE_ADMIN')}">
                                                    <li><a href="userOrder?page=1"><i class="fa fa-user"></i>Hi,&emsp;${customer.name}</a></li>
                                                    <li><a href="adminPage">Admin</a></li>
                                                    <li><form action="j_spring_security_logout" method="post">
                                                        <input class="btn btn-default check_out" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                        <input class="logoutInput" type="submit" value="logout">
                                                    </form></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a href="userOrder?page=1"><i class="fa fa-user"></i>Hi,&emsp;${customer.name}</a></li>
                                                    <li><form action="j_spring_security_logout" method="post">
                                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                        <input class="logoutInput" type="submit" value="logout">
                                                    </form></li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:when>
                                    </c:choose>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="#">Category<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="seachCategory?category=T-Shirt">Shirt & T-shirt</a></li>
                                    <li><a href="seachCategory?category=Jeans">Jeans</a></li>
                                    <li><a href="seachCategory?category=BlazersCoats">Blazers & Coats</a></li>
                                    <li><a href="seachCategory?category=HoodiesSweatshirt">Hoodies & Sweatshirt</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="blog">Blog Single</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <form action="seachProduct" method="get" id="formSearch">
                            <input type="search" name="seachText" pattern=".{1,}" placeholder="Search"
                                   title="Please Enter the item you want to search" id="inputSearch"/>
                            <button type="submit" id="buttonSearch">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>MEN BAY</span>-shopper</h1>
                                <h2>Gentleman style</h2>
                                <p>Men Bay wishes to bring customers a lean lifestyle with sophisticated fashion
                                    products. </p>
                                <a href="shop?page=1" type="button" class="btn btn-default get">Get it now</a>
                            </div>
                            <div class="col-sm-6">
                                <img src="<c:url value="/template/user/images/home/men1.jpg"/>"
                                     class="girl img-responsive" alt=""/>
                                <%--                                <img src="<c:url value="/template/user/images/home/pricing.png"/>"  class="pricing" alt="" />--%>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>MEN BAY</span>-shopper</h1>
                                <h2>Gentleman style</h2>
                                <p>Men Bay wishes to bring customers a lean lifestyle with sophisticated fashion
                                    products. </p>
                                <a href="shop?page=1" type="button" class="btn btn-default get">Get it now</a>
                            </div>
                            <div class="col-sm-6">
                                <img src="<c:url value="/template/user/images/home/men2.jpg"/>"
                                     class="girl img-responsive" alt=""/>
                                <%--                                <img src="<c:url value="/template/user/images/home/pricing.png"/>"  class="pricing" alt="" />--%>
                            </div>
                        </div>

                        <%--                        <div class="item">--%>
                        <%--                            <div class="col-sm-6">--%>
                        <%--                                <h1><span>MEN BAY</span>-shopper</h1>--%>
                        <%--                                <h2>Gentleman style</h2>--%>
                        <%--                                <p>Men Bay wishes to bring customers a lean lifestyle with sophisticated fashion products. </p>--%>
                        <%--                                <button type="button" class="btn btn-default get">Get it now</button>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="col-sm-6">--%>
                        <%--                                <img src="<c:url value="/template/user/images/home/men3.jpg"/>" class="girl img-responsive" alt="" />--%>
                        <%--                                <img src="<c:url value="/template/user/images/home/pricing.png"/>" class="pricing" alt="" />--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Search</h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                        <form action="seachPrice" method="get">
<%--                            <div class="panel panel-default">--%>
<%--                                <div class="panel-heading">--%>
<%--                                    <h4 class="panel-title">--%>
<%--                                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">--%>
<%--                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>--%>
<%--                                            Lọc Theo Loại--%>
<%--                                        </a>--%>
<%--                                    </h4>--%>
<%--                                </div>--%>
<%--                                <div id="sportswear" class="panel-collapse collapse">--%>
<%--                                    <div class="panel-body">--%>
<%--                                        <ul>--%>

<%--                                            <li><input type="checkbox"> Chanel</li>--%>
<%--                                            <li><input type="checkbox"> Tom</li>--%>
<%--                                            <li><input type="checkbox"> Gussi</li>--%>
<%--                                            <li><input type="checkbox"> Dior</li>--%>

<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Search by price
                                        </a>
                                    </h4>
                                </div>
                                <div id="womens" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><input type="radio" name="price" value="0">&emsp;0-40$</li>
                                            <li><input type="radio" name="price" value="40">&emsp;40$-100$</li>
                                            <li><input type="radio" name="price" value="100">&emsp;100$-1000$</li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <button type="submit" class="btn btn-default check_out" >Search</button>
                                </div>
                            </div>
                        </form>

                    </div>

                    <div class="brands_products"><!--brands_products-->
                        <h2>Category</h2>
                        <div class="brands-name">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="seachCategory?category=T-Shirt"> <span
                                        class="pull-right">(${quatity1})</span>Shirt & T-shirt</a></li>
                                <li><a href="seachCategory?category=Jeans"> <span
                                        class="pull-right">(${quatity2})</span>Jeans</a></li>
                                <li><a href="seachCategory?category=BlazersCoats"> <span class="pull-right">(${quatity3})</span>Blazers & Coats</a></li>
                                <li><a href="seachCategory?category=HoodiesSweatshirt"> <span
                                        class="pull-right">(${quatity4})</span>Hoodies & Sweatshirt</a></li>
                            </ul>
                        </div>
                    </div><!--/brands_products-->
                    <!--price-range-->
                    <!-- <div class="price-range">
                        <div class="well text-center">
                             <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                             <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                        </div>
                    </div> /price-range-->

                    <div class="shipping text-center"><!--shipping-->
                        <img src="<c:url value="/template/user/images/home/shipping.jpg"/>" alt=""/>
                    </div><!--/shipping-->

                </div>
            </div>
            <c:choose>
                <c:when test="${Image!=null}">
                    <h2 class="title text-center">Top Seller</h2>
                </c:when>
                <c:when test="${seachProdcut!=null}">
                    <h2 class="title text-center">Seach Product</h2>
                </c:when>
                <c:when test="${categorySeach!=null}">
                    <h2 class="title text-center">Seach Category</h2>
                </c:when>
                <c:when test="${seachProductPrice!=null}">
                    <h2 class="title text-center">Seach Price</h2>
                </c:when>
            </c:choose>
            <div class="col-sm-9 padding-right">
                <div class="features_items">
                    <c:forEach var="s" items="${seachProdcut}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class=".single-products">
                                    <div class="productinfo text-center">
                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                alt="" style="width: 260px; height: 390px"/></a>
                                        <h2>${s.productId.price}$</h2>
                                        <p>${s.productId.name}</p>
                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach var="s" items="${Image}" begin="0" end="5">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class=".single-products">
                                    <div class="productinfo text-center">
                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                alt="" style="width: 260px; height: 390px"/></a>
                                        <h2>${s.productId.price}$</h2>
                                        <p>${s.productId.name}</p>
                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach var="s" items="${categorySeach}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class=".single-products">
                                    <div class="productinfo text-center">
                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                alt="" style="width: 260px; height: 390px"/></a>
                                        <h2>${s.productId.price}$</h2>
                                        <p>${s.productId.name}</p>
                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach var="s" items="${seachProductPrice}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class=".single-products">
                                    <div class="productinfo text-center">
                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                alt="" style="width: 260px; height: 390px"/></a>
                                        <h2>${s.productId.price}$</h2>
                                        <p>${s.productId.name}</p>
                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div><!--features_items-->
                <c:choose>
                    <c:when test="${ImageCategory != null}">
                        <div class="category-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#Jeans" data-toggle="tab">Jeans</a></li>
                                    <li><a href="#T-Shirt" aria-expanded="false" data-toggle="tab">T-Shirt</a></li>
                                    <li><a href="#Jacket" aria-expanded="false" data-toggle="tab">jacket</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="Jeans">
                                    <c:forEach var="s" items="${ImageCategory}" begin="0" end="3">
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                                alt=""/></a>
                                                        <h2>${s.productId.price}$</h2>
                                                        <p>${s.productId.name}</p>
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                                <div class="tab-pane fade" id="T-Shirt">
                                    <c:forEach var="s" items="${ImageCategory2}" begin="0" end="3">
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                                alt=""/></a>
                                                        <h2>${s.productId.price}$</h2>
                                                        <p>${s.productId.name}</p>
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                                <div class="tab-pane fade" id="Jacket">
                                    <c:forEach var="s" items="${ImageCategory3}" begin="0" end="3">
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                                src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                                alt=""/></a>
                                                        <h2>${s.productId.price}$</h2>
                                                        <p>${s.productId.name}</p>
                                                        <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div>
                        </div><!--/category-tab-->
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${Image != null}">
                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">Maybe you are interested</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <c:forEach var="s" items="${Image}" begin="0" end="2">
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                                    src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                                    alt=""/></a>
                                                            <h2>${s.productId.price}$</h2>
                                                            <p>${s.productId.name}</p>
                                                            <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                                    class="fa fa-shopping-cart"></i>Add to cart</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="item">
                                        <c:forEach var="s" items="${Image}" begin="3" end="5">
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <a href="productDetails?id=${s.productId.id}" target="_blank"><img
                                                                    src="<c:url value="/template/user/images/home/${s.image}.jpg"/>"
                                                                    alt=""/></a>
                                                            <h2>${s.productId.price}$</h2>
                                                            <p>${s.productId.name}</p>
                                                            <a href="productDetails?id=${s.productId.id}" target="_blank" class="btn btn-default add-to-cart"><i
                                                                    class="fa fa-shopping-cart"></i>Add to cart</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div><!--/recommended_items-->
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
</section>

<footer id="footer"><!--Footer-->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="companyinfo">
                        <h2><span>MEN BAY</span>-shopper</h2>
                        <p>Men Bay wishes to bring customers a lean lifestyle with sophisticated fashion products.</p>
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="col-sm-3">
                        <div class="video-gallery text-center">
                            <a href="#">
                                <div class="iframe-img">
                                    <img src="<c:url value="/template/user/images/home/iframe1.png"/>" alt="" />
                                </div>
                                <div class="overlay-icon">
                                    <i class="fa fa-play-circle-o"></i>
                                </div>
                            </a>
                            <p>Circle of Hands</p>
                            <h2>24 DEC 2014</h2>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="video-gallery text-center">
                            <a href="#">
                                <div class="iframe-img">
                                    <img src="<c:url value="/template/user/images/home/iframe2.png"/>" alt="" />
                                </div>
                                <div class="overlay-icon">
                                    <i class="fa fa-play-circle-o"></i>
                                </div>
                            </a>
                            <p>Circle of Hands</p>
                            <h2>24 DEC 2014</h2>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="video-gallery text-center">
                            <a href="#">
                                <div class="iframe-img">
                                    <img src="<c:url value="/template/user/images/home/iframe3.png"/>" alt="" />
                                </div>
                                <div class="overlay-icon">
                                    <i class="fa fa-play-circle-o"></i>
                                </div>
                            </a>
                            <p>Circle of Hands</p>
                            <h2>24 DEC 2014</h2>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="video-gallery text-center">
                            <a href="#">
                                <div class="iframe-img">
                                    <img src="<c:url value="/template/user/images/home/iframe4.png"/>" alt="" />
                                </div>
                                <div class="overlay-icon">
                                    <i class="fa fa-play-circle-o"></i>
                                </div>
                            </a>
                            <p>Circle of Hands</p>
                            <h2>24 DEC 2014</h2>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="address">
                        <img src="<c:url value="/template/user/images/home/map.png"/>" alt="" />
                        <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Service</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Online Help</a></li>
                            <li><a href="">Contact Us</a></li>
                            <li><a href="">Order Status</a></li>
                            <li><a href="">Change Location</a></li>
                            <li><a href="">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Quock Shop</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">T-Shirt</a></li>
                            <li><a href="">Mens</a></li>
                            <li><a href="">Womens</a></li>
                            <li><a href="">Gift Cards</a></li>
                            <li><a href="">Shoes</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Policies</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Terms of Use</a></li>
                            <li><a href="">Privecy Policy</a></li>
                            <li><a href="">Refund Policy</a></li>
                            <li><a href="">Billing System</a></li>
                            <li><a href="">Ticket System</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Company Information</a></li>
                            <li><a href="">Careers</a></li>
                            <li><a href="">Store Location</a></li>
                            <li><a href="">Affillate Program</a></li>
                            <li><a href="">Copyright</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="Your email address" />
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                            <p>Get the most recent updates from <br />our site and be updated your self...</p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2023 MENBAY-SHOPPER Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank" href="https://www.facebook.com/">LuanLee</a></span></p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->
<script src="<c:url value="/template/user/js/jquery.js"/>"></script>
<script src="<c:url value="/template/user/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/user/js/jquery.scrollUp.min.js"/>"></script>
<script src="<c:url value="/template/user/js/price-range.js"/>"></script>
<script src="<c:url value="/template/user/js/jquery.prettyPhoto.js"/>"></script>
<script src="<c:url value="/template/user/js/main.js"/>"></script>

</body>
</html>
