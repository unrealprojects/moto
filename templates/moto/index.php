<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$this->language  = $doc->language;
$this->direction = $doc->direction;

$doc->addStyleSheet('templates/' . $this->template . '/css/template.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/mobile.css');

$doc->addScript('templates/' . $this->template . '/js/jquery.mobile.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery-ui.min.js');
$doc->addScript('templates/' . $this->template . '/js/respond.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.parallax.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.nicescroll.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.maskedinput.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.color.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.modbox.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.placeholder.js');
$doc->addScript('templates/' . $this->template . '/js/template.js');

$uri = JUri::getInstance();
$path = $uri->getPath();
?>
<!DOCTYPE html>
<!--[if IE 8]>    <html  lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" class="ie8"> <![endif]-->
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="/templates/moto/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic&subset=latin,cyrillic,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
   <script>
      document.createElement('header');
      document.createElement('nav');
      document.createElement('section');
      document.createElement('article');
      document.createElement('aside');
      document.createElement('footer');
      document.createElement('main');
   </script>
<![endif]-->

    <jdoc:include type="head" />
	
<!--[if IE 8]>
	<link rel="stylesheet" href="/templates/moto/css/ie8.css" type="text/css">
<![endif]-->

    <?php if($path!='/'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/inner.css');
        $doc->addStyleSheet('templates/' . $this->template . '/css/mobile_inner.css');
        ?>
    <script>
        (function($){
            $(document).ready(function(){
                $("main").niceScroll({cursorcolor:"white",cursorwidth:'8',cursorborderradius:'0',cursorborder:'none',zindex:"99999999"});
            });
        })(jQuery);
    </script>
   <?php
    }
    if($path=='/'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/main.css');
    }
    if($path!='/' && $path!='/test-drive' && $path!='/registrator' && $path!='/sale' && $path!='/test-drive' 
			      && $path!='/article' && $path!='/guarantee' && $path!='/sale/category/piter' && $path!='/sale/category/moscow'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/inner__no_icons.css');
    }

    if($path=='/menu'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/menu.css');
    }

    if($path=='/order'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/order.css');
    }
    ?>
<?php if($path=='/contacts'){?>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script>
    (function($){
        $(document).ready(function(){
        /* Google карта*/
        function initialize() {
            var myLatlng = new google.maps.LatLng(55.753952, 37.620656);
            var myOptions = {
                zoom: 8,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };



            var map = new google.maps.Map(document.getElementById("map"), myOptions);

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title:"Hello World!"
              });
        }

        initialize();
        });
    })(jQuery);
    </script>
    <?php }?>
</head>
<body>
    <div class="rotate"></div>
    <header>

        <!-- СЕКЦИЯ: Логотип -->
        <a class="mobile_menu_a" href="/menu"><span class="mobile_menu"></span>
        <a class="mobile_order_a" href="/order"><span class="mobile_order"></span></a>
        <section class="logo">
            <a href="/"><span></span></a>
        </section>


        <!-- СЕКЦИЯ: Меню -->
        <section class="menu">
            <nav class="nav-left">
                <ul>
                    <li><a href="/video">Видеозаписи</a></li>
                    <li><a href="/install">Как поставить?</a></li>
                    <li><a href="/teem" class="ajax">Команда FOXEYE™</a></li>
                </ul>
            </nav>
            <nav class="nav-right">
                <ul>
                    <li><a href="/question" id="ask_question">ЗАДАТЬ ВОПРОС</a></li>
                    <li class="list_dot">8-800-775-31-97</li>
                </ul>
            </nav>
        </section>



        <!-- СЕКЦИЯ: Описание сайта -->
        <jdoc:include type="modules" name="left-block" style="none" />

        <!-- СЕКЦИЯ: Сделать заказ -->
        <section class="order">
            <div class="order-header">
                <h3>СДЕЛАЙ ЗАКАЗ*</h3>
                <p>Цена: 11900 Р</p>
            </div>
            <form method="POST">
                <input type="text" autocomplete="off" name="name" placeholder="Имя">
                <input type="text" autocomplete="off" name="phone" placeholder="Телефон">
                <input type="text" autocomplete="off" name="email" placeholder="Email">
                <input type="submit" name="order" value="ЗАКАЗАТЬ">
                <p>*При покупке у наc скидка 50%<br>
                    на установку регистратора<br>
                    в Москве и Санкт-Петербурге</p>
            </form>
        </section>
    </header>

    <main>
        <!-- СЕКЦИЯ: Основной контент -->
        <section class="main">
            <jdoc:include type="component" />
            <jdoc:include type="modules" name="after-content" style="none" />
        </section>
      </main>

      <footer>
          <jdoc:include type="modules" name="footer-icons" style="none" />

        <!-- СЕКЦИЯ: Нижнее меню -->
        <section class="menu_bottom">
            <nav class="nav-left">
                <a href="/">
                    <img src="templates/moto/images/gc-logo.png" alt="Мотовидеорегистратор">
                </a>
                <ul>
                    <li><a href="/docs">ИНСТРУКЦИЯ</a></li>
                    <li class="list_dot"><a href="/partners">ПАРТНЁРЫ</a></li>
                    <li class="list_dot"><a href="/shipping-and-payment">ДОСТАВКА И ОПЛАТА</a></li>
                    <li class="list_dot"><a href="/contacts">КОНТАКТЫ</a></li>
                </ul>
            </nav>

            <nav class="nav-right">
                <ul>
                    <a href="http://facebook.com/"><li class="list_social_f"></li></a>
                    <a href="http://twitter.com/"><li class="list_social_t"></li></a>
                    <li class="list_dot">© 2014 FOXeye GC1</li>
                </ul>
            </nav>

        </section>
    </footer>
</body>
</html>