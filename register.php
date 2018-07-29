<?php
session_start();//
$con = mysqli_connect("localhost","root","","social");//Connection varialbe
if(mysqli_connect_errno()){
	echo "Fail to connect: ".mysqli_connect_errno();
}

//Declaring variables to prevent errors
$fname = "";
$lname = "";
$em = "";//email
$em2 = "";
$password = "";
$password2 = "";
$date = "";//Sign up date
$error_aaray = array();

if(isset($_POST['register_button'])){

	//Registration form values

	//First Name
	$fname = strip_tags($_POST['reg_fname']);//remove html tags
	$fname = str_replace(' ', '', $fname);//remove spaces
	$fname = ucfirst(strtolower($fname));//uppercase the first letter
	$_SESSION['reg_fname']= $fname;//Stores first name into session variable

	//Last Name
	$lname = strip_tags($_POST['reg_lname']);//remove html tags
	$lname = str_replace(' ', '', $lname);//remove spaces
	$lname = ucfirst(strtolower($lname));//uppercase the first letter
	$_SESSION['reg_lname']= $lname;//Stores last name into session variable

	//email
	$em = strip_tags($_POST['reg_email']);//remove html tags
	$em = str_replace(' ', '', $em);//remove spaces
	$em = ucfirst(strtolower($em));//uppercase the first letter
	$_SESSION['reg_email']= $em;//Stores email into session variable

	//email2
	$em2 = strip_tags($_POST['reg_email2']);//remove html tags
	$em2 = str_replace(' ', '', $em2);//remove spaces
	$em2 = ucfirst(strtolower($em2));//uppercase the first letter
	$_SESSION['reg_email2']= $em2;//Stores email2 into session variable

	//password
	$password = strip_tags($_POST['reg_password']);//remove html tags
	$password2 = strip_tags($_POST['reg_password2']);//remove html tags

	$date = date("Y-m-d");//get the current date

	if($em == $em2){
		//check if the email is in valid format
			if(filter_var($em, FILTER_VALIDATE_EMAIL)){
				$em = filter_var($em, FILTER_VALIDATE_EMAIL);
				//check if the email exits
				$e_check = mysqli_query($con, "SELECT email FROM users WHERE email= '$em'");

				//Count the num of rows returned
				$num_rows = mysqli_num_rows($e_check);

				if($num_rows > 0){
					array_push($error_array, "Email already in use.");
				}
			}else{
				array_push($error_array, "Invalid format.");
			}
	}else{
		array_push($error_array, "Email don't match.");
	}

	if(strlen($fname)>25 || strlen($fname)<2){
		array_push($error_array, "Your first name must be between 2 and 25 characters.");
	}

	if(strlen($lname)>25 || strlen($lname)<2){
		array_push($error_array, "Your last name must be between 2 and 25 characters.");
	}//

	if($password != $password2){
		array_push($error_array, "Your passwords do not match.");
	}else{
		if(preg_match('/[^A-Za-z0-9]/',$password)){
			array_push($error_array, "Your password can only contain English characters or numbers.");
		}
	}

	if(strlen($password > 30 || strlen($password) < 5)){
		array_push($error_array, "Your password must be between 5 and 30 characters.");
	}
}
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Welcom to Turbofeed!</title>
</head>
<body>
	<form accept="rester.php" method="POST" >
		<input type="text" name="reg_fname" placeholder="First Name" value="<?php
			if(isset($_SESSION['reg_fname'])){
				echo $_SESSION['reg_fname'];
			}
		?>" required>
		<br>
		<input type="text" name="reg_lname" placeholder="Last Name" value="<?php
			if(isset($_SESSION['reg_lname'])){
				echo $_SESSION['reg_lname'];
			}
		?>"required>
		<br>
		<input type="email" name="reg_email" placeholder="Email" value="<?php
			if(isset($_SESSION['reg_email'])){
				echo $_SESSION['reg_email'];
			}
		?>"required>
		<br>
		<input type="email" name="reg_email2" placeholder="Confirm Email" value="<?php
			if(isset($_SESSION['reg_email2'])){
				echo $_SESSION['reg_email2'];
			}
		?>"required>
		<br>
		<input type="password" name="reg_password" placeholder="password" required>
		<br>
		<input type="password" name="reg_password2" placeholder="Confirm password" required>
		<br>
		<input type="submit" name="register_button" value="Register">
	</form>
</body>
</html>
