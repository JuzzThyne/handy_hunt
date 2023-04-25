<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$job_id = $_GET['id'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    try{
    $delete_job_query = "DELETE FROM tbl_jobs WHERE job_id = :jobid AND company = :myid";
    $stmt = $conn->prepare($delete_job_query);
    $stmt->bindParam(':jobid', $job_id);
    $stmt->bindParam(':myid', $myid);
    $stmt->execute();
    header("location:../my-jobs.php?r=0173");
    }
    catch(PDOException $e){

    echo 'Error: ' . $e->getMessage();
        
    }
    try{
    $delete_application_query = "DELETE FROM tbl_job_application WHERE job_id = :jobid";
    $stmt = $conn->prepare($delete_application_query);
    $stmt->bindParam(':jobid', $job_id);
    $stmt->execute();
    header("location:../my-jobs.php?r=0173");
    }
    catch(PDOException $e){
    echo 'Error: ' . $e->getMessage();
        
    }
} catch(PDOException $e) {
    // Handle exceptions here
}
?>
