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
$doc->addScript('templates/' . $this->template . '/js/template.js');
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic&subset=latin,cyrillic,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
    <jdoc:include type="head" />
</head>
<body>

    <header>
        <!-- СЕКЦИЯ: Логотип -->
        <section class="logo">
            <a href="#"><img src="templates/moto/images/logo.png" alt="Мотовидеорегистратор"></a>
        </section>

        <!-- СЕКЦИЯ: Меню -->
        <section class="menu">
            <nav class="nav-left">
                <ul>
                    <li><a href="/">Видеозаписи</a></li>
                    <li><a href="/">Как поставить?</a></li>
                    <li><a href="/">Команда FOXEYE™</a></li>
                </ul>
            </nav>
            <nav class="nav-right">
                <ul>
                    <li><a href="/">ЗАДАТЬ ВОПРОС</a></li>
                    <li class="list_dot"><a href="/">8-800-775-31-97</a></li>
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
                <p>Цена: 10900 Р</p>
            </div>
            <form method="POST">
                <input type="text" autocomplete="off" name="name" placeholder="Имя">
                <input type="text" autocomplete="off" name="phone" placeholder="Телефон">
                <input type="submit" name="order" value="ЗАКЗАТЬ >">
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
        </section>
    </main>

    <footer>
        <!-- СЕКЦИЯ: Иконки в футере -->
        <section class="icons">
            <nav class="nav_bottom">
                <ul>
                    <li>
                        <a href="#">
                            <div class="icon_1">
                                <span class="icon_div">?</span>
                            </div>
                            <h4>РЕГИСТРАТОР<br> ИЛИ ЭКШН-КАМЕРА?</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="icon_1">
                                <span class="icon_div">+2</span>
                            </div>
                            <h4>ГАРАНТИИ<br> МОТОСЕЗОНА</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="icon_1">
                                <img class="icon_div_em" src="templates/moto/images/Eye.png" alt="Статьи и отзывы">
                            </div>
                            <h4>СТАТЬИ<br> И ОТЫВЫ</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="icon_1">
                                <span class="icon_div">50%</span>
                            </div>
                            <h4>СКИДКА<br> НА УСТАНОВКУ</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="icon_1">
                                <img class="icon_div_em" src="templates/moto/images/moto_icon.png" alt="Бесплатный тест-драйв">
                            </div>
                            <h4>БЕСПЛАТНЫЙ<br> ТЕСТ-ДРАЙВ</h4>
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
                    <li><a href="/">ИНСТРУКЦИЯ</a></li>
                    <li class="list_dot"><a href="#">ПАРТНЁРЫ</a></li>
                    <li class="list_dot"><a href="#">ДОСТАВКА И ОПЛАТА</a></li>
                    <li class="list_dot"><a href="#">КОНТАКТЫ</a></li>
                </ul>
            </nav>

            <nav class="nav-right">
                <ul>
                    <li class="list_social_f"><a href="/"></a></li>
                    <li class="list_social_t"><a href="/"></a></li>
                    <li class="list_dot"><a href="/">© 2014 FOXeye GC1</a></li>
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