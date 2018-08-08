<?php
    require 'config/config.php';
    include("includes/classes/User.php");
    include("includes/classes/Post.php");
    include("includes/classes/Message.php");
    include("includes/classes/Notification.php");


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
  <title>Turbofeed!</title>
  <!-- javascript -->
  <!-- <script src="assets/js/smw.js"></script> -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/bootbox.min.js"></script>
  <script src="assets/js/smw.js"></script>
  <script src="assets/js/jquery.jcrop.js"></script>
  <script src="assets/js/jcrop_bits.js"></script>

  <!-- css -->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/bootstrap.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Kalam:700|Merienda|Roboto:400,700" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />

</head>
<body>
  <div class="top_bar">
    <div class="logo">
      <a href="index.php">Turbofeed!</a>
    </div>


	<div class="search">
		<form action="search.php" method="GET" name="search_form">
			<input type="text" onkeyup="getLiveSearchUsers(this.value, '<?php echo $userLoggedIn; ?>')" name="q" placeholder="Search..." autocomplete="off" id="search_text_input">
			<div class="button_holder">
				<img src="assets/images/icons/magnifying_glass.png">
			</div>
		</form>

		<div class="search_results">
		</div>

		<div class="search_results_footer_empty">
		</div>
	</div>


    <nav>
        <?php
            //Unread messages
            $messages = new Message($con, $userLoggedIn);
            $num_messages = $messages->getUnreadNumber();

            //Unread notifications
            $notifications = new Notification($con, $userLoggedIn);
            $num_notifications = $notifications->getUnreadNumber();

            //Unread notifications
            $user_obj = new User($con, $userLoggedIn);
            $num_requests = $user_obj->getNumberOfFriendRequests();
        ?>
        <a href="<?php echo $userLoggedIn?>" id = 'navname' style="font-family: 'Merienda'">
            <?php echo $user['first_name']?>
        </a>
        <a href="index.php">
            <i class = "fa fa-home fa-lg"></i>
        </a>
        <a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
            <i class = "fa fa-envelope fa-lg"></i>
            <?php
                if($num_messages > 0)
                 echo '<span class="notification_badge" id="unread_message">' . $num_messages . '</span>';
            ?>
        </a>
        <a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'notification')">
            <i class = "fa fa-bell-o fa-lg"></i>
            <?php
                if($num_notifications > 0)
                 echo '<span class="notification_badge" id="unread_notification">' . $num_notifications . '</span>';
            ?>
        </a>
        <a href="requests.php">
            <i class = "fa fa-user fa-lg"></i>
            <?php
                if($num_requests > 0)
                 echo '<span class="notification_badge" id="unread_requests">' . $num_requests . '</span>';
            ?>
        </a>
        <a href="#">
            <i class = "fa fa-cog fa-lg"></i>
        </a>
        <a href="includes/handlers/logout.php">
            <i class = "fa fa-sign-out fa-lg"></i>
        </a>

    </nav>

    <div class="dropdown_data_window"></div>
    <input type="hidden" id="dropdown_data_type" value="">


  </div>


  <script>
  var userLoggedIn = '<?php echo $userLoggedIn; ?>';

  $(document).ready(function() {

      $('.dropdown_data_window').scroll(function() {
          var inner_height = $('.dropdown_data_window').innerHeight(); //Div containing data
          var scroll_top = $('.dropdown_data_window').scrollTop();

          var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();// refer to Message.php
          var noMoreData = $('.dropdown_data_window').find('.noMoreDropdownData').val();



          if ((scroll_top + inner_height >= $('.dropdown_data_window')[0].scrollHeight) && noMoreData == 'false') {


              var pageName; //Holds name of page to send ajax request to
              var type = $('#dropdown_data_type').val();//comes from header.php


              if(type == 'notification'){

                  pageName = "ajax_load_notifications.php";

              }

              else if(type == 'message'){
                  //alert("messages!");
                  pageName = "ajax_load_messages.php";

              }



              var ajaxReq = $.ajax({
                  url: "includes/handlers/" + pageName,
                  type: "POST",
                  data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
                  cache:false,

                  success: function(response) {
                      $('.dropdown_data_window').find('.nextPageDropdownData').remove(); //Removes current .nextpage
                      $('.dropdown_data_window').find('.noMoreDropdownData').remove(); //Removes current .nextpage

                      //alert("success!");
                      $('.dropdown_data_window').append(response);
                  }
              });

          } //End if

          return false;

      }); //End (window).scroll(function())


  });

  </script>



  <div class="wrapper">
