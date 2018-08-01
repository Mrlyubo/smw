<?php

require 'config/config.php';


if(isset($_SESSION['username'])){
  $userLoggedIn = $_SESSION['username'];
  //echo isset($_SESSION['username']);
  $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$userLoggedIn'");
  $user = mysqli_fetch_array($user_details_query);
  //echo isset($user['first_name']);
}else{
  header("Location: register.php");
}
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>hello!</title>
  <!-- javascript -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>

  <!-- css -->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/bootstrap.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Kalam:700|Merienda|Roboto:400,700" rel="stylesheet">
</head>
<body>
  <div class="top_bar">
    <div class="logo">
      <a href="index.php">Turbofeed!</a>
    </div>
    <nav>
      <a href="<?php echo $userLoggedIn?>" id = 'navname' style="font-family: 'Merienda'">
        <?php echo $user['first_name']?>
      </a>
      <a href="#">
        <i class = "fa fa-home fa-lg"></i>
      </a>
      <a href="#">
        <i class = "fa fa-envelope fa-lg"></i>
      </a>
      <a href="#">
        <i class = "fa fa-bell-o fa-lg"></i>
      </a>
      <a href="#">
        <i class = "fa fa-user fa-lg"></i>
      </a>
      <a href="#">
        <i class = "fa fa-cog fa-lg"></i>
      </a>
      <a href="includes/handlers/logout.php">
        <i class = "fa fa-sign-out fa-lg"></i>
      </a>

    </nav>
  </div>

  <div class="wrapper">
