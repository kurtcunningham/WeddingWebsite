// Page Scripts
// ========================================

// Countdown Clock
$("#countdown").countdown("2017/10/06", function(event) {
  $(this).text(
    event.strftime('%D days')
  );
});

// Slider
$("#slideshow > li:gt(0)").hide();

setInterval(function() {
  $('#slideshow > li:first')
    .fadeOut('slow')
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
},  8000);