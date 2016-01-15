$(document).ready(function() {
	$('.button-collapse').sideNav();
	$("#hint-link").on("click", function (event) {
		event.preventDefault();
		$("#hint-text").toggleClass('hidden');
	});
});

