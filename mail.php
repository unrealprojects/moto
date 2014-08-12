<?php
$to  = "Mary <olegblud@gmail.com>, " ;
$to .= "Kelly <kelly@example.com>";

$name=$_POST['name'];
$phone=$_POST['phone'];
$subject = "Заявка";

$message = ' 
    <html>
        <head>
            <title>Заявка</title>
        </head>
        <body>
            <p>Имя: '.$name.'</p>
            <p>Телефон: '.$phone.'</p>
        </body>
    </html>
';

$headers  = "Content-type: text/html; charset=windows-1251 \r\n";
$headers .= "From: foxeye <info@foxeye.ru>\r\n";
$headers .= "Bcc: info@foxeye.ru\r\n";

mail($to, $subject, $message, $headers);

echo $message;

?>