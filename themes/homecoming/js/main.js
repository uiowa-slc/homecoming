$(window).load(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');


	$('.fancybox').fancybox({
		//prevEffect : 'none',
		//nextEffect : 'none',

		//closeBtn  : false,
		//arrows    : false,

		nextClick : true,

		helpers : {
			title : {
	 			type : 'inside'
	 		},
			overlay : {
	 			css : {
	 				'background' : 'rgba(238,238,238,0.85)'
	 			}
	 		}
		}
	});


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

	// Hero Flexslider
	$('.hero-slider').flexslider({
		animation: "fade",
		controlNav: false,
		directionNav: false
	});

	// Lazy load images
	$(".unveil").unveil();


	$('.nav-title a').click(function() {
		$('.nav-main-wrapper').toggleClass('expand');
		return false;
	})


	$( '.nav-main li.parent' ).hover(function() {
	   $( this ).addClass( "hover" );
	  		}, function() {
	   $( this ).removeClass( "hover" );
  	});

  	$( '.nav-main li.last.parent' ).hover(function() {
	   $( this ).addClass( "hover-last" );
	  		}, function() {
	   $( this ).removeClass( "hover-last" );
  	});
});
