<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$emp_id = $_POST['user_id'];

	
    try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	if (isset($_POST['submit1']))
    {
    //$stat = "accepted";
    $stmt = $conn->prepare("UPDATE tbl_users SET status = 'hired' WHERE role = 'employee' AND member_no = '$emp_id'");
    $stmt->execute();
    header("location:../change-password.php");
    }
    else if(isset($_POST['submit2']))
    {
    //$stat = "rejected";
    $stmt = $conn->prepare("DELETE FROM tbl_job_applications WHERE job_id = '$job_id' AND member_no = '$emp_id'");
    $stmt->execute();
    header("location:../index.php");
    }
    else
    {
    //$stat = "not selected";							
    }	
				  
	}catch(PDOException $e)
    {

    }

?>