<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="head.jsp"%>

<div id="main-wrapper">
    <%@include file="nav.jsp"%>
        <div class="page-wrapper" >
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
    <div class="row element-button" style="margin-left: 40px;">
<%--        <form id="store" action="reportP" method="get" cssStyle="height: 65px; background-color: #BB2649; width: 95%; border-radius: 7px;">--%>
<%--            <div style="margin: 15px 0">--%>
<%--                <div class="input-group " style="height: 35px; float: left;border:none; width:170px; ">--%>
<%--                    <input type="text" class="date form-control selector" name="name"/>--%>
<%--                    <div class="input-group-append">--%>
<%--                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div style="float: left; height: 35px; width:50px; text-align: center;line-height:35px;color: white ">To</div>--%>
<%--                <div class="input-group "  style="height: 35px; float: left;border:none; width:170px; ">--%>
<%--                    <input type="text" class="date form-control selector" name="name1"/>--%>
<%--                    <div class="input-group-append">--%>
<%--                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <button style="height: 35px;border: none; float: left;  width:80px;background-color: white; color:#BB2649;" type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>--%>
<%--            </div>--%>
<%--        </form>--%>
    <form id="store" action="reportP" method="get" cssStyle="height: 65px; background-color: #BB2649; width: 95%; border-radius: 7px;">
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
                                            <th>Date</th>
                                            <th>Quantity</th>
                                            <th>Revenue</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        <c:forEach var="s" items="${ReportPD}">
                                            <tr>
                                                <td>${s.id}</td>
                                                <td>${s.date}</td>
                                                <td>${s.quantity}</td>
                                                <td>${s.revenue}</td>

                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                        <tfoot>
                                        <td scope="col" colspan="3">Total price</td>
                                        <td>${total}</td>
                                        </tfoot>
                                    </table>
                                    <div class="form-nav">
                                        <nav class="nav-edit" aria-label="Page navigation example">
                                            <ul class="pagination ">
                                                <c:choose>
                                                <c:when test="${currentpage==null}">
                                                    <p></p>
                                                </c:when>
                                                    <c:otherwise>
                                                <c:if test="${currentpage > 0}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage - 1}&name=${name}&name1=${name1}"aria-label="Previous">
                                                            <span aria-hidden="false">&laquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="0" end="${totalPage - 1}">
                                                    <li  class="page-item ${ i >= currentpage +3 || i <= currentpage -3 ?'accest' : ''} ${i == currentpage ?'active':''}">
                                                        <a class="page-link" href="?page=${i}&name=${name}&name1=${name1}">${i + 1} </a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${currentpage < totalPage -1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="?page=${currentpage + 1}&name=${name}&name1=${name1}" aria-label="Next">
                                                            <span aria-hidden="false">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                            </nav>
                                    </div>
                                     </c:otherwise>
                                </c:choose>
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