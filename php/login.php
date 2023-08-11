<?php 

session_start(); 

include_once "db.php";

if (isset($_POST['username']) && isset($_POST['password'])){

    function validate($data){

       $data = trim($data);

       $data = stripslashes($data);

       $data = htmlspecialchars($data);

       return $data;

    }

    $username = validate($_POST['username']);

    $password = validate($_POST['password']);

    if (empty($username)) {

        header("Location: index.php?error=User Name is required");

        exit();

    }else if(empty($password)){

        header("Location: index.php?error=Password is required");

        exit();

    }
    else
    {
        if(isset($_POST['check_recruit']) &&  $_POST['check_recruit'] == 'A') {
            $sql = "SELECT * FROM recruiter WHERE username='$username' AND password='$password'";

            $result = mysqli_query($conn, $sql);

             if (mysqli_num_rows($result) === 1){
                
                $row = mysqli_fetch_assoc($result);

                if ($row['username'] === $username && $row['password'] === $password){
                     #echo "Logged in!";

                    $_SESSION['username'] = $row['username'];
                    $script = "<script>
                    window.location.href='../recruiter.php';</script>";
                       echo $script;

                }

             }                 
        }else if(isset($_POST['user']) &&  $_POST['user'] == 'B') {
            $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";

            $result = mysqli_query($conn, $sql);

             if (mysqli_num_rows($result) === 1){
                
                $row = mysqli_fetch_assoc($result);

                if ($row['username'] === $username && $row['password'] === $password){
                     #echo "Logged in!";

                    $_SESSION['username'] = $row['username'];
                    $script = "<script>
                    window.location.href='../dashboard.php';</script>";
                       echo $script;

                }

             }                 

        }else{
            echo "invlaid login";
        }
    }
}else{
    $script = "<script>
                window.location.href='../index.html';</script>";
                    echo $script;
    exit();

}