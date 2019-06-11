$(function() {
  $('#button').hide();
  $(window).scroll(function() {
    var windowHeight = $(window).innerHeight();
    var pageHeight = $(document).innerHeight();

    pageBottom = pageHeight - windowHeight;

    if (pageBottom <= $(this).scrollTop()) {
      $('#button').fadeIn();
    } 
  })
});