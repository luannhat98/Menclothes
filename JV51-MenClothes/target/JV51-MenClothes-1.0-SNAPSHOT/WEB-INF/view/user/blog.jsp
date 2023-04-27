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
    <title>Blog | Men Bay - Shopper</title>
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
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
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
            background: #232015 !important;
            border-radius: 3px;
            border: none;
            min-width: 140px;
        }
        .modal-login .btn:hover, .modal-login .btn:focus {
            background: #232015 !important;
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
            color: #232015;
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

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        Sportswear
                                    </a>
                                </h4>
                            </div>
                            <div id="sportswear" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Nike </a></li>
                                        <li><a href="">Under Armour </a></li>
                                        <li><a href="">Adidas </a></li>
                                        <li><a href="">Puma</a></li>
                                        <li><a href="">ASICS </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        Mens
                                    </a>
                                </h4>
                            </div>
                            <div id="mens" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Fendi</a></li>
                                        <li><a href="">Guess</a></li>
                                        <li><a href="">Valentino</a></li>
                                        <li><a href="">Dior</a></li>
                                        <li><a href="">Versace</a></li>
                                        <li><a href="">Armani</a></li>
                                        <li><a href="">Prada</a></li>
                                        <li><a href="">Dolce and Gabbana</a></li>
                                        <li><a href="">Chanel</a></li>
                                        <li><a href="">Gucci</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        Womens
                                    </a>
                                </h4>
                            </div>
                            <div id="womens" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Fendi</a></li>
                                        <li><a href="">Guess</a></li>
                                        <li><a href="">Valentino</a></li>
                                        <li><a href="">Dior</a></li>
                                        <li><a href="">Versace</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Kids</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Fashion</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Households</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Interiors</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Clothing</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Bags</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Shoes</a></h4>
                            </div>
                        </div>
                    </div><!--/category-products-->

                    <div class="brands_products"><!--brands_products-->
                        <h2>Brands</h2>
                        <div class="brands-name">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#"> <span class="pull-right">(50)</span>Shirt</a></li>
                                <li><a href="#"> <span class="pull-right">(56)</span>T-shirt</a></li>
                                <li><a href="#"> <span class="pull-right">(27)</span>Trousers</a></li>
                                <li><a href="#"> <span class="pull-right">(32)</span>Woven Wool</a></li>
                                <li><a href="#"> <span class="pull-right">(5)</span>Accessory</a></li>
                                <li><a href="#"> <span class="pull-right">(9)</span>Blazers & Coats</a></li>
                                <li><a href="#"> <span class="pull-right">(4)</span>Jeans</a></li>
                                <li><a href="#"> <span class="pull-right">(4)</span>Hoodies & Sweatshirt</a></li>
                            </ul>
                        </div>
                    </div><!--/brands_products-->

                    <div class="price-range"><!--price-range-->
                        <h2>Price Range</h2>
                        <div class="well">
                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                            <b>$ 0</b> <b class="pull-right">$ 600</b>
                        </div>
                    </div><!--/price-range-->

                    <div class="shipping text-center"><!--shipping-->
                        <img src="<c:url value="/template/user/images/home/shipping.jpg"/>" alt="" />
                    </div><!--/shipping-->
                </div>
            </div>
            <div class="col-sm-9">
                <div class="blog-post-area">
                    <h2 class="title text-center">Latest From our Blog</h2>
                    <div class="single-blog-post">
                        <h3>HOW BROOKS BROTHERS FASHION IS CREATED?</h3>
                        <div class="post-meta">
                            <ul>
                                <li><i class="fa fa-user"></i> Mac Doe</li>
                                <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                            </ul>
                            <span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
                        </div>
                        <a href="">
                            <img src="<c:url value="/template/user/images/blog/blog-one.jpg"/>" alt="">
                        </a>
                        <p>
                            In the realm of menswear, sartorial-derived ideas are often extended beyond the original context and dynamically modified to make the products wearable. The button-down shirt is a prime example of such a transition.</p> <br>

                        <p>
                            It all started on a British polo field in 1896 - attended by a spectator named John Brooks, grandson of the founder of Brooks Brothers - one of the most famous and influential brands. most influential in the field of men's clothing in the United States.</p> <br>

                        <p>
                            Polo players at the time had extremely strict dress codes for the role of a formal shirt: buttons were attached to keep the collar attached to the main body of the shirt and prevent they hit the wearer's face. They were also considered a "workaday style" for polo players as part of their daily lives, as well as making an impact on the community of people who cared about dress at the time. .</p> <br>

                        <p>
                            And Brooks saw it and immediately recognized the potential of this model. The Brooks Brothers button-down shirt goes into production. They were originally made from white Oxford cloth, then soon came in pink, and gradually changed to models that used a variety of colors or stripes. Gradually, the shirt became a new symbol of America - representing youth and vitality. They were hugely successful from the moment they went on sale around the 1900s, with their roots in the original polo shirt, which is still one of the best-selling items.
                        </p> <br>

                        <p>The introduction of button-down shirts not only contributed to creating a more "casual" element in men's clothing, but it also gradually helped change the nature of shirts in society. America now. Until then, regular shirts will have no collar and are worn with separate collars that can be attached together, easily removed and washed.</p>

                        <div class="pager-area">
                            <ul class="pager pull-right">
                                <li><a href="#">Pre</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!--/blog-post-area-->

                <div class="rating-area">
                    <ul class="ratings">
                        <li class="rate-this">Rate this item:</li>
                        <li>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </li>
                        <li class="color">(6 votes)</li>
                    </ul>
                    <ul class="tag">
                        <li>TAG:</li>
                        <li><a class="color" href="">Pink <span>/</span></a></li>
                        <li><a class="color" href="">T-Shirt <span>/</span></a></li>
                        <li><a class="color" href="">Girls</a></li>
                    </ul>
                </div><!--/rating-area-->

                <div class="socials-share">
                    <a href=""><img src="<c:url value="/template/user/images/blog/socials.png"/>" alt=""></a>
                </div><!--/socials-share-->

                <div class="media commnets">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="<c:url value="/template/user/images/blog/man-one.jpg"/>" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Annie Davis</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        <div class="blog-socials">
                            <ul>
                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                            <a class="btn btn-primary" href="">Other Posts</a>
                        </div>
                    </div>
                </div><!--Comments-->
                <div class="response-area">
                    <h2>3 RESPONSES</h2>
                    <ul class="media-list">
                        <li class="media">

                            <a class="pull-left" href="#">
                                <img class="media-object" src="<c:url value="/template/user/images/blog/man-two.jpg"/>" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li>
                        <li class="media second-media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="<c:url value="/template/user/images/blog/man-three.jpg"/>" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li>
                        <li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="<c:url value="/template/user/images/blog/man-four.jpg"/>" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li>
                    </ul>
                </div><!--/Response-area-->
                <div class="replay-box">
                    <div class="row">
                        <div class="col-sm-4">
                            <h2>Leave a replay</h2>
                            <form>
                                <div class="blank-arrow">
                                    <label>Your Name</label>
                                </div>
                                <span>*</span>
                                <input type="text" placeholder="write your name...">
                                <div class="blank-arrow">
                                    <label>Email Address</label>
                                </div>
                                <span>*</span>
                                <input type="email" placeholder="your email address...">
                                <div class="blank-arrow">
                                    <label>Web Site</label>
                                </div>
                                <input type="email" placeholder="current city...">
                            </form>
                        </div>
                        <div class="col-sm-8">
                            <div class="text-area">
                                <div class="blank-arrow">
                                    <label>Your Comment</label>
                                </div>
                                <span>*</span>
                                <textarea name="message" rows="11"></textarea>
                                <a class="btn btn-primary" href="">post comment</a>
                            </div>
                        </div>
                    </div>
                </div><!--/Repaly Box-->
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
</body>
</html>