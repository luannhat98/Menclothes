
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Payment Receipt | Men Bay - Shopper</title>
    <link rel="shortcut icon" type="image/png" href="<c:url value="/template/user/images/home/favicon.PNG"/>"/>
    <!-- CSS only -->
    <link href="<c:url value="/template/user/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/price-range.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/main.css"/>" rel="stylesheet">
    <link href="<c:url value="/template/user/css/responsive.css"/>" rel="stylesheet">
    <style type="text/css">
        table { border: 0; }
        table td { padding: 5px; }
    </style>
</head>
<body>
<div align="center">
    <h1>Payment Done. Thank you for purchasing our products</h1>
    <br/>
    <h2>Receipt Details:</h2>
    <table>
        <tr>
            <td><b>Merchant:</b></td>
            <td>MenBay Shoper</td>
        </tr>
        <tr>
            <td><b>Payer:</b></td>
            <td>${payer.firstName} ${payer.lastName}</td>
        </tr>
        <tr>
            <td><b>Order Date:</b></td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td><b>Subtotal:</b></td>
            <td>${transaction.amount.details.subtotal} USD</td>
        </tr>
        <tr>
            <td><b>Shipping:</b></td>
            <td>${transaction.amount.details.shipping} USD</td>
        </tr>
        <tr>
            <td><b>Tax:</b></td>
            <td>${transaction.amount.details.tax} USD</td>
        </tr>
        <tr>
            <td><b>Total:</b></td>
            <td>${transaction.amount.total} USD</td>
        </tr>
    </table>
    <br>
    <br>
    <br>
    <br>
    <div style="position: relative;">
        <a style="position: absolute;top: 80%;left: 20%;transform: translate(-50%, -50%)" href="homePage"
           class="btn btn-default check_out"><i
                class="fa fa-arrow-circle-left"></i>&emsp; Back Home</a>
        <a style="position: absolute;top: 80%;right: 10%;transform: translate(-50%, -50%)" href="userOrder?page=1"
           class="btn btn-default check_out"> Your Order &emsp;<i
                class="fa fa-arrow-circle-right"></i></a>
    </div>
</div>
<script src="<c:url value="/template/user/js/jquery.js"/>"></script>
<script src="<c:url value="/template/user/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/user/js/jquery.scrollUp.min.js"/>"></script>
<script src="<c:url value="/template/user/js/price-range.js"/>"></script>
<script src="<c:url value="/template/user/js/jquery.prettyPhoto.js"/>"></script>
<script src="<c:url value="/template/user/js/main.js"/>"></script>
</body>
</html>