<?php
require_once ('db.php');

$username= $_POST["username"];
$email = $_POST["email"];
$password = $_POST["password"];

    #TO handle Checkbox with if else statement
    if(isset($_POST['check_recruit']) && 
    $_POST['check_recruit'] == 'A') 
  {
    $sql = "INSERT INTO `recruiter`(`username`, `password`, `email`) VALUES ('$username','$password','$email')";
                if ($conn->query($sql) === TRUE) {
                        $script = "<script>
                        window.location.href='../recruiter.php';</script>";
                        echo $script;
                }
            else {
                echo "Error: " . $sql . "<br>" . $conn->error;
                }   
      
    }
  else if(isset($_POST['user']) && 
  $_POST['user'] == 'B')
  {
    $sql = "INSERT INTO `user`(`username`, `password`, `email`) VALUES ('$username','$password','$email')";
    if ($conn->query($sql) === TRUE) {
            $script = "<script>
            window.location.href='../dashboard.php';</script>";
            echo $script;
    }
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }   

  }


?>