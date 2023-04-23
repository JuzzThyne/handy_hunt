<!DOCTYPE html>
<html lang="en">
<?php
require '../constants/settings.php';
require 'constants/check-login.php';


if ($user_online == "true") {
	if ($myrole == "employee") {
	} else {
		header("location:../");
	}
} else {
	header("location:../");
}
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handyhunt - Evaluation Exam</title>
    <link rel='stylesheet' type='text/css' href='style.css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta name=”viewport” content=”width=device-width, initial-scale=1.0″>
</head>
<body>
<?php
// Connect to the database
$conn = mysqli_connect('localhost', 'root', '', 'job_portal');

// Check connection
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

?>


<?php
// Retrieve 10 random questions from the table
$sql = "SELECT * FROM quiz_questions ORDER BY RAND() LIMIT 10 ";
$result = mysqli_query($conn, $sql);

// Display the quiz questions
if (mysqli_num_rows($result) > 0) {
    $counter = 1;
    $score = 0;
?>

<form class="Qform rounded" method="post" action="quiz_result.php">
    <h3 class="title"><img class="logo" src="handyman-logo.png"></h3>

    <?php
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<p class="Question"><strong>Question '.$counter.': '.$row['question'].'</strong></p>';
        echo '<input type="radio" name="answer'.$counter.'" value="A"> '.$row['option_a'].'<br>';
        echo '<input type="radio" name="answer'.$counter.'" value="B"> '.$row['option_b'].'<br>';
        echo '<input type="radio" name="answer'.$counter.'" value="C"> '.$row['option_c'].'<br>';
        echo '<input type="radio" name="answer'.$counter.'" value="D"> '.$row['option_d'].'<br><br>';
        echo '<hr>';
        $counter++;
    }
    ?>
    <div class="Submit">
        <input id="btn" class="btn btn-primary" type="submit" name="submit" value="Submit">
    </div>
</form>

<?php
    // Process the user's answers and calculate their score
    if (isset($_POST['submit'])) {
        for ($i = 1; $i <= 10; $i++) {
            $answer = $_POST['answer'.$i];
            $sql = "SELECT answer FROM quiz_questions WHERE id = ".$i;
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
            if ($answer == $row['answer']) {
                $score++;
            }
        }
        echo '<p>Your score is: '.$score.'/10</p>';
    }
} else {
    echo 'No quiz questions found.';
}

// Close the database connection
mysqli_close($conn);
?>

    
</body>
</html>







