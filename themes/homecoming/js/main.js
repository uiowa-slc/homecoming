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

});
