(function($){
    var methods = {
        /**
         * Создание лайтбокса
         */
        open: function(content,options){
            /**
             * Настройки
             */
            var settings = $.extend( {
                'event' : 'click',
                'modbox_style': {
                    width: '100%',
                    position: 'fixed',
                    height: '100%',
                    top: '0px',
                    bottom: '0px',
                    left: '0px',
                    right: '0px',
                    display:'none',
                    'z-index': '9999',
                    background: 'rgba(0, 0, 0, 0.9  )',
                    ajax: false,
                    close_object: false,
                    success_ajax: function(){},
                    auto_ajax: false,
                    style:'<style></style>',
                    centered:true,
                    scroll:false
                },
                'modbox_back': {
                    width: '100%',
                    position: 'absolute',
                    height: '100%'
                },
                'modbox_content':{}
            }, options);

                $(this).bind(settings['event']+'.modbox',{obj:this,content:content,settings:settings},methods.show);
                $(window).bind('resize.modbox',function(){
                    if(settings.centered){
                        $('.modbox_content').css('marginTop',($(window).height()-$('.modbox_content').outerHeight())/2);
                    }
//                    console.log($('.modbox_content').outerHeight());
                });
        },
        /**
         * Закрыть лайтбокс
         */
        close: function(e){
            $('.modbox').fadeOut(1000,function(){
                $('.modbox').remove();
            });
        },
        /**
         * Показать лайтбокс
         */
        show: function(e){

            /*
            * Если ajax
            */
            if(e.data.settings.ajax!=false){
                 $.ajax({
                     type: 'POST',
                     url: e.data.settings.ajax,
                     beforeSend:function(){
                         $('body').append('<div class="load"></div>');
                     },
                     success: function(data){
                         $('.load').remove();
                         $('body').append('<div class="modbox">' +
                                             '<div class="modbox_back"></div>' +
                                              '<div class="modbox_content">' +
                                                   data +
                                              '</div>'+
                                           '</div>');
                         $('.modbox').css(e.data.settings.modbox_style);
                         $('.modbox_back').css(e.data.settings.modbox_back);
                         $('.modbox_content').css(e.data.settings.modbox_content);

                             if(e.data.settings.centered){
                                 $('.modbox_content').css('marginTop',($(window).height()+$('.modbox_content').height())/2);
                             }
                             $('.modbox').fadeIn({start:function(){
                                 if(e.data.settings.centered){
                                    $('.modbox_content').css('marginTop',($(window).height()-$('.modbox_content').outerHeight())/2);
                                 }
                             },duration:1000});


                         if(e.data.settings.scroll){
                             $(".modbox").niceScroll({cursorcolor:"white",cursorwidth:'8',cursorborderradius:'0',cursorborder:'none',zindex:"99999999"});
                         }

                             $('.modbox_back').bind('click.modbox',methods.close);
                             if(e.data.settings.close_object){
                                 $(e.data.settings.close_object).bind('click.modbox',methods.close);
                             }



                         if(e.data.settings.success_ajax){
                             e.data.settings.success_ajax();
                         }
                         return false;
                     }
                 });
                return false;
            }else if(e.data.settings.auto_ajax == true){
                $.ajax({
                    type: 'POST',
                    url: this+"?tmpl=component",
                    beforeSend:function(){
                        $('body').append('<div class="load"></div>');
                    },
                    success: function(data){
                        $('.load').remove();
                        $('body').append('<div class="modbox">' +
                            '<div class="modbox_back"></div>' +
                            '<div class="modbox_content">' +
                            data +
                            '</div>'+
                            '</div>'+e.data.settings.style);
                        $('.modbox').css(e.data.settings.modbox_style);
                        $('.modbox_back').css(e.data.settings.modbox_back);
                        $('.modbox_content').css(e.data.settings.modbox_content);



                            if(e.data.settings.centered){
                                var height = ($(window).height()+$('.modbox_content').height())/2;
                                if(height>0){
                                    $('.modbox_content').css('marginTop',height);
                                }
                            }

                            $('.modbox').fadeIn({start:function(){
                                if(e.data.settings.centered){
                                    var height_1 = ($(window).height()-$('.modbox_content').outerHeight())/2;
                                    if(height_1>0){
                                        $('.modbox_content').css('marginTop',height_1);
                                    }
                                }
                            },duration:1000});




                        if(e.data.settings.scroll){
                            $(".modbox").niceScroll({cursorcolor:"white",cursorwidth:'8',cursorborderradius:'0',cursorborder:'none',zindex:"99999999"});
                        }

                        $('.modbox_back').bind('click.modbox',methods.close);
                        if(e.data.settings.close_object){
                            $(e.data.settings.close_object).bind('click.modbox',methods.close);
                        }


                        if(e.data.settings.success_ajax){
                            e.data.settings.success_ajax();
                        }
                        return false;
                    }
                });
                return false;
            }else{

                $('body').append('<div class="modbox">' +
                                    '<div class="modbox_back"></div>' +
                                    '<div class="modbox_content">' +
                                            e.data.content +
                                    '</div>'+
                                 '</div>');
                $('.modbox').css(e.data.settings.modbox_style);
                $('.modbox_back').css(e.data.settings.modbox_back);
                $('.modbox_content').css(e.data.settings.modbox_content);

                var height = ($(window).height()+$('.modbox_content').height())/2;
                if(height>0){
                    $('.modbox_content').css('marginTop',height);
                }

                $('.modbox').fadeIn({start:function(){
                    var height = ($(window).height()-$('.modbox_content').outerHeight())/2;
                    if(height>0){
                        $('.modbox_content').css('marginTop',height);
                    }
                },duration:1000});

                $('.modbox').bind('click.modbox',methods.close);
                return false;
            }

            return false;

        }
    };

    $.fn.modbox = function(method){
        if(methods['method'] == 'close', methods['method'] == 'show'){
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        }else{
            return methods.open.apply( this, arguments );
        }
    }
})(jQuery);