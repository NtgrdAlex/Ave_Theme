$('input[name="showFilter"]').on('click', function(){
    if ( $(this).is(':checked') ) {
       $('.listing--sidebar').hide();
	   $('.content--wrapper').css("margin-left", "0px");
    } 
    else {
        $('.listing--sidebar').show();
		$('.content--wrapper').css("margin-left", "16.25rem");
    }
});