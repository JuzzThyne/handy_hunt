<!DOCTYPE html>
<html lang="en">
<?php
require '../constants/settings.php';
require 'constants/check-login.php';



if ($user_online == "true") {
    if ($myrole == "employee") {
        // Retrieve 10 random questions from the table
    $id = isset($_GET['id']) ? $_GET['id'] : '';

    // Generate a custom ID based on the value of the "id" parameter
    $custom_id = $id;
        require '../constants/db_config.php';
        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE first_name = '$myfname' ");
            $stmt->execute();
            $result = $stmt->fetchAll();

            foreach ($result as $row) {
                $account_no = $row['member_no'];
                try{
                    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    $stmt = $conn->prepare("SELECT * FROM quiz_scores WHERE user_id = '$account_no' AND job_id = '$custom_id'");
                    $stmt->execute();
                    $result = $stmt->fetchAll();

                    foreach ($result as $row){
                        $status_result = $row['status'];
                        if($status_result == '1')
                        {
                            // echo 'nakapag exam na';
                            
                            header("location:../job-list.php?r=202021");

                        }
                    }
                    

                }
                catch(PDOException $e){

                }
                // echo $account_no;
            ?>
            <?php
            }
        } catch (PDOException $e) {
        }
        // if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        //     // Code to handle form submission
        //     // ...
        // }
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <meta name=”viewport” content=”width=device-width, initial-scale=1.0″>
</head>
<style>
    #timer {
  position: fixed;
  top: 10px; /* Change this value to adjust the vertical position */
  right: 10px; /* Change this value to adjust the horizontal position */
  background-color: #f5f5f5;
  padding: 10px;
  border-radius: 5px;
  font-size: 24px; /* adjust this value to change the text size */
  
}
</style>
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
    

    // Print the custom ID
    // echo $custom_id;

    $jobid = "SELECT * FROM tbl_jobs WHERE job_id = $custom_id";
    $query = mysqli_query($conn, $jobid);

    if (mysqli_num_rows($query) > 0) {
        foreach ($query as $row) {
             $cist = $row['category'];
            // echo $row['category'];
            $company = $row['company'];
            $job_no = $custom_id;

             $sql = "SELECT * FROM quiz_questions WHERE category = '$cist' AND comp_id = '$company' ORDER BY RAND() LIMIT 10 ";
             $result = mysqli_query($conn, $sql);

    // Display the quiz questions
    if (mysqli_num_rows($result) > 0) {
        $counter = 1;
        $score = 0;
        ?>

        <div class="align">
        <form class="Qform rounded" method="post" action="quiz_result.php" id="quiz-form" target="_self">
            <h3 class="title"><img class="logo" src="handyman-logo.png"></h3>
            <h4>
                <?php echo "$myfname"; ?>
                <?php echo "$mylname"; ?>
            </h4>
            <div id="timer">
                <span id="minutes">TIMER : 00</span>:<span id="seconds">00</span>
            </div>
            <br>
            <input type="hidden" name="job_no" value="<?php echo $job_no; ?>">
            <input type="hidden" name="user_id" value="<?php echo $account_no; ?>">
            <?php
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<p class="Question"><strong>Question ' . $counter . ': ' . $row['question'] . '</strong></p>';
                echo '<input type="radio" name="answer' . $counter . '" value="A" onclick="disableReload()" > ' . $row['option_a'] . '<br>';
                echo '<input type="radio" name="answer' . $counter . '" value="B" onclick="disableReload()" > ' . $row['option_b'] . '<br>';
                echo '<input type="radio" name="answer' . $counter . '" value="C" onclick="disableReload()" > ' . $row['option_c'] . '<br>';
                echo '<input type="radio" name="answer' . $counter . '" value="D" onclick="disableReload()" > ' . $row['option_d'] . '<br><br>';
                echo '<hr>';
                $counter++;
            }
            ?>
            <div class="Submit">
                <input id="btn" class="btn btn-primary" type="submit" name="submit" value="Submit">
            </div>
        </form>
        </div>
        <script>
            var totalSeconds = 300; // 2 minutes = 120 seconds
            var timer = setInterval(function() {
                if (totalSeconds <= 0) {
                    clearInterval(timer);
                    document.getElementById("btn").click(); // trigger a click event on the submit button to submit the form and redirect to quiz_result.php when time is up
                } else {
                    totalSeconds--;
                    var minutes = Math.floor(totalSeconds / 60);
                    var seconds = totalSeconds - (minutes * 60);
                    document.getElementById("minutes").innerHTML = minutes < 10 ? "0" + minutes : minutes;
                    document.getElementById("seconds").innerHTML = seconds < 10 ? "0" + seconds : seconds;
                }
            }, 1000);
        </script>

        <script>
            function disableReload() {
                window.onbeforeunload = function () {
                    return "Are you sure you want to leave this page? Your progress will be lost.";
                };
                document.getElementById("quiz-form").addEventListener("submit", function () {
                    window.onbeforeunload = null;
                });
            }
        </script>

        <?php
        // Process the user's answers and calculate their score
        if (isset($_POST['submit'])) {
            for ($i = 1; $i <= 10; $i++) {
                $answer = $_POST['answer' . $i];
                $sql = "SELECT answer FROM quiz_questions WHERE id = " . $i;
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
                if ($answer == $row['answer']) {
                    $score++;
                }
            }
            echo '<p>Your score is: ' . $score . '/10</p>';
        }
    } else {
        echo 'No quiz questions found.';
    }

    // Close the database connection
    mysqli_close($conn);
        }
    }
    




    
    ?>

<script>
function validateForm() {
  var radios = document.getElementsByTagName('input');
  var valueSelected = false;
  for (var i = 0; i < radios.length; i++) {
      if (radios[i].type === 'radio' && radios[i].checked) {
          valueSelected = true;
      }
  }
  if (!valueSelected) {
    alert('Please select an answer.');
    return false;
  }
}
</script>



</body>

</html>