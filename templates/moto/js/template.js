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

             $('.slide[number='+number+'] img').hide("puff");
                 if(number<4){
                     number++;
                 }else{
                     number = 1;
                 }

             $('.slide[number='+number+'] img').show("scale",
                 {percent: 100, direction: 'both' },3000);
        }
        setInterval(slide,3000);




	});
})(jQuery);