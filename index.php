<?php

$con = mysqli_connect("localhost","root","","social");//Connection varialbe
if(mysqli_connect_errno()){
	echo "Fail to connect: ".mysqli_connect_errno();
}

$query = mysqli_query($con,"INSERT INTO `test` (`id`, `name`) VALUES ('2', 'double')");

 ?>


<!DOCTYPE html>
<html>
<head>
	<title>hello!</title>
</head>
<body>
	hi!
</body>
</html>
