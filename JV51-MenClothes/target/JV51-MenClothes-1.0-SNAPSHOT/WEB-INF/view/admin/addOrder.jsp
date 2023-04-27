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
<%@include file="head.jsp"%>

<div id="main-wrapper">
  <%@include file="nav.jsp"%>
    <div class="page-wrapper">
        <div class="container-fruit">
            <div class="row">
                <div class="card-body">
                    <h6 class="card-title">Add Product</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="page-wrapper" style="height: 90%">
        <div class="container-fruit">
            <div class="row">
                <div class="col-6">
                    <form class="form-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">Product Info</h4>
                            <form:form  modelAttribute ="order" action="addorder" method="post">
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">Account Id</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="accountId.id" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">Payment Id</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Category" path="paymentId.id"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">PromoID</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="promoId.id"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">statusId</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Name Product Here" path="statusId.id"/>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 text-right control-label col-form-label">shiptmentId</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname"  path="shipmentId.id"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">Amount</label>
                                    <div class="col-sm-9">
                                        <form:input type="text" class="form-control" id="fname" placeholder="Enter Date" path="amount"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label  class="col-sm-3 text-right control-label col-form-label">Order date</label>
                                    <div class="col-sm-9">
                                        <form:textarea class="form-control" placeholder="Enter Discription" path="orderDate" />
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </form:form>
                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>