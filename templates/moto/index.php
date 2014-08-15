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

$doc->addScript('templates/' . $this->template . '/js/jquery-ui.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.parallax.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.nicescroll.min.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.maskedinput.js');
$doc->addScript('templates/' . $this->template . '/js/jquery.color.js');
$doc->addScript('templates/' . $this->template . '/js/template.js');

$uri = JUri::getInstance();
$path = $uri->getPath();
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic&subset=latin,cyrillic,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <jdoc:include type="head" />

    <?php if($path!='/'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/inner.css');
    }
    if($path=='/'){
        $doc->addStyleSheet('templates/' . $this->template . '/css/main.css');
    }
    ?>

</head>
<body>
    <div class="rotate"></div>
    <header>
        <!-- СЕКЦИЯ: Логотип -->
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
                    <li><a href="/">ЗАДАТЬ ВОПРОС</a></li>
                    <li class="list_dot">8-800-775-31-97</li>
                </ul>
            </nav>
        </section>

        <!-- СЕКЦИЯ: Описание сайта -->
        <section class="info">
            <h1>МОТОВИДЕОРЕГИСТРАТОР<br>НОВОГО ПОКОЛЕНИЯ —</h1>
            <p>Идеальный выбор для<br>
                владельцев мотоциклов и<br>
                скутеров! Полностью<br>
                влагозащищенный,<br>
                стационарный мото<br>
                видеорегистратор<br>
                заменит любую экшн камеру<br>
                и сделает вашу поездку<br>
                более уверенной.</p>
        </section>

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
<!--            <jdoc:include type="component" />-->


             <section class="contacts">
                 <div id="map">
                 </div>
                 <div class="contacts_info">
                     <h1 class="contacts_header">Контакты</h1>
                     <p><span class="string_contacts_info_1">Адрес:</span><span class="string_contacts_info_2">г. Москва, какая-то улица</span></p>
                     <p><span class="string_contacts_info_1">Телефон:</span><span class="string_contacts_info_2">+380546846898</span></p>
                     <p><span class="string_contacts_info_1">Skype:</span><span class="string_contacts_info_2">asdf@skype.ru</span></p>
                 </div>
             </section>
        </section>
      </main>

      <footer>
          <!-- СЕКЦИЯ: Иконки в футере -->
        <section class="icons">
            <nav class="nav_bottom">
                <ul>
                    <li>
                        <a href="/registrator">
                            <div class="icon_wrap">
                                <span>?</span>
                            </div>
                            <h4>РЕГИСТРАТОР<br> ИЛИ ЭКШН-КАМЕРА?</h4>
                        </a>
                    </li>
                    <li>
                        <a href="/guarantee">
                            <div class="icon_wrap">
                                <span><strong>+</strong>2</span>
                            </div>
                            <h4>ГАРАНТИИ<br> МОТОСЕЗОНА</h4>
                        </a>
                    </li>
                    <li>
                        <a href="/article">
                            <div class="icon_wrap">
                                <span></span>
                            </div>
                            <h4>СТАТЬИ<br> И ОТЗЫВЫ</h4>
                        </a>
                    </li>
                    <li>
                        <a href="/sale">
                            <div class="icon_wrap">
                                <span>50%</span>
                            </div>
                            <h4>СКИДКА<br> НА УСТАНОВКУ</h4>
                        </a>
                    </li>
                    <li>
                        <a href="/test-drive">

                            <h4>БЕСПЛАТНЫЙ<br> ТЕСТ-ДРАЙВ</h4>
                            <div class="icon_wrap">
                                <span></span>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </section>

        <!-- СЕКЦИЯ: Нижнее меню -->
        <section class="menu_bottom">
            <nav class="nav-left">
                <a href="#">
                    <img src="templates/moto/images/gc-logo.png" alt="Мотовидеорегистратор">
                </a>
                <ul>
                    <li><a href="/docs">ИНСТРУКЦИЯ</a></li>
                    <li class="list_dot"><a href="/partners">ПАРТНЁРЫ</a></li>
                    <li class="list_dot"><a href="/ship_and_pay">ДОСТАВКА И ОПЛАТА</a></li>
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




































<?php if ($this->countModules('position-1')){ ?>


    <section class="asdf">
        <jdoc:include type="modules" name="position-1" style="none" />
    </section>


    <section class="asdf">
        <jdoc:include type="modules" name="position-5" style="none" />
    </section>

        <jdoc:include type="message" />

<?php } ?>