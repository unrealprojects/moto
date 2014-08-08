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



        /* Вращение фона*/

        $('.rotate').animate({  borderSpacing: 10000 }, {
            step: function(now,fx) {
                $(this).css('-webkit-transform','rotate('+now+'deg)');
                $(this).css('-moz-transform','rotate('+now+'deg)');
                $(this).css('transform','rotate('+now+'deg)');
            },
            duration:400000
        },'linear');




	});
})(jQuery);