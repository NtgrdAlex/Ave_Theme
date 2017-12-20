$(document).ready(function() {
    var offset=750, // At what pixels show Back to Top Button
    scrollDuration=300; // Duration of scrolling to top
        $(window).scroll(function() {
	    if ($(this).scrollTop() > offset) {
                $('#bottomPageCallToActionContainer').css("bottom", "0px");
			
                } else {
		  $('#bottomPageCallToActionContainer').css("bottom", "-150px");
		}
	});
});