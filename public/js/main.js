jQuery(function($) {
  var currentPageId = "#" + $(".outer_page").attr("id");
  $("ul.nav li").removeClass("active");
  $("ul.nav li" + currentPageId + "_nav").addClass("active");
});
