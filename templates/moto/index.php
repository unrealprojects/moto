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
    <div class="rotate"></div>
    <header>
        <!-- СЕКЦИЯ: Логотип -->
        <section class="logo">
            <a href="#"><span></span></a>
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
            <h1 class="header">КОМАНДА FOXEYE</h1>
            <section class="group">
                    <div class="command">
                        <div class="photo_project_manager"></div>
                        <div class="info"><h2 class="group_name">МОЛОТОК МАКСИМ</h2>
                        <p class="group_info">
                             Руководитель проекта<br>Мотоцикл: HONDA CBR 900 RR<br></p>
                        <hr class="line_1"/>
                        <p class="mail">molotok@foxeye.ru</p>

                        </div>
                    </div>
                    <div class="command">
                        <div class="photo_filial_1"></div>
                           <div class="info"><h2 class="group_name">БУШМАН СЕРГЕЙ</h2>
                             <p class="group_info">
                                 Филиал Северо-запад<br>Мотоцикл: SUZUKI RMZ250<br>
                             </p>
                             <hr class="line_1"/>
                             <p class="mail">bushman@foxeye.ru</p>

                         </div>
                     </div>
                     <div class="command">
                         <div class="photo_manager_development"></div>
                         <div class="info"><h2 class="group_name">АЛЕХАНКОВ СЕРГЕЙ</h2>
                             <p class="group_info">
                                 Менеджер по развитию регионов<br>Скутер: YAMAHA VINO<br>
                             </p>
                                 <hr class="line_1"/>
                             <p class="mail">plehanov@foxeye.ru</p>

                         </div>
                     </div>
                     <div class="command">
                         <div class="photo_filial_2">
                         </div>
                         <div class="info"><h2 class="group_name">СЛАСТЕЛИН ДМИТРИЙ</h2>
                              <p class="group_info">
                                  Филиал Северо-запад<br>Мотоцфикл: SUZUKI RMZ250<br>
                              </p>
                              <hr class="line_1"/>
                              <p class="mail">bushman@foxeye.ru</p>

                          </div>
                      </div>
                      <div class="command">
                          <div class="photo_it_director">
                          </div>
                          <div class="info"><h2 class="group_name">ФИРСАНОВ АЛЕКСЕЙ</h2>
                              <p class="group_info">
                                  IT-директор<br> Мотоцикл: HONDA CBR 900 RR<br>
                              </p>
                              <hr class="line_1"/>
                              <p class="mail">molotok@foxeye.ru</p>

                          </div>
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
                        <a href="#">
                            <div class="icon_wrap">
                                <span>?</span>
                            </div>
                            <h4>РЕГИСТРАТОР<br> ИЛИ ЭКШН-КАМЕРА?</h4>
                        </a>
                    </li>
                    <li>
                        <a href="#">
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
                        <a href="#">
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