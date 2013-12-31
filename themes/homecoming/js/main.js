$(window).load(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');

  // Colorbox 
  jQuery('.button-item .gallery').colorbox({rel:'gallery'});


	// Flexslider
	$('.flexslider').flexslider({
		slideshow: false,
    controlNav: false
	});
  // Sponsor Flexslider
  $('.flexslider-sponsor').flexslider({
    animation: "slide",
    easing: "swing",
    slideshow: true,
    animationLoop: true,
    controlNav: false,
    itemWidth: 210,
    move: 1
  });

	// /* FitVids */
	// $(".media").fitVids();

  // Tabs
  $('#myTab a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
  })
  $('#myTab a:first').tab('show');

  // Full Height Image
  // var height = $(window).height();
  // $('.hero').css({'height': (height)+'px'});

});
