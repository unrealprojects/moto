<?php
$to  = "Oleg <olegblud@gmail.com>," ;
$to .= "Afonin <Afonin.design@gmail.com>,";
$to .= "Info <info@foxeye.ru>";


$name=$_POST['name'];
$phone=$_POST['phone'];
$email=!empty($_POST['email'])?$_POST['email']:"Нет данных.";
$subject = "Заказать установку";

$message = ' 
    <html>
        <head>
            <title>Заказать установку</title>
        </head>
        <body>
            <p>Имя: '. $name .'</p>
            <p>Телефон: '. $phone .'</p>
            <p>Email: '. $email .'</p>
        </body>
    </html>
';

$headers  = "Content-type: text/html; charset=utf-8 \r\n";
$headers .= "From: foxeye <info@foxeye.ru>\r\n";
$headers .= "Bcc: info@foxeye.ru\r\n";

mail($to, $subject, $message, $headers);

echo $message;

?>