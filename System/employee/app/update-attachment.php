<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$title = ucwords($_POST['title']);
$issuer = ucwords($_POST['issuer']);
$certid = $_POST['attid'];

// Check if a file was uploaded
if (!empty($_FILES['certificate']['tmp_name'])) {
    if ($_FILES['certificate']['error'] !== UPLOAD_ERR_OK) {
        // There was an error uploading the file
        header("location:../attachments.php?r=2290");
        exit();
    }
    if ($_FILES["certificate"]["size"] > 1000000) {
        // The file is too large
        header("location:../attachments.php?r=2290");
        exit();
    }
    // Read the uploaded file contents
    $certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
} else {
    // No file was uploaded
    $certificate = null;
}

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Update the row in the database
    $stmt = $conn->prepare("UPDATE tbl_other_attachments SET title = :title, issuer = :issuer" .
                           ($certificate === null ? "" : ", attachment = :certificate") .
                           " WHERE id=:certid AND member_no = '$myid'");
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':issuer', $issuer);
    $stmt->bindParam(':certid', $certid);
    if ($certificate !== null) {
        $stmt->bindParam(':certificate', $certificate, PDO::PARAM_LOB);
    }
    $stmt->execute();
    header("location:../attachments.php?r=7764");
} catch (PDOException $e) {
    // Handle any database errors
    header("location:../attachments.php?r=2290");
    exit();
}
