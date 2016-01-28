var myAlbums = [{title: "Things I Left Behind", year: "2014", pic: "http://i59.tinypic.com/10oh45d.jpg"}, {title: "The Uphill Climb", year: "2013", pic: "http://i62.tinypic.com/2uzrvcz.jpg"}, {title: "Korean Fruit", year: "2011", pic: "http://i60.tinypic.com/2m4btj4.jpg"}, {title: "Just a Few Tunes", year: "2009", pic: "http://i60.tinypic.com/2qan49s.jpg"}];

$(document).ready(function(){

	$("#button").on("click", function(){
		console.log("clicked");
		var comment = $(".comment-box").val();
		console.log(comment);
		$("#visible-comment").html(comment);
	});

	$(".comment-box").on("keyup", function(){
		console.log("keyup happened!");
		var charCount = $(".comment-box").val().length;
		console.log(charCount);
		$("#char-count").html(charCount);
		if(charCount > 299) {
			$("#char-count").css("color", "red");
			$(".comment-box").css("background-color", "pink")
		} else {
			$("#char-count").css("color", "white");
			$(".comment-box").css("background-color", "white");
		}
	});

	var rows = $(".my-row");
	console.log(rows);

	for(var i=0; i<rows.length; ++i) {
		if (i%2===0) {
			$(rows[i]).css("background-color", "black");
			$(rows[i]).css("color", "white");
		};
	};

	for(var i=0; i<myAlbums.length; ++i) {
		$("#" + i ).css("background-image", "url(" + myAlbums[i].pic + ")" );
	};

	$(".image").mouseenter( function(){
		console.log(this);
		$(this).html("<p class='info'><span class='proj-title'></span>" + myAlbums[this.id].year + "<br>" + "<br>" + myAlbums[this.id].title + "</p>");
	}).mouseleave( function() {
		$("p.info").html("");
	});

	//function initialize () {
	//	var mapOptions = {
	//		center: new google.maps.LatLng(52.51094,13.461327,16),
	//		zoom: 13
	//	};
	//
	//	var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
	//
	//	var marker = new google.maps.Marker({
	//		position: map.getCenter(),
	//		map: map,
	//		title: 'Clcik to zoom'
	//	});
	//
	//	google.maps.event.addListener(marker, 'click', function() {
	//		map.setZoom(17);
	//		map.setCenter(marker.getPosition());
	//	});
	//
	//};
	//
	//google.maps.event.addDomListener(window, 'load', initialize);
	//
//});