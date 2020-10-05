$(document).ready(function(){

	// $(".main").fitVids();
	// Sponsors Carousel
	$('.sponsor-carousel').flickity({
		// options
		cellAlign: 'left',
		prevNextButtons: false,
		autoPlay: true,
		wrapAround: true,
		imagesLoaded: true,
		pageDots: false
	});

	// Homepage Carousel

	$('.hero-carousel').flickity({
		// options
		prevNextButtons: false,
		autoPlay: true,
		wrapAround: true,
		imagesLoaded: true,

		bgLazyLoad: true,
		fade: true
	});

});
