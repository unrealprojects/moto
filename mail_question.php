<?php
$to  = "Oleg <olegblud@gmail.com>, " ;
$to .= "Afonin <Afonin.design@gmail.com>,";
$to .= "Info <info@foxeye.ru>";


$name=$_POST['name'];
$email=$_POST['email'];
$text=$_POST['text'];
$subject = "Заявка";

$message = ' 
    <html>
        <head>
            <title>Заявка</title>
        </head>
        <body>
            <p>Имя: '. $name .'</p>
            <p>Email: '. $email .'</p>
            <p>Сообщение: '. $text .'</p>
        </body>
    </html>
';

$headers  = "Content-type: text/html; charset=utf-8 \r\n";
$headers .= "From: foxeye <info@foxeye.ru>\r\n";
$headers .= "Bcc: info@foxeye.ru\r\n";

mail($to, $subject, $message, $headers);

echo $message;

?>