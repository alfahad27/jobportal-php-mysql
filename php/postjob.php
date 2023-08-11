<?php
require_once ('db.php');

$companyId = $_POST["compid"];
$recruiterId = $_POST["recid"];
$designation = $_POST["designation"];
$companyName = $_POST["compname"];
$location = $_POST["location"];
$salary = $_POST["salary"];
$description = $_POST["description"];

$sql = "INSERT INTO `job-post`(`recid`, `compid`, `designation`, `company`, `location`, `salary`, `description`) VALUES ('$recruiterId','$companyId','$designation','$companyName','$location','$salary','$description')";
if ($conn->query($sql) === TRUE) {
    $scipt = "<script>alert('Job Posted Successfully');
    window.location.href='../recruiter-jobpost.html';</script>";
    echo $scipt;
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>