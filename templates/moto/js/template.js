(function($){
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



        /* Слайдер */
        number = 1;


        function slide(){

             $('.slide[number='+number+']').fadeOut(1000);
                 if(number<4){
                     number++;
                 }else{
                     number = 1;
                 }
             $('.slide[number='+number+']').fadeIn(5000);
        }
        setInterval(slide,5000);




	});
})(jQuery);