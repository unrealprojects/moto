(function($)
{
	$(document).ready(function(){

        /* Ресайз для высоцких экранов под hdmi*/
        function scaleBackground(){
            if($(window).width()<$(window).height()*1.777){
                var prop=$(window).height()/$(window).width();
                $('body').css('backgroundSize',100*prop*1.777+'%');
            }
        }

        scaleBackground();
        $(window).resize(function(){
            scaleBackground();
        });

	});
})(jQuery);