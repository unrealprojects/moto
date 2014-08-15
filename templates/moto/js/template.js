(function($){
	$(document).ready(function(){
        /* Google карта*/
        function initialize() {
            var myLatlng = new google.maps.LatLng(-34.397, 150.644);
            var myOptions = {
                zoom: 8,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map"), myOptions);
        }

       initialize();
        /*Метки*/
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title:"Hello World!"
        });


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
            if(!phone || !name){
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

        $("ul.uk-list.uk-list-line.blog-default").niceScroll({cursorcolor:"white",cursorwidth:'5',cursorborderradius:'0',cursorborder:'none',zindex:"9999999"});






        /* Всплывающая форма ЗАДАТЬ ВОПРОС*/
    /*    function getBox(){
            ajaxData='';
            $.ajax({
                type: 'POST',
                url: '/question?tmpl=component',
                success: function(data){
                    console.log(data);
                    ajaxData=data;
                }
            });
            console.log(ajaxData);
            return ajaxData;
        }*/


        /*
            * Событие ЗАДАТЬ ВОПРОС
        */
        function sendMessage(){
            $(document).on('click','section.question div.question_block input.send[type=submit]',function(){

                var name = $("section.question div.question_block form input[name=name]").val();
                var email = $("section.question div.question_block form input[name=email]").val();
                var text = $("section.question div.question_block textarea[name=text]").val();

                if(!name || !email || !text){
                    $('section.question div.question_block #error').remove('');

                    $('section.question div.question_block input[type=submit]').after('<p id="error" style="color:#ac8019; margin-bottom:10px;float: left;clear: both; margin-left: 165px;margin-top: 10px;">Заполните все поля</p>');
                }else{
                    $.ajax({
                        type: 'POST',
                        url: 'mail_question.php',
                        data: 'email='+email+'&name='+name+'&text='+text,
                        success: function(data){
                            $('section.question div.question_block form').html('');
                            $('section.question form').html("<p style='color:white;  font-size: 18px;text-transform: none;line-height: 28px;margin-left: 46px;'>Спасибо, "+name+".<br/>Мы ответим Вам в ближайшее время!</p>");
                        }
                    });
                }
                return false;
            });
        }

        $('#ask_question').modbox('',{ajax:"/question?tmpl=component",close_object:'section.question div.question_block div.close',success_ajax:sendMessage});


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



        /* video lightbox*/
        $('.blog-default .items a').modbox('asdfsad',{ajax:false,auto_ajax:true,close_object:'.modbox .static_page__close'});

        /*article*/
        $('.blog-expo a').modbox('',
            {
                ajax:false,
                auto_ajax:true,
                close_object:'.modbox .static_page__close',
                centered:false,
                style:".modbox .item,.modbox .yoo-zoo,.modbox .pos-date{float:left;clear: both;}.modbox_content{float:left;}.modbox{top: 0px;bottom: 0px;position: fixed !important;overflow-y: scroll;}"
            });

                 /*article*/
        $('ul.uk-list.uk-list-line.blog-default a').modbox('',
            {
                ajax:false,
                auto_ajax:true,
                close_object:'.modbox .static_page__close',
                centered:false,
                style:".modbox .item,.modbox .yoo-zoo,.modbox .pos-date{float:left;clear: both;}.modbox_content{float:left;}.modbox{top: 0px;bottom: 0px;position: fixed !important;overflow-y: scroll;}"
            });



    });
})(jQuery);