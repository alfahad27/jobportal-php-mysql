<?php
require_once ('db.php');

$CompanyID = $_POST["comp_id"];
$CompanyName = $_POST["comp_name"];
$ContactNumber = $_POST["cont_num"];
$location = $_POST["location"];

$sql = "INSERT INTO `company`(`compid`, `name`, `contact`,`location`) VALUES ('$CompanyID','$CompanyName','$ContactNumber','$location')";
if ($conn->query($sql) === TRUE) {
    $scipt = "<script>alert('Company Registered Successfully');
    window.location.href='../recruiter-register.html';</script>";
    echo $scipt;
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>