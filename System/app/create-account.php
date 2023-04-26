<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';
date_default_timezone_set('Asia/Manila');

if (isset($_POST['reg_mode'])) {
checkemail();	
}else{
header("location:../");		
}



function checkemail() {
	
try {
	include '../constants/db_config.php';
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$email = $_POST['email'];
	$account_type = $_POST['acctype'];
 
    $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE email = :email");
	$stmt->bindParam(':email', $email);
    $stmt->execute();
    $result = $stmt->fetchAll();
	$records = count($result);
	
	if ($account_type == "101") {
	$role = "Employee";	
	}else{
	$role = "Employer";	
	}
	
	if ($records > 0) {
    
	header("location:../register.php?p=$role&r=0927");	
		
	}else
    {
	
	if ($account_type == "101") {
        $fname = ucwords($_POST['fname']);
        $lname = ucwords($_POST['lname']);
        $mname = ucwords($_POST['mname']);
        $fullname = $lname.','.$fname.' '.$mname;
        $stmt = $conn->prepare("SELECT * FROM tbl_tesda_passers WHERE name = :fullname");
        $stmt->bindParam(':fullname', $fullname);
        $stmt->execute();
        $result = $stmt->fetchAll();
        $records = count($result);
        if($records > 0)
        {
            echo $fullname;
            register_as_employee();
        }
        else
        {   
            header("location:../register.php?p=$role&r=6969");
        }
	
	}else{
	register_as_employer();
	}
	
		
	}
					  
	}catch(PDOException $e)
    {
    header("location:../register.php?p=$role&r=4568");
    }
}

function register_as_employee() {

try {
	include '../constants/db_config.php';
	include '../constants/uniques.php';
    
	$role = 'employee';
    $account_type = $_POST['acctype'];
    $last_login = date('d-m-Y h:m:s A');
	$member_no = 'EM'.get_rand_numbers(9).'';
    $fname = ucwords($_POST['fname']);
    $lname = ucwords($_POST['lname']);
    $mname = ucwords($_POST['mname']);
    $email = $_POST['email'];
    $login = $_POST['password'];
    $stat = 'unemployed';
    
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("INSERT INTO tbl_users (first_name,middle_name, last_name, email, last_login, login, role, member_no, status, isAccept) 
	VALUES (:fname,:mname, :lname, :email, :lastlogin, :login, :role, :memberno, '$stat', '0')");

    $stmt->bindParam(':fname', $fname);
    $stmt->bindParam(':mname', $mname);
    $stmt->bindParam(':lname', $lname);
    $stmt->bindParam(':email', $email);
	$stmt->bindParam(':lastlogin', $last_login);
    $stmt->bindParam(':login', $login);
    $stmt->bindParam(':role', $role);
	$stmt->bindParam(':memberno', $member_no);
    $stmt->execute();
	header("location:../register.php?p=Employee&r=1123");				  
	}catch(PDOException $e)
    {
    header("location:../register.php?p=Employee&r=4568");
    }	
	
}

function register_as_employer() {
    include 'constants/db_config.php';
    include 'constants/uniques.php';
    
    $role = 'employer';
    $last_login = date('d-m-Y h:m:s A');
    $comp_no = 'CM' . get_rand_numbers(9) . '';
    $cname = ucwords($_POST['company']);
    $ctype = ucwords($_POST['type']);
    $email = $_POST['email'];
    $login = $_POST['password'];

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        $stmt = $conn->prepare("INSERT INTO tbl_users (first_name, title, email, last_login, login, role, member_no, isAccept) 
            VALUES (:fname, :title, :email, :lastlogin, :login, :role, :memberno, '0')");
        
        
        $stmt->bindParam(':fname', $cname);
        $stmt->bindParam(':title', $ctype);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':lastlogin', $last_login);
        $stmt->bindParam(':login', $login);
        $stmt->bindParam(':role', $role);
        $stmt->bindParam(':memberno', $comp_no);
        $stmt->execute();
        $mail = new PHPMailer(true);
    try {
        
    
        //Enable verbose debug output
        $mail->SMTPDebug = 0; //SMTP::DEBUG_SERVER;

        //Send using SMTP
        $mail->isSMTP();

        //Set the SMTP server to send through
        $mail->Host = 'smtp.gmail.com';

        //Enable SMTP authentication
        $mail->SMTPAuth = true;

        //SMTP username
        $mail->Username = 'ucc.ams1971@gmail.com';

        //SMTP password
        $mail->Password = 'yalotkexnyitlwir';

        //Enable TLS encryption;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;

        //TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
        $mail->Port = 587;

        //Recipients
        $mail->setFrom('ucc.ams1971@gmail.com', 'Handy Hunt Support');

        //Add a recipient
        $mail->addAddress($email, $cname);

        //Set email format to HTML
        $mail->isHTML(true);

        $verification_code = substr(number_format(time() * rand(), 0, '', ''), 0, 6);

        $mail->Subject = 'Email verification';
        $mail->Body    = '<p>Your verification code is: <b style="font-size: 30px;">' . $verification_code . '</b></p>';

        $mail->send();
        // echo 'Message has been sent';

        $encrypted_password = password_hash($password, PASSWORD_DEFAULT);

        // connect with database
        // $conn = mysqli_connect("localhost", "root", "", "job_portal");


        // insert in users table
        // $sql = "INSERT INTO tbl_users (first_name, title, email, last_login, login, role, member_no, isAccept, verification_code, email_verified_at) 
        // VALUES (:fname, :title, :email, :lastlogin, :login, :role, :memberno, '0', '$verification_code', NULL)";
        // mysqli_query($conn, $sql);

        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $conn->prepare("INSERT INTO tbl_users (first_name, title, email, last_login, login, role, member_no, isAccept, verification_code, email_verified_at) VALUES (:fname, :title, :email, :lastlogin, :login, :role, :memberno, '0', '$verification_code', NULL)");

        header("Location: email-verification.php?email=" . $email);
        // header("Location: ../register.php?email=" . $email);
        exit();
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
        
        header("Location:../register.php?p=Employer&r=1123");
        exit;
    } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
        exit;
    }   
}

