<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 1/1/2023
  Time: 10:08 PM
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
    <title>Account | Men Bay - Shopper</title>
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
            padding: 5px 15px;
            background: #ccc;
            border: 0 none;
            cursor: pointer;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        .info{
            background-color: white;
        }
        p {
            margin: 0 0 1px;
        }
        .pagination {
            display: inline-block;
            padding-left: 39%;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
        }

        .pagination a.active {
            background-color: #BB2649;
            color: white;
        }

        .pagination a:hover:not(.active) {background-color: #ddd;}

        table>tbody+tbody {
            border-top: 4px solid #ddd;
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

<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="homePage">Home</a></li>
                <li class="active">Account</li>
            </ol>
        </div>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-2">
                <div class="chose_area">
                    <img style="height: 186px; width: 188.5px" src="<c:url value="/template/user/images/home/User.png"/>">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="total_area">
                    <mvc:form modelAttribute="customer" action="updateCustomer" method="get">
                        <ul>
                            <li class="info">Name <span><mvc:input path="name" type="text" pattern="[A-Za-z]{1,15}" value="${customer.name}"/></span></li>
                            <li class="info">Phone <span><mvc:input path="phone" type="number" pattern=".{1,15}" value="${customer.phone}"/></span></li>
                            <li class="info">Email <span><mvc:input path="email" type="text" value="${customer.email}"/></span></li>
                            <li class="info">Address <span><mvc:input path="address" type="text" value="${customer.address}"/></span></li>
                            <mvc:hidden path="id" value="${customer.id}"/>
                            <li class="info"><span><button type="submit" class="logoutInput" >Save</button></span></li>
                        </ul>
                    </mvc:form>
                </div>
            </div>
        </div>
        <br>
        <br>

        <c:choose>
            <c:when test="${userOrder.isEmpty()}">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <div style="position: relative;"><p
                        style="position: absolute;top: 50%;left: 50%;transform: translate(-50%, -50%)"><img
                        src="<c:url value="/template/user/images/home/OrderEmpty.webp"/>"></p></div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <div style="position: relative;"><a
                        style="position: absolute;top: 80%;left: 20%;transform: translate(-50%, -50%)" href="shop"
                        class="btn btn-default check_out"><i
                        class="fa fa-backward"></i>&emsp; Let's Shopping</a></div>
                <br>
                <br>
            </c:when>
            <c:otherwise>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Item</td>
                            <td class="description"></td>
                            <td class="price">Order Date</td>
                            <td class="quantity">Delivery address</td>
                            <td class="quantity">Status</td>
                            <td class="total">Amount</td>
                        </tr>
                        </thead>
                        <c:forEach var="s" items="${userOrder}" begin="${pageItemBegin}" end="${pageItemEnd}">
                            <tbody>
                            <tr>
                                <td class="cart_product">
                                    <img src="<c:url value="/template/user/images/cart/three.png"/>" alt=""></a>
                                </td>
                                <td class="cart_price">
                                    <h4><a href=""></a></h4>
                                    <p>&emsp;&emsp;&emsp;OrDer ID: ${s.id}</p>
                                    <a data-toggle="collapse" href="#details${s.id}" role="button" aria-expanded="false" aria-controls="collapseExample">
                                        &emsp;&emsp;&emsp;Product Details <i class="fa fa-caret-down"></i>
                                    </a>
                                </td>
                                <td class="cart_price">
                                    <p>${s.orderDate}</p>
                                </td>
                                <td class="cart_price">
                                    <p>${s.shipmentId.address}</p>
                                </td>
                                <td class="cart_price">
                                    <p>${s.statusId.name}</p>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">${s.amount}</p>
                                </td>
                            </tr>
                            </tbody>
                            <tbody id="details${s.id}" class="collapse">
                            <c:forEach var="x" items="${s.orderDetailsList}">
                                <tr>
                                    <td class="cart_product">
                                    </td>
                                    <td class="cart_price">
                                        <h4><a href=""></a></h4>
                                        <p></p>
                                    </td>
                                    <td class="cart_price" colspan="2">
                                        <p style="font-size: 13px">${x.productId.name}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p style="font-size: 13px">X ${x.quantity}</p>
                                    </td>
                                    <td class="cart_price">
                                        <c:choose>
                                            <c:when test="${s.statusId.id == 3}">
                                                <p style="font-size: 13px"><a href="productDetails?id=${x.productId.id}">Review Product <i class="fa fa-comments"></i></a></p>
                                            </c:when>
                                            <c:otherwise>
                                                <p style="font-size: 13px"><a href="productDetails?id=${x.productId.id}">View Product</a></p>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td class="cart_product">
                                </td>
                                <td class="cart_price">
                                    <h4><a href=""></a></h4>
                                    <p></p>
                                </td>
                                <td class="cart_price">
                                    <p></p>
                                </td>
                                <td class="cart_price">
                                    <p style="font-size: 15px"><a data-toggle="collapse" href="#details${s.id}" role="button" aria-expanded="false" aria-controls="collapseExample">
                                        &emsp;&emsp;&emsp;&emsp;&emsp;Product Details <i class="fa fa-caret-up"></i></i>
                                    </a></p>
                                </td>
                                <td class="cart_price">
                                    <p></p>
                                </td>
                                <td class="cart_total">
                                </td>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="pagination">
                    <a href="#">&laquo;</a>
                    <c:forEach var="b" begin="1" end="${totalPage}">
                        <c:choose>
                            <c:when test="${b == pageItemBegin/5+1}">
                                <a class="active" href="userOrder?page=${b}">${b}</a>
                            </c:when>
                            <c:otherwise>
                                <a href="userOrder?page=${b}">${b}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <a href="#">&raquo;</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</section> <!--/#cart_items-->


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
