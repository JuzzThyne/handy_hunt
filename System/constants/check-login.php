<?php
session_start();
$_SESSION['last_activity'] = time();
if (isset($_SESSION['logged']) && $_SESSION['logged'] == true) 
{
$user_online = true;	
$myrole = $_SESSION['role'];
}else{
$user_online = false;
}
?>