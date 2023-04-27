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
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<%@include file="head.jsp"%>


<div id="main-wrapper" >

<%@include file="nav.jsp"%>

    <div class="page-wrapper" style="min-height: 90%">
        <div class="container-fruit">
    <div class="row">
        <div class="col-sm">
            <div class="row">
                <div class="cards" >
                    <div class="cards_form-hd" >
                        <h6 class="cards_form-text">Product List</h6>
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
                        <h4 class="text-form">List Product Info</h4>
                        <hr style="margin-left: 25px;margin-right: 25px; background: #BB2649;height: 1px">
                        <div class="row element-button" style="margin-left: 40px;">
                            <div class="col-sm-2">
                                <a class="btn btn-add btn-sm" href="rqproduct">Add Product</a>
                            </div>

                        </div>
                        <div class="col-sm-12">
                            <form action="seachPro" method="get">
                            <div class="col-sm-4 input-group rounded search-page">
                                <input type="search" name="name" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" required/>
    <button type="submit" style="width: 70px;margin-right: -12px; border: none"><i class="fas fa-search"></i></button>
                            </div>
                            </form>
                        <table class="data-Table">
                                                                <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Image</th>
                                                                    <th>Name</th>
                                                                    <th>ImprotPrice</th>
                                                                    <th>Price</th>
                                                                    <th>Date</th>
                                                                    <th>Quantity</th>
                                                                    <th>Tool</th>
                                                                </tr>
                                                                </thead>
                                                            <tbody>
                                                                <c:forEach var="s" items="${products}">
                                                                <tr>
                                                                 <td><a href="reqPro?id=${s.id}">${s.id}</a></td>
                                                                    <td><img src="${imagelist[products.indexOf(s)].url}" style="width: 50px; height: 50px" /></td>
                                                                    <td>${s.name}</td>
                                                                    <td>${s.importPrice}</td>
                                                                    <td>${s.price}</td>
                                                                    <td>${s.dates}</td>
                                                                    <td>${s.quantitys}</td>
                                                                    <td>
                                                                        <a href="requestId?id=${s.id}" target="_blank"><botton type="button" class="btn btn-primary btn-sm " style="height: 30px;width: 40px;background:#f5a332;border: none;"><i class="fas fa-edit" style="text-align: center;line-height: 18.5px;"></i></botton></a>
                                                                        <a href="deleteId?id=${s.id}" target="_blank"><button type="button" class="btn btn-danger btn-sm trash" style="height: 30px;width: 40px;border: none;"><i class="fas fa-trash-alt" style="text-align: center;line-height: 18.5px;"></i></button></a>
                                                                    </td>
                                                                </tr>
                                                                </c:forEach>
                                                            </tbody>
                    </table>
                            <div class="form-nav">
                                <nav class="nav-edit" aria-label="Page navigation example">
                                    <ul class="pagination ">

                                        <c:if test="${currentPage > 0}">
                                            <li class="page-item">
                                                <a class="page-link" href="?page=${currentPage - 1}"aria-label="Previous">
                                                    <span aria-hidden="false">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach var="i" begin="0" end="${totalPage - 1}">
                                            <li  class="page-item ${ i >= currentPage +3 || i <= currentPage -3 ?'accest' : ''} ${i == currentPage ?'active':''}">
                                                <a class="page-link" href="?page=${i}">${i + 1} </a>
                                            </li>
                                        </c:forEach>
                                        <c:if test="${currentPage < totalPage -1}">
                                            <li class="page-item">
                                                <a class="page-link" href="?page=${currentPage + 1}" aria-label="Next">
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
</div>


<%@include file="footer.jsp"%>

</body>
</html>