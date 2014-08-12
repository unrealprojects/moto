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


        $("section.order form input[name=phone]").mask("8 ( 999 ) 999-99-99");

        $('section.order form input[type=submit]').click(function(){


            var phone = $("section.order form input[name=phone]").val();
            var name =$("section.order form input[name=name]").val();
            if(!phone && !name){
                $('section.order form input[type=submit]').after('<p style="color:red; margin-bottom:10px;">Заполните все поля</p>');
            }else{
                $.ajax({
                        type: 'POST',
                        url: 'mail.php',
                        data: 'phone='+phone+'&name='+name,
                        success: function(data){
                            $('section.order form input,section.order form p').remove();
                            $('section.order form').html("<p style='color:white;  font-size: 18px;text-transform: none;line-height: 28px'>Спасибо, Олег.<br/>Мы перезвоним Вам в ближайшее время!</p>");
                        }
                    });
            }
            return false;
        });
//        $(".main").niceScroll({cursorcolor:"rgb(0,0,0)",cursorwidth:'7',cursorborderradius:'0',cursorborder:'none',zindex:"9999"});


        /* Слайдер */
        number = 1;

        function slide(){
             $('#slide'+number).fadeOut(1000);
                 if(number<4){
                     number++;
                 }else{
                     number = 1;
                 }
             $('#slide'+number).fadeIn(5000);
        }
        interval=setInterval(slide,10000);

        $('.slide_right').click(function(){

            clearInterval(interval);
            $('#slide'+number).stop().fadeOut({easing:'easeInQuad',duration:500});
            if(number<4){
                number++;
            }else{
                number = 1;
            }
            $('#slide'+number).stop().fadeIn({easing:'easeInQuad',duration:2000});
        });

        $('.slide_left').click(function(){
            clearInterval(interval);
            $('#slide'+number).stop().fadeOut({easing:'easeInQuad',duration:500});
            if(number>1){
                number--;
            }else{
                number = 4;
            }
            $('#slide'+number).stop().fadeIn({easing:'easeInQuad',duration:2000});
        });


	});
})(jQuery);