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
            var email =$("section.order form input[name=email]").val();
            if(!phone && !name){
                $('section.order form input[type=submit]').after('<p style="color:#ac8019   ; margin-bottom:10px;">Заполните все поля</p>');
            }else{
                $.ajax({
                        type: 'POST',
                        url: 'mail.php',
                        data: 'phone='+phone+'&name='+name+'&email='+email,
                        success: function(data){
                            $('section.order form input,section.order form p').remove();
                            $('section.order form').html("<p style='color:white;  font-size: 18px;text-transform: none;line-height: 28px'>Спасибо, "+name+".<br/>Мы перезвоним Вам в ближайшее время!</p>");
                        }
                    });
            }
            return false;
        });

        $("body").niceScroll({cursorcolor:"white",cursorwidth:'8',cursorborderradius:'0',cursorborder:'none',zindex:"9999999"});


        /* Слайдер */
        number = 1;

        function slide(){
             $('#slide'+number).fadeOut(1000);
                 if(number<4){
                     number++;
                 }else{
                     number = 1;
                 }
             $('#slide'+number).fadeIn(4000);
        }
        interval=setInterval(slide,6000);

        $('.slide').mouseover(function(){
            clearInterval(interval);
        });

        $('.slide').mouseout(function(){
            interval=setInterval(slide,6000);
        });

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


        /* Всплывающие окна на слайдах */

        for (var i=1; i<4; i++) {
            $('#slide'+i).click(function(){
                 $('.main').fadeOut(2000);
                     $.ajax({
                     type: 'POST',
                     url: '/slide'+i+'?tmpl=component',
                     success: function(data){

                     $('.main').html(data);
                     $('html').append('<link rel="stylesheet" href="/templates/moto/css/inner.css" type="text/css">');
                     $('.main').fadeIn(1500);
                     }
                 });
             });
        }



    });
})(jQuery);