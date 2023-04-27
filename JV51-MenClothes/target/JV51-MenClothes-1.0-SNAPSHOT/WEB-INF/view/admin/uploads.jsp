<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="nav.jsp"%>
<div class="container" style="margin-top:60px">
    <div class="row">
        <div class="col-md-6">
            <h2>Upload a file..</h2>
            <form:form   modelAttribute="image" action="add"
                       method="POST" enctype="multipart/form-data" >
                <div class="input-group">
                    <label>Select file:</label>q
                    <input name="file" type="file" class="form-control">
                </div>
                <br>
                <form:select class="input-form-i" path="product.id">
                    <form:option value="0" label="--- Select ---" />
                    <form:options items="${cate}" />
                </form:select>

                <button type="submit" class="btn btn-info"> Upload</button>
            </form:form>

        </div>
    </div>
</div>