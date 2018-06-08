$(window).load(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');


	$('.fancybox').fancybox({
		nextClick : true,
		helpers : {
			title : {
				type : 'inside'
			},
			overlay : {
				css : {
					'background':'rgba(238,238,238,0.85)'
				}
			}
		}
	});

	// Hero Carousel
	$('.slick-hero').slick({
		autoplay: true,
		dots: true,
		arrows: false,
		fade: true,
		speed: 800,
		autoplaySpeed: 6000,
		pauseOnHover: false,
	});


	// Sponsors Carousel
	$('.slick-sponsors').slick({
		infinite: true,
		speed: 300,
		slidesToShow: 5,
		slidesToScroll: 1,
		autoplay: true,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 4,
				slidesToScroll: 1,
				infinite: true,
			}
		},
		{
			breakpoint: 700,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
		]
	});


	$('.mainnav__title a').click(function() {
		$('.mainnav').toggleClass('expand');
		return false;
	});
});
