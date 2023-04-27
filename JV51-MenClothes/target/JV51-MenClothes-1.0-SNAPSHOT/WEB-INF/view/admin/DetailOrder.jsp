<%--
  Created by IntelliJ IDEA.
  User: THIEN DO
  Date: 11/21/2022
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@include file="head.jsp"%>
<body>

<div id="main-wrapper">
  <%@include file="nav.jsp"%>
  <div class="page-wrapper" style="height: 90%">
  <div class="container-fruit" >
    <div class="row">
      <div class="col-sm">
        <div class="row">
          <div class="cards" >
            <div class="cards_form-hd" >
              <h6 class="cards_form-text">Order Detail List</h6>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm">
        <div class="row">
          <div class="cards">
            <div class="cards_form-bd">
              <h4 class="text-form">List Order Detail</h4>
              <hr style="margin-left: 25px;margin-right: 25px; background: #BB2649;height: 1px">
              <div class="row element-button" style="margin-left: 40px;">

              </div>
              <div class="row element-button" style="margin-left: 40px;">
                <table id="zero_config" class="table table-striped table-bordered"  style="width: 95% ; padding-top: 5px">
                  <thead>
                  <tr role="row">
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>OrderID</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="s" items="${orderdetaillist}">
                  <tr>
                    <td>${s.id}</td>
                    <td>${s.productId.name}</td>
                    <td>${s.order.id}</td>
                    <td>${s.quantity}</td>
                    <td>${s.amount}</td>
                  </tr>
                  </c:forEach>
                  </tbody>
                  <tfoot>
                  <td scope="col" colspan="4">Total price</td>
                  <td>${totalAm}</td>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>