<?php

$con = mysqli_connect("localhost","root","","social");//Connection varialbe
if(mysqli_connect_errno()){
	echo "Fail to connect: ".mysqli_connect_errno();
}

//Declaring variables to prevent errors
$fname = "";//dfd 
$lname = "";
$em = "";//email
$em2 = "";
$password = "";
$password2 = "";
$date = "";//Sign up date
$error_aaray = "";

if(isset($_POST['register_button'])){

	//Registration form values

	//First Name
	$fname = strip_tags($_POST['reg_fname']);//remove html tags
	$fname = str_replace(' ', '', $fname);//remove spaces
	$fname = ucfirst(strtolower($fname));//uppercase the first letter

	//Last Name
	$lname = strip_tags($_POST['reg_fname']);//remove html tags
	$lname = str_replace(' ', '', $lname);//remove spaces
	$lname = ucfirst(strtolower($lname));//uppercase the first letter

	//email
	$em = strip_tags($_POST['reg_em']);//remove html tags
	$em = str_replace(' ', '', $em);//remove spaces
	$em = ucfirst(strtolower($em));//uppercase the first letter

	//email2
	$em2 = strip_tags($_POST['reg_email2']);//remove html tags
	$em2 = str_replace(' ', '', $em2);//remove spaces
	$em2 = ucfirst(strtolower($em2));//uppercase the first letter

	//password
	$password = ucfirst(strtolower($password));//uppercase the first letter
	$password2 = ucfirst(strtolower($password2));//uppercase the first letter

	$date = date("Y-m-d")//get the current date
}
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Welcom to Turbofeed!</title>
</head>
<body>
	<form accept="rester.php" method="POST" >
		<input type="text" name="reg_fname" placeholder="First Name" required>
		<br>
		<input type="text" name="reg_lname" placeholder="Last Name" required>
		<br>
		<input type="email" name="reg_email" placeholder="Email" required>
		<br>
		<input type="email" name="reg_email2" placeholder="Confirm Name" required>
		<br>
		<input type="password" name="reg_password" placeholder="password" required>
		<br>
		<input type="password" name="reg_password2" placeholder="Confirm password" required>
		<br>
		<input type="submit" name="regster_button" value="Register">
	</form>
</body>
</html>
