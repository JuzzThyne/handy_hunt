<?php
include '../../constants/db_config.php';
include '../constants/check-login.php'; 
error_reporting(E_ALL);
ini_set('display_errors', 1);


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $id = $_POST['courseid'];
    $country = $_POST['country'];
    $course = ucwords(str_replace("'", "&apos;", stripslashes($_POST['course'])));
    $institution = ucwords(str_replace("'", "&apos;", stripslashes($_POST['institution'])));
    $timeframe = ucwords(str_replace("'", "&apos;", stripslashes($_POST['timeframe'])));
    
    $certificate = null;
    if (!empty($_FILES['certificate']['tmp_name'])) {
        $certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
    }

    if (empty($certificate)) {
        $sql = "UPDATE tbl_professional_qualification SET country = '$country', institution = '$institution', title = '$course', timeframe = '$timeframe' WHERE id='$id'";

        if ($conn->query($sql) === TRUE) {
            header("location:../qualifications.php?r=6734");
        } else {
            header("location:../qualifications.php?r=6734");
        }
    } else {
        if ($_FILES["certificate"]["size"] > 1000000) {
            header("location:../qualifications.php?r=2290");
        } else {
            $sql = "UPDATE tbl_professional_qualification SET country = '$country', institution = '$institution', title = '$course', timeframe = '$timeframe', certificate = '$certificate'  WHERE id='$id'";

            if ($conn->query($sql) === TRUE) {
                header("location:../qualifications.php?r=6734");
            } else {
                header("location:../qualifications.php?r=6734");
            }		
        }
    }
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>