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
<body>


<div id="main-wrapper">


   <%@include file="nav.jsp"%>
    <div class="page-wrapper">
        <div class="container-fruit">
            <div class="row">
                <div class="col-sm">
                    <div class="row">
                        <div class="cards" >
                    <div class="cards_form-hd" >
                    <h6 class="cards_form-text">Add Product</h6>
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
                        <h4 class="text-form">Product Info</h4>
                            <hr style="margin-left: 25px;margin-right: 25px; background: #BB2649;height: 1px">
                            <div class="row element-button" style="margin-left: 30px;">

                                <div class="col-sm-6" style="display: inline-block; ">
                                   <a class="btn btn-add btn-sm" style="margin-right: 10px;" data-toggle="modal" data-target="#adddanhmuc"><i
                                            class="fas fa-plus"></i> Thêm danh mục</a>


                                           <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#addtinhtrang"><i
                                                   class="fas fa-plus"></i> Thêm tình trạng</a>
                                        <a class="btn btn-add btn-sm" style="width: 130px; margin-left: 10px;" href="requestProduct" ><i class="fa fa-list-alt"></i> List Product</a>

                                </div>
<%--                                <div class="col-sm-2" style="margin-left: -20px;">--%>
<%--                                   --%>
<%--                                </div>--%>
                            </div>


                                <form:form   modelAttribute ="product" action="addproduct" method="post" >
                            <div class="row" >
                                        <div class="col-sm" type="height: 100%">
                                            <div class="row ">
                                                <div class="col-sm-4 form-container"style="height: 100px" >
                                                    <label  class="form_text">Name Product</label>
                                                    <div class="form-content">
                                                        <form:input type="text"  class="input-form-i"  pattern="[a-zA-Z0-9]{1,100}" title="enter name" placeholder="Enter Name Product Here" path="name" />
                                                        <form:errors path="name" cssClass="error" />
                                                    </div>

                                                </div>

                                                <div class="col-sm-4 form-container"style="height: 100px">
                                                    <label  class="form_text">Category Id</label>
                                                    <div class="form-content" style="text-alight:center" >
                                                        <form:select class="input-form-i"  path="categoryId.id"  >
                                                            <form:option value="0" label="--- Select ---" />
                                                            <form:options items="${categorys}" />
                                                        </form:select>
                                                        <form:errors path="categoryId.id" cssClass="error" />

                                                    </div>
                                                </div>
                                                <div class="col-sm-4 form-container "style="height: 100px">
                                                    <label  class="form_text">Import Price</label>
                                                    <div class="form-content">
                                                        <form:input type="text" class="input-form-i" pattern="[0-9.]{1,15}" title="enter number" placeholder="Enter Price" path="importPrice" />
                                                        <form:errors path="importPrice" cssClass="error" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4 form-container"style="height: 100px">
                                                    <label  class="form_text">Price</label>
                                                    <div class="form-content">
                                                        <form:input type="text"   class="input-form-i" pattern="[0-9.]{1,15}" title="enter number" placeholder="Enter Price" path="price"/>
                                                        <form:errors path=  "price" cssClass="error" />

                                                    </div>
                                                </div>
                                                <div class="col-sm-4 form-container"style="height: 100px">
                                                    <label class="form_text">Quantity</label>
                                                    <div class="form-content">
                                                        <form:input type="text"  class="input-form-i" pattern="[0-9]{1,15}" title="enter number" placeholder="Enter Quantity" path="quantitys" />
                                                        <form:errors path="quantitys" cssClass="error" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 form-container"style="height: 100px">
                                                    <label  class="form_text">Date</label>
                                                    <div class="form-content ">
                                                        <form:input type="text"  class="input-form-i date"  placeholder="Enter Date" path="dates"/>
                                                        <form:errors path="dates" cssClass="error" />

                                                    </div>
                                                </div>
                                        </div>
                                            <div class="row">
                                                <div class="col-sm-8 form-container" style="height: 130px">
                                                    <label  class="form_text">Discription</label>
                                                    <div class="form-content "style="top:55%">
                                                        <form:textarea type="text"  class="input-form-ar"  placeholder="Enter Discription" path="descriptions"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 form-container"style="height: 100px">
                                                    <label  class="form_text">Status</label>
                                                    <div class="form-content" style="text-alight:center" >
                                                        <form:select class="input-form-i"  path="status.id"  >
                                                            <form:option value="0" label="--- Select ---" />
                                                            <form:options items="${sta}" />
                                                        </form:select>
                                                        <form:errors path="status.id" cssClass="error" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row" style="margin: 15px 40px 30px;">
                                                <button type="submit" class="btn btn-primary"style="width: 72px; border-radius:5px ;">Save</button>
                                            </div>
                                        </div>
                            </div>
                                </form:form>

                        </div>
                    </div>


                    </div>
                    </div>
                    </div>
            </div>
            </div>
        </div>

<%@include file="footer.jsp"%>
<%@include file="modal.jsp"%>






</body>
</html>