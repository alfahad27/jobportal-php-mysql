<?php
require_once ('db.php');

$Name = $_POST["name"];
$email = $_POST["email"];
$contact = $_POST["contact"];


$sql = "INSERT INTO `applied`(`jobid`,`userid`, `name`, `email`, `contact`) VALUES ('4','4','$Name','$email','$contact')";
if ($conn->query($sql) === TRUE) {
    $scipt = "<script>alert('Job Applied Successfully');
    window.location.href='../job-detail.php';</script>";
    echo $scipt;
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>