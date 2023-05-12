<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

// Check if file is a valid PNG or JPEG image
if ($_FILES["image"]["size"] > 1000000 || !in_array(exif_imagetype($_FILES["image"]["tmp_name"]), [IMAGETYPE_PNG, IMAGETYPE_JPEG])) {
  header("location:../?r=3478");
} else {
  // File is valid, proceed with uploading

  $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
  
  try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("UPDATE tbl_users SET avatar='$image' WHERE member_no='$myid'");
    $stmt->execute();
	
    $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE member_no='$myid'");
    $stmt->execute();
    $result = $stmt->fetchAll();

    foreach($result as $row) {
      $_SESSION['avatar'] = $row['avatar'];
      header("location:../");
    }
  } catch(PDOException $e) {
    // Handle errors
  }
}
?>
