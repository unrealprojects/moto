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
$doc->addScript('templates/' . $this->template . '/js/template.js');

$uri = JUri::getInstance();
$path = $uri->getPath();
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic&subset=latin,cyrillic,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
    <jdoc:include type="head" />

    <?php if($path!='/'){ ?>
        <style>
            .rotate{
                animation:none;
                background: rgba(0,0,0,0.9);
                opacity: 1;
                -webkit-animation: none;
                top:0px;
                left:0px;
                right: 0px;
                bottom:0px;
            }

            main {
                margin-left: 350px;
                margin-right: 260px;
            }
            @media (max-width: 1280px){
                main {
                    margin-left: 230px;
                    margin-right: 260px;
                }
            }
            @media (max-width: 1439px){
                main {
                    position: absolute;
                    margin: -330px 300px 0px 300px;
                 }
            }
        </style>
    <?php }?>
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
                    <li><a href="/">Видеозаписи</a></li>
                    <li><a href="/">Как поставить?</a></li>
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
                <input type="submit" name="order" value="ЗАКАЗАТЬ >">
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
                                <span>+2</span>
                            </div>
                            <h4>ГАРАНТИИ<br> МОТОСЕЗОНА</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="icon_wrap">
                                <span></span>
                            </div>
                            <h4>СТАТЬИ<br> И ОТЫВЫ</h4>
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
                        <a href="#">
                            <div class="icon_wrap">
                                <span></span>
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
                    <a href="/"><li class="list_social_f"></li></a>
                    <a href="/"><li class="list_social_t"></li></a>
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