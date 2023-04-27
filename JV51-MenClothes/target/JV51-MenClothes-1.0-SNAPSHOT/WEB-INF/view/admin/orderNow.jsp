<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<%@include file="head.jsp"%>

<div id="main-wrapper" >

    <%@include file="nav1.jsp"%>

    <div class="page-wrapper" style="min-height: 90%" >
        <div class="container-fruit">
            <div class="row">
                <div class="col-sm">
                    <div class="row">
                        <div class="cards" >
                            <div class="cards_form-hd" >
                                <h6 class="cards_form-text">Order List</h6>
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
                                <h4 class="text-form">List Order Info</h4>
                                <hr style="margin-left: 25px;margin-right: 25px; background: #BB2649;height: 1px">
                                <div class="row element-button" style="margin-left: 40px;">
                                    <div class="col-sm-2">
                                        <a class="btn btn-add btn-sm" href="rqproduct">Add Product</a>
                                    </div>

                                </div>
                                <div class="col-sm-12" >
                                    <div class="row">
                                    </div>
                                    <table class="data-Table">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Account</th>
                                            <th>OrderDate</th>
                                            <th>Amount</th>
                                            <th>Shipment</th>
                                            <th>Status</th>
                                            <th>Promotion</th>
                                            <th>Payment</th>
                                            <th>Tool</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="s" items="${orderNow}">
                                            <tr>
                                                <td><a href="requestIdOr?id=${s.id}">${s.id}</a></td>
                                                <td>${s.accountId.username}</td>
                                                <td>${s.orderDate}</td>
                                                <td>${s.amount}</td>
                                                <td>${s.shipmentId.customerName}</td>
                                                <td>${s.statusId.name}</td>
                                                <td>${s.promoId.name}</td>
                                                <td>${s.paymentId.name}</td>

                                                <td>
                                                    <a href="deleteId?id=${s.id}" target="_blank"><button type="button" class="btn btn-danger btn-sm trash" style="height: 30px;width: 40px;border: none;"><i class="fas fa-trash-alt" style="text-align: center;line-height: 18.5px;"></i></button></a>
                                                    <a href="requestIdOr?id=${s.id}" target="_blank"><button type="button" class="btn btn-danger btn-sm trash" style="height: 30px;width: 60px;border: none;background-color: #5897fb;">Detail</button></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="form-nav">
                                        <nav class="nav-edit" aria-label="Page navigation example">
                                            <ul class="pagination ">
                                                <c:if test="${currentpage > 0}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage - 1}"aria-label="Previous">
                                                            <span aria-hidden="false">&laquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="0" end="${total - 1}">
                                                    <li  class="page-item ${ i >= currentpage +3 || i <= currentpage -3 ?'accest' : ''} ${i == currentpage ?'active':''}">
                                                        <a class="page-link" href="?page=${i}">${i + 1} </a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${currentpage < total -1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage + 1}" aria-label="Next">
                                                            <span aria-hidden="false">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>

                                            </ul>

                                        </nav>

                                </div>

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

