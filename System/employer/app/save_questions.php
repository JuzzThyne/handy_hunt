<?php
require_once('../../constants/db_config.php');

// Get the form data
$question = $_POST['question'];
$choose_A = "D. ".$_POST['choose_A'];
$choose_B = "C. ".$_POST['choose_B'];
$choose_C = "B. ".$_POST['choose_C'];
$choose_D = "D. ".$_POST['choose_D'];
$answer = $_POST['answer'];
$category = $_POST["category"];
$id = $_POST["id"];

// Insert the data into the database
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("INSERT INTO quiz_questions (question, option_a, option_b, option_c, option_d, answer, category, comp_id) VALUES ( :question, :choose_A, :choose_B, :choose_C, :choose_D, :answer , :category, :id)");
    $stmt->bindParam(':category', $category);
    $stmt->bindParam(':question', $question);
    $stmt->bindParam(':choose_A', $choose_A);
    $stmt->bindParam(':choose_B', $choose_B);
    $stmt->bindParam(':choose_C', $choose_C);
    $stmt->bindParam(':choose_D', $choose_D);
    $stmt->bindParam(':answer', $answer);
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    header("location:../add_questions.php?r=202023");
} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null;
?>