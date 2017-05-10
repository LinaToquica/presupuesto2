
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
    */    
    $.backstretch([
                           "/static/assets2/img/backgrounds/fondo2.jpg"
                         , "/static/assets2/img/backgrounds/fondo2.jpg"
                         , "/static/assets2/img/backgrounds/fondo2.jpg"
                         ], {duration: 3000, fade: 750});
    
    $('#top-navbar-1').on('shown.bs.collapse', function(){
    	$.backstretch("resize");
    });
    $('#top-navbar-1').on('hidden.bs.collapse', function(){
    	$.backstretch("resize");
    });
    
    /*
        Form validation
    */
    $('.registration-form input[type="text"], .registration-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.registration-form').on('submit', function(e) {
    	
    	$(this).find('input[type="text"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	
    });
    
    
});
