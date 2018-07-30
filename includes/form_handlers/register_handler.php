<?php

//Declaring variables to prevent errors
$fname = "";
$lname = "";
$em = "";//email
$em2 = "";
$password = "";
$password2 = "";
$date = "";//Sign up date
$error_array = array();

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
					array_push($error_array, "Email already in use.<br>");
				}
			}else{
				array_push($error_array, "Invalid Email format.<br>");
			}
	}else{
		array_push($error_array, "Email don't match.<br>");
	}

	if(strlen($fname)>25 || strlen($fname) < 2){
		array_push($error_array, "Your first name must be between 2 and 25 characters.<br>");
	}

	if(strlen($lname)>25 || strlen($lname)<2){
		array_push($error_array, "Your last name must be between 2 and 25 characters.<br>");
	}

	if($password != $password2){
		array_push($error_array, "Your passwords do not match.<br>");
	}else{
		if(preg_match('/[^A-Za-z0-9]/',$password)){
			array_push($error_array, "Your password can only contain English characters or numbers.<br>");
		}
	}

	if(strlen($password > 30 || strlen($password) < 5)){
		array_push($error_array, "Your password must be between 5 and 30 characters.<br>");
	}

	if(empty($error_array)){
		//echo "No Error. ";
		$password = md5($password);//Encrypt password before sending to database.

		//Generate username by concatenating first name and last name
		$username = strtolower($fname . "_" . $lname);
		//echo $username;
		$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
		//echo mysqli_num_rows($check_username_query);

		//if usrname exists add number to username
		$i = 0;
		while(mysqli_num_rows($check_username_query) != 0){
			$i++;// Add 1 to i;
			$username = $username . "_" . $i;
			//echo $username;
			$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
		}

		//Profile picture assignment
		$rand = rand(1,2);//Random number between 1 and 2

		if($rand == 1){
			$profile_pic = "assets/images/profile_pics/defaults/head_1.jpg";
		}else if($rand == 2){
			$profile_pic = "assets/images/profile_pics/defaults/head_2.jpg";
		}

		$query = mysqli_query($con, "INSERT INTO users VALUES
			('','$fname','$lname','$username','$em','$password','$date','$profile_pic','0','0','no',',')");
		array_push($error_array, "<span style='color:#14C800'>You're all set! Go ahead and login!</span><br>");

		//Clear session variables
		$_SESSION['reg_fname']="";
		$_SESSION['reg_lname']="";
		$_SESSION['reg_email']="";
		$_SESSION['reg_email2']="";


	}
}
?>
