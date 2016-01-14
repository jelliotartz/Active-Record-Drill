$(document).ready(function() {
	$("#hint-link").on("click", function (event) {
		event.preventDefault();
		var $link = $(this);
		$link.find("#hint-text").toggleClass("hidden");
	});
});
