$(document).ready(function () {
    $("#sidebarCollapse").on("click", function () {
        $("#sidebar, #content").toggleClass("active");
        $(this).toggleClass("active");
        $(".collapse.in").toggleClass("in");
        $("a[aria-expanded=true]").attr("aria-expanded", "false");
    });
    $("#sidebar").mCustomScrollbar({
        theme: "minimal",
    });
});
