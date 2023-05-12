<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';
include '../constants/settings.php';

$myfname = ucwords($_POST['fullname']);
$myemail = $_POST['email'];
$mymessage = $_POST['message'];

$mail = new PHPMailer;

try {
    // Server settings
    $mail->isSMTP();                                            
    $mail->Host       = 'smtp.gmail.com';                     
    $mail->SMTPAuth   = true;                                   
    $mail->Username   = 'handyhunt123@gmail.com';                    
    $mail->Password   = 'ztzcxwqbanwddqhq';                               
    $mail->SMTPSecure = 'tls';                                   
    $mail->Port       = 587;                                    

    // Recipients
    $mail->setFrom('handyhunt123@gmail.com', 'Handy Hunt Support / Sender Concern');
    $mail->addAddress('handyhunt123@gmail.com');               

    // Content
    $mail->isHTML(true);      
    $mail->Subject = 'Notification Email From ' . $myemail;
    $mail->Body    = $myfname .' <br> '. $mymessage;

    $mail->send();
    echo "<script>alert('Notification email sent successfully!')</script>";
    header("location:../contact.php?r=5634");
} catch (Exception $e) {
    header("location:../contact.php?r=2974");
    echo "Mailer Error: {$mail->ErrorInfo}";
}


?>