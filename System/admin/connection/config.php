<?php 

$server = "localhost";
$user = "root";
$pass = "HandyHunt2023";
$database = "job_portal";

$conn = mysqli_connect($server, $user, $pass, $database);

if (!$conn) {
    die("<script>alert('Connection Failed.')</script>");      
}

else{
    // echo 'Connected madafakaz';
    
}

?>