/* start of raty */

$(document).on('ready page:load', function(){
	$('.rating').raty({ path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty( { path: '/assets', readOnly: true, score: function(){
		return $(this).attr('data-score');
		}
	});
/* end of raty */

	/* start of elevateZoom */
	$('.img-zoom').elevateZoom();
	/* end of eleveateZoom */
});



