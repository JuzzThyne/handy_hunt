<?php
include '../../constants/db_config.php';
include '../constants/check-login.php'; 

try
{
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$id = $_POST['courseid'];
$country  = mysqli_real_escape_string($conn, $_POST['country']);
$course = ucwords(str_replace("'", "&apos;", stripslashes(mysqli_real_escape_string($conn, $_POST['course']))));
$institution = ucwords(str_replace("'", "&apos;", stripslashes(mysqli_real_escape_string($conn, $_POST['institution']))));
$timeframe = ucwords(str_replace("'", "&apos;", stripslashes(mysqli_real_escape_string($conn, $_POST['timeframe']))));
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));

if ($certificate == "") {
$sql = "UPDATE tbl_professional_qualification SET country = '$country', institution = '$institution', title = '$course', timeframe = '$timeframe' WHERE id='$id'";

if ($conn->query($sql) === TRUE) {
    header("location:../qualifications.php?r=6734");
} else {
    header("location:../qualifications.php?r=0011");
}
}else{

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../qualifications.php?r=2290");
}else{
$sql = "UPDATE tbl_professional_qualification SET country = '$country', institution = '$institution', title = '$course', timeframe = '$timeframe', certificate = '$certificate'  WHERE id='$id'";

if ($conn->query($sql) === TRUE) {
    header("location:../qualifications.php?r=6734");
} else {
    header("location:../qualifications.php?r=0011");
}		
}
	
}

}
catch(PDOException $e)
{

}

	
?>
