<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<%@include file="head.jsp"%>
<div id="main-wrapper" >

    <%@include file="nav1.jsp"%>

    <div class="page-wrapper" style="min-height: 90%">
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
                                <div class="col-sm-12">
                                    <div class="row">

                                    <form id="store" action="SearchDate" method="get" cssStyle="height: 65px; background-color: #BB2649; width: 95%; border-radius: 7px;">
                                        <div style="margin: 15px 46px">
                                            <div class="input-group " style="height: 35px; float: left;border:none; width:170px; ">
                                                <input type="text" class="date form-control selector" name="name"/>
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                            <div style="float: left; height: 35px; width:50px; text-align: center;line-height:35px;color: #000 ">To</div>
                                            <div class="input-group "  style="height: 35px; float: left;border:none; width:170px; ">
                                                <input type="text" class="date form-control selector" name="name1"/>
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                            <button style="margin-left :20px;height: 35px;border: 1px solid #e9ecef; float: left;  width:80px; background-color:#f8f9fa; color: #4F5467; " type="submit" ><i class="fas fa-search"></i></button>

                                        </div>
                                    </form>

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
                                        <c:forEach var="s" items="${Search}">
                                            <tr>
                                                <td>${s.id}</td>
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
                                                <c:if   test="${not empty total}">
                                                <c:if test="${currentpage > 0}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage - 1}&name=${name}&name1=${name1}" aria-label="Previous">
                                                            <span aria-hidden="false">&laquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="0" end="${total - 1}">
                                                    <li  class="page-item ${ i >= currentpage +3 || i <= currentpage -3 ?'accest' : ''} ${i == currentpage ?'active':''}">
                                                        <a class="page-link" href="?page=${i}&name=${name}&name1=${name1}">${i + 1} </a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${currentpage < total -1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage + 1}&name=${name}&name1=${name1}" aria-label="Next">
                                                            <span aria-hidden="false">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
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



<%@include file="footer.jsp"%>

