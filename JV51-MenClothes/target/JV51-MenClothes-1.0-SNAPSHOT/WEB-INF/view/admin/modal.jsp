<div class="modal fade" id="adddanhmuc" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="form-modal  col-md-12">
                        <h5>ADD CATEGORY </h5>
                        <hr style="height:1px; background-color:#BB2649;width: 100%">
                    </div>
                    <div class="form-modal   col-md-12">
                        <form:form modelAttribute="category"  action="addCate" method="post">
                        <label class="control-label">Enter a new category name</label>
                        <div><form:input type="text" path="name"/></div>
                        <button class="btn btn-primary" style="width:67px;" type="submit">Save</button>
                        <a class="btn btn-danger" data-dismiss="modal" href="#">Cancle</a>
                    </div>
                    </form:form>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
<!--
MODAL
MODAL TÌNH TRẠNG
-->
<div class="modal fade" id="addtinhtrang" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="form-modal  col-md-12">
                        <h5>ADD STATUS</h5>
                        <hr style="height:1px; background-color:#BB2649;width: 100%">
                    </div>
                    <div class="form-modal   col-md-12">
                        <form:form modelAttribute="status"  action="addSta" method="post">
                        <label class="control-label">Enter a new status name</label>
                        <div><form:input type="text" path="name"/></div>
                        <button class="btn btn-primary" style="width:67px;" type="submit">Save</button>
                        <a class="btn btn-danger" data-dismiss="modal" href="#">Cancle</a>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>