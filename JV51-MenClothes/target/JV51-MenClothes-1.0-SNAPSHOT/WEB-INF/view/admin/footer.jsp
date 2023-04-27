<footer class="footer text-center" style="max-height: 10%">
    All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
</footer>

<script src="<c:url value="/template/admin/assets/libs/jquery/dist/jquery.min.js"/>"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<c:url value="/template/admin/assets/libs/popper.js/dist/popper.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/extra-libs/sparkline/sparkline.js" />"></script>
<!--Wave Effects -->
<script src="<c:url value="/template/admin/dist/js/waves.js" />"></script>
<!--Menu sidebar -->
<script src="<c:url value="/template/admin/dist/js/sidebarmenu.js"/>"></script>
<%--calenda--%>
<!--Custom JavaScript -->
<script src="<c:url value="/template/admin/dist/js/custom.min.js"/>"></script>
<!--This page JavaScript -->
<!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
<!-- Charts js Files -->
<script src="<c:url value="/template/admin/assets/libs/flot/excanvas.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.pie.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.time.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.stack.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot/jquery.flot.crosshair.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"/>"></script>
<script src="<c:url value="/template/admin/dist/js/pages/chart/chart-page-init.js"/>"></script>


<!-- This Page JS -->
<script src="<c:url value="/template/admin/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"/>"></script>
<script src="<c:url value="/template/admin/dist/js/pages/mask/mask.init.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/select2/dist/js/select2.full.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/select2/dist/js/select2.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/jquery-minicolors/jquery.minicolors.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/libs/quill/dist/quill.min.js"/>"></script>
<script>

    $(".select2").select2();

    $('.demo').each(function() {

        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            position: $(this).attr('data-position') || 'bottom left',

            change: function(value, opacity) {
                if (!value) return;
                if (opacity) value += ', ' + opacity;
                if (typeof console === 'object') {
                    console.log(value);
                }
            },
            theme: 'bootstrap'
        });

    });
    /*datwpicker*/
    jQuery('.mydatepicker').datepicker();
    jQuery('#datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true
    });
    var quill = new Quill('#editor', {
        theme: 'snow'
    });

</script>

<script type="text/javascript">
    $(".date").datepicker({
        format: "yyyy-mm-dd",
    });
    $( ".selector" ).datepicker("setDate", new Date());
</script>
<script>
    setInterval(function() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var month = now.getMonth() + 1;
        var day = now.getDate();
        var year = now.getFullYear();
        var ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12;
        hours = hours ? hours : 12;
        minutes = minutes < 10 ? '0' + minutes : minutes;
        seconds = seconds < 10 ? '0' + seconds : seconds;
        var currentTime = hours + ':' + minutes + ':' + seconds + ' ' + ampm + ' ' + month + '/' + day + '/' + year;
        document.getElementById('current-time').innerHTML = currentTime;
    }, 1000);


</script>
<script>
    console.log(${counts})
</script>
