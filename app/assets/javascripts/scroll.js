$(function() {
  $('#button').hide();
  var windowHeight = $(window).innerHeight();
  var pageHeight = $(document).innerHeight();

  pageBottom = pageHeight - windowHeight;
  console.log(pageBottom);
  if (pageBottom === 0) {
    console.log('***');
    $('#button').fadeIn(2000);
  } else {
    $(window).scroll(function() {
      if (pageBottom <= $(this).scrollTop()) {
        $('#button').fadeIn(2000);
      } 
    });
  }
});