$(function () {
    var bindDatePicker = function() {
        $(".date").datetimepicker({
            format:'YYYY-MM-DD',
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            }
        }).find('input:first').on("blur",function () {
            // check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
            // update the format if it's yyyy-mm-dd
            var date = parseDate($(this).val());

            if (! isValidDate(date)) {
                //create date based on momentjs (we have that)
                date = moment().format('YYYY-MM-DD');
            }

            $(this).val(date);
        });
    }

    var isValidDate = function(value, format) {
        format = format || false;
        // lets parse the date to the best of our knowledge
        if (format) {
            value = parseDate(value);
        }

        var timestamp = Date.parse(value);

        return isNaN(timestamp) == false;
    }

    var parseDate = function(value) {
        var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
        if (m)
            value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

        return value;
    }

    bindDatePicker();
});
// </paging>
    function getPageList(totalPages, page, maxLength){
    function range(start, end){
        return Array.from(Array(end - start + 1), (_, i) => i + start);
    }

    var sideWidth = maxLength < 9 ? 1 : 2;
    var leftWidth = (maxLength - sideWidth * 2 - 3) >> 1;
    var rightWidth = (maxLength - sideWidth * 2 - 3) >> 1;

    if(totalPages <= maxLength){
    return range(1, totalPages);
}

    if(page <= maxLength - sideWidth - 1 - rightWidth){
    return range(1, maxLength - sideWidth - 1).concat(0, range(totalPages - sideWidth + 1, totalPages));
}

    if(page >= totalPages - sideWidth - 1 - rightWidth){
    return range(1, sideWidth).concat(0, range(totalPages- sideWidth - 1 - rightWidth - leftWidth, totalPages));
}

    return range(1, sideWidth).concat(0, range(page - leftWidth, page + rightWidth), 0, range(totalPages - sideWidth + 1, totalPages));
}

    $(function(){
    var limitPerPage = 1; //How many card items visible per a page
    var totalPages = 30;
    var paginationSize = 7; //How many page elements visible in the pagination
    var currentPage;

    function showPage(whichPage){
    if(whichPage < 1 || whichPage > totalPages)
    return false;

    currentPage = whichPage;

    $(".card-content .card").hide().slice((currentPage - 1) * limitPerPage, currentPage * limitPerPage).show();

    $(".pagination li").slice(1, -1).remove();


    getPageList(totalPages, currentPage, paginationSize).forEach(item => {


    $("<li>").addClass("page-item").addClass(item ? "current-page" : "dots")
    .toggleClass("active", item === currentPage).append($("<a>").addClass("page-link")
    .attr({href: `http://localhost:8080/JV51_MenClothes_war_exploded/${currentPage}`}).text(item || "...")).insertBefore(".next-page");
});


    $(".previous-page").toggleClass("disable", currentPage === 1);
    $(".next-page").toggleClass("disable", currentPage === totalPages);
    return true;
}

    $(".pagination").append(
    $("<li>").addClass("page-item").addClass("previous-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Prev")),
    $("<li>").addClass("page-item").addClass("next-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Next"))
    );

    $(".card-content").show();
    showPage(1);

    $(document).on("click", ".pagination li.current-page:not(.active)", function(){
    return showPage(+$(this).text());
});

    $(".next-page").on("click", function(){
    return showPage(currentPage + 1);
});

    $(".previous-page").on("click", function(){
    return showPage(currentPage - 1);
});
});
//test paging



