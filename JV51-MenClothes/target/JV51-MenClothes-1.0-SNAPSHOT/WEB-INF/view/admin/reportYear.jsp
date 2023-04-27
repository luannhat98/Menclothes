<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="head.jsp"%>

<div id="main-wrapper">
    <%@include file="nav.jsp"%>
        <div class="page-wrapper" style="min-height: 90%" >
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
<div class="row">
    <form action="reportY" method="get">
        <div class="col-sm-12 input-group rounded search-page" style="margin: 0;">
            <input type="search" name="name" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" required/>
            <button type="submit" style="width: 70px;margin-right: -12px; border: none"><i class="fas fa-search"></i></button>
        </div>
    </form>
</div>
    </div>

                                    <table class="data-Table">
                                        <thead>
                                        <tr>
                                            <th>Month</th>
                                            <th>Revenue</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="s" items="${report}">
                                            <tr>
                                                <td>${s.month}</td>
                                                <td>${s.revenue}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <td scope="col" colspan="1">Total price</td>
                                        <td>${total}</td>
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
</div>

<%@include file="footer.jsp"%>
</body>
</html>