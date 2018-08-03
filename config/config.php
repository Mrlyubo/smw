<?php
ob_start();//Turns on output buffering
session_start();//store the previous form

$timezone = date_default_timezone_set("Asia/Taipei");
$con = mysqli_connect("localhost","root","","social");//Connect the database

if(mysqli_connect_errno()){
	echo "Fail to connect: ".mysqli_connect_errno();
}
?>
