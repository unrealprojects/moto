(function($){

	$(document).ready(function(){
        /*Метки*/
        $(document).bind("mobileinit", function(){$.extend(  $.mobile , {autoInitializePage: false})});
		/*standart*/
		$('input, textarea').placeholder();
		
        /* Ресайз для высоцких экранов под hdmi*/
        function scaleBackground(){
            if($(window).width()>1024){
                if($(window).width()<$(window).height()*1.777){
                    var prop=$(window).height()/$(window).width();
                    $('body').css('backgroundSize',100*prop*1.777+'%');
                }
                $('.slidecontent').css('min-height','100%');
            }else{
                if(jQuery(document).height()<$(document).height()*2.02){
                    var prop=$(document).height()/$(window).width();
                    $('body').css('backgroundSize',100*prop*2.02+'%');
                }else if($(window).width()<400 && $(window).height()<600 ){

                }

                /* Выравнивание по низу иконок */
                if($(window).height()>440 && $(window).width()<600){
                     $('.slidecontent').css('min-height',$(window).height()-15+'px');
                }

                if($(window).height()>480 && $(window).width()<600){
                    $('.slidecontent').css('min-height',$(window).height()-35+'px');
                }

                if($(window).height()>520 && $(window).width()<600){
                    $('.slidecontent').css('min-height',$(window).height()-55+'px');
                }

                if($(window).height()>560 && $(window).width()<600){
                    $('.slidecontent').css('min-height',$(window).height()-80+'px');
                }

                if($(window).height()>600 && $(window).width()<600){
                    $('.slidecontent').css('min-height',$(window).height()-100+'px');
                }

                if($(window).height()>640 && $(window).width()<600){
                    $('.slidecontent').css('min-height',$(window).height()-120+'px');
                }

                /* Выравнивание по низу иконок :: большие экраны*/
                if($(window).width()>600 && $(window).height()<700){
                    $('.slidecontent').css('min-height',$(document).height()-80+'px');
                }

                if($(window).width()>600 && $(window).height()>699){
                    $('.slidecontent').css('min-height',$(document).height()-120+'px');
                }
                if($(window).width()>600 && $(window).height()>800){
                    $('.slidecontent').css('min-height',$(document).height()-200+'px');
                }

                if($(window).width()>600 && $(window).height()>850){
                    $('.slidecontent').css('min-height',$(document).height()-250+'px');
                }

                if($(window).width()>600 && $(window).height()>900){
                    $('.slidecontent').css('min-height',$(document).height()-300+'px');
                }

                if($(window).width()>600 && $(window).height()>950){
                    $('.slidecontent').css('min-height',$(document).height()-320+'px');
                }

                if($(window).width()>600 && $(window).height()>1000){
                    $('.slidecontent').css('min-height',$(document).height()-350+'px');
                }
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
				$('section.order #error').remove('');
                $('section.order form input[type=submit]').after('<p id="error" style="color:#ac8019; margin-bottom:10px;">Заполните все поля</p>');
            }else{
				$('section.order #error').remove('');
                $.ajax({
                        type: 'POST',
                        url: 'mail.php',
                        data: 'phone='+phone+'&name='+name+'&email='+email,
                        success: function(data){
                            $('section.order form input,section.order form p').hide();
                            $('section.order .order-header').after("<p style='padding: 30px;color:white; font-size: 18px;text-transform: none;line-height: 28px'>Спасибо, "+name+".<br/>Мы перезвоним Вам в ближайшее время!</p>");
                            setTimeout(function(){window.location.href='/'},3000);
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
                            setTimeout(function(){window.location.href='/'},3000);
                        }
                    });
                }
                return false;
            });
        }

        if(window.location.path='/question'){
            sendMessage();
        }

        /*
         * Событие ЗАКАЗАТЬ УСТАНОВКУ
         */
        function sendMessageInstall(){
            $("section.order_install form input[name=phone]").mask("8 ( 999 ) 999-99-99");
            $(document).on('click','section.order_install div.order_install_block input.send[type=submit]',function(){

                var name = $("section.order_install div.order_install_block form input[name=name]").val();
                var phone = $("section.order_install div.order_install_block form input[name=phone]").val();
                var email = $("section.order_install div.order_install_block form input[name=email]").val();

                if(!name || !phone){
                    $('section.order_install div.order_install_block #error').remove('');

                    $('section.order_install div.order_install_block input[type=submit]').after('<p id="error" style="color:#ac8019; margin-bottom:10px;float: left;clear: both; margin-left: 165px;margin-top: 10px;">Заполните все поля</p>');
                }else{
                    $.ajax({
                        type: 'POST',
                        url: 'mail_order_install.php',
                        data: 'email='+email+'&name='+name+'&phone='+phone,
                        success: function(data){
                            $('section.order_install div.order_install_block form').html('');
                            $('section.order_install form').html("<p style='color:white;  font-size: 18px;text-transform: none;line-height: 28px;margin-left: 46px;'>Спасибо, "+name+".<br/>Мы ответим Вам в ближайшее время!</p>");
                            setTimeout(function(){window.location.href='/'},3000);
                        }
                    });
                }
                return false;
            });
        }


        /**
         *  Слайдер
         **/
        number = 1;
		if( $("html").hasClass("ie8") || $(window).width()<1025){
			function slide(){
				 $('#slide'+number).hide();
					 if(number<4){
						 number++;
					 }else{
						 number = 1;
					 }
				 $('#slide'+number).show();
			}
			interval=setInterval(slide,4000);

			$('.slide').mouseover(function(){
				clearInterval(interval);
			});

			$('.slide').mouseout(function(){
				interval=setInterval(slide,4000);
			});

			$('.slide_right').click(function(){

				clearInterval(interval);
				$('#slide'+number).hide();
				if(number<4){
					number++;
				}else{
					number = 1;
				}
				$('#slide'+number).show();
			});

			$('.slide_left').click(function(){
				clearInterval(interval);
				$('#slide'+number).hide();
				if(number>1){
					number--;
				}else{
					number = 4;
				}
				$('#slide'+number).show();
			});

            $('.slidecontent').on('swiperight',function(){
                clearInterval(interval);
                $('#slide'+number).hide();
                if(number<4){
                    number++;
                }else{
                    number = 1;
		        }
                $('#slide'+number).show();
            });

            $('.slidecontent').on('swipeleft',function(){
                clearInterval(interval);
                $('#slide'+number).hide();
                if(number>1){
                    number--;
                }else{
                    number = 4;
                }
                $('#slide'+number).show();
            });
		}
		else{
			function slide(){
                if($(window).width()>1025){
				    $('#slide'+number).fadeOut(1000);
                }else{
                    $('#slide'+number).hide();
                }
					 if(number<4){
						 number++;
					 }else{
						 number = 1;
					 }
                if($(window).width()>1025){
				     $('#slide'+number).fadeIn(4000);
                }else{
                    $('#slide'+number).show();
                }
                console.log(2);
			}
			interval=setInterval(slide,4000);

			$('.slide').mouseover(function(){
				clearInterval(interval);
			});

			$('.slide').mouseout(function(){
				interval=setInterval(slide,4000);
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

            $('.slidecontent').on('swiperight',function(){
                clearInterval(interval);
                $('#slide'+number).stop().fadeOut({easing:'easeInQuad',duration:500});
                if(number<4){
                    number++;
                }else{
                    number = 1;
                }
                $('#slide'+number).stop().fadeIn({easing:'easeInQuad',duration:2000});
            });

            $('.slidecontent').on('swipeleft',function(){
                clearInterval(interval);
                $('#slide'+number).stop().fadeOut({easing:'easeInQuad',duration:500});
                if(number>1){
                    number--;
                }else{
                    number = 4;
                }
                $('#slide'+number).stop().fadeIn({easing:'easeInQuad',duration:2000});
            });

		}
		
		


        /* Всплывающие окна на слайдах */
/*
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
        }*/

        $('.slidecontent .slide_img').modbox('',{ajax:"/slide1?tmpl=component",close_object:'.modbox .static_page__close',scroll:true});


        /* Задать вопрос */
        $('#ask_question').modbox('',{ajax:"/question?tmpl=component",close_object:'.modbox section.question div.question_block div.close',success_ajax:sendMessage,
            "modbox_back":{backgroundColor: 'rgba(0, 0, 0, 0.4)',width:'100%',height:'100%',position:"fixed",top:'0px',bottom:'0px'}
        });

        /* Иконки в modbox */
        if($(window).width()<1024){
            $('.info_icon').each(function(){
                $(this).modbox('<div class="static_page__close"></div><div class="icons_descriotion__in_modbox">'+$(this).html().replace('<br>', ' ')+'</div>',{ajax:false,close_object:'.modbox .static_page__close'});
            });
        }


      //  Возврат на главную страницу
            if(window.location.pathname.substr(0,6)=='/video'){
                $('.static_page__close').click(function(){
                    window.location.href='/video';
                });

            }

            if(window.location.pathname.substr(0,8)=='/article'){
                $('.static_page__close').click(function(){
                    window.location.href='/article';
                });
            }

        if(window.location.pathname=='/order_install'){
            $('.close').click(function(){
                window.location.href='/sale';
            });
            sendMessageInstall();
        }

        /* video lightbox*/
        if($(window).width()>1024){
            $('.blog-default .items .teaser-item a').modbox('',{ajax:false,auto_ajax:true,close_object:'.modbox .static_page__close', centered:false,scroll:false});
        }
        /*article*/
        if($(window).width()>1024){
            $('.blog-expo .teaser-item a').modbox('',
                {
                    ajax:false,
                    auto_ajax:true,
                    close_object:'.modbox .static_page__close',
                    centered:false,
                    scroll:true,
                    style:".modbox .item,.modbox .yoo-zoo,.modbox .pos-date{float:left;clear: both;}.modbox_content{float:left;}.modbox{top: 0px;bottom: 0px;position: fixed !important;overflow-y: scroll;}"
                });
        }
                 /*article*/
//        $('ul.uk-list.uk-list-line.blog-default a').modbox('',
//            {
//                ajax:false,
//                auto_ajax:true,
//                close_object:'.modbox .static_page__close',
//                centered:false,
//                style:".modbox .item,.modbox .yoo-zoo,.modbox .pos-date{float:left;clear: both;}.modbox_content{float:left;}.modbox{top: 0px;bottom: 0px;position: fixed !important;overflow-y: scroll;}"
//            });


        // Смена страниц СТАТЬИ И ОТЗЫВЫ  (вызов modbox через триггер   )

        $('#yoo-zoo.blog-expo .items .floatbox').click(function(){
            //window.location.href=$('.element-itemname a',this).attr('href');
            $('.element-itemname>a',this).trigger('click');
        });


        /*
        * Сделай заказ в списке пунктов
        * */
            if($(window).width()>1024){
                $('.adress__make_order').modbox('',{ajax:"/order_install?tmpl=component",close_object:'.modbox section.order_install div.order_install_block div.close',success_ajax:sendMessageInstall,
                "modbox_back":{backgroundColor: 'rgba(0, 0, 0, 0.4)',width:'100%',height:'100%',position:"fixed",top:'0px',bottom:'0px'}
                });
            }else{
                $('.adress__make_order').click(function(){
                    window.location.href='/order_install';
                });
            }
        /**
         * Подсветка активного пункта меню
         */
        $('a').each(function(k,v){
            if($(this).attr('href')==window.location.pathname){
				$(this).removeAttr('href');
                $(this).addClass('active_link');
            }
        });
		
		if(window.location.pathname=='/sale/category/piter'){
				$('.icons nav li a[href="/sale"]').addClass('active_link');
				$('.icons nav li a[href="/sale"]').removeAttr('href'); 
			}
		if(window.location.pathname=='/sale/category/moscow'){
			$('.icons nav li a[href="/sale"]').addClass('active_link');
			$('.icons nav li a[href="/sale"]').removeAttr('href'); 
		}




        /*MOBILE JS*/
        if($(window).width()<1025){
            $("body").niceScroll({cursorcolor:"white",cursorwidth:'8',cursorborderradius:'0',cursorborder:'none',zindex:"99999999"});
        }
        if(window.location.pathname=='/question'){
            $('.close').click(function(){
                location.href='/';
            });
        }

        $( document ).bind( 'mobileinit', function(){
            $.mobile.loader.prototype.options.text = "go";
            $.mobile.loader.prototype.options.textVisible = false;
            $.mobile.loader.prototype.options.theme = "a";
            $.mobile.loader.prototype.options.html = "";

            $.extend(  $.mobile , {
                ajaxFormsEnabled : false,
                ajaxLinksEnabled : false,
                ajaxEnabled : false,
                ignoreContentEnabled : true,
                pushStateEnabled : false
            });
        });

        $.extend(  $.mobile , {
            ajaxFormsEnabled : false,
            ajaxLinksEnabled : false,
            ajaxEnabled : false,
            ignoreContentEnabled : true,
            pushStateEnabled : false
        });

        $.mobile.loading( 'show', {
            text: '',
            textVisible: false,
            theme: 'a',
            html: ""
        });
//        $.mobile.pageLoading(true);
    });
})(jQuery);



