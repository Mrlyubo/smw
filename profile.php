<?php
    include("includes/header.php");


    if(isset($_GET['profile_username'])){
      $username = $_GET['profile_username'];
      $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$username'");
      $user_array = mysqli_fetch_array($user_details_query);

      $num_friends = (substr_count($user_array['friend_array'], ",")) - 1;
    }

    if(isset($_POST['remove_friend'])) {
    	$user = new User($con, $userLoggedIn);
    	$user->removeFriend($username);
    }

    if(isset($_POST['add_friend'])) {
    	$user = new User($con, $userLoggedIn);
    	$user->sendRequest($username);
    }
    if(isset($_POST['respond_request'])) {
    	header("Location: requests.php");
    }

    if(isset($_POST['post_message'])) {
      if(isset($_POST['message_body'])) {
        $body = mysqli_real_escape_string($con, $_POST['message_body']);
        $date = date("Y-m-d H:i:s");
        $message_obj->sendMessage($username, $body, $date);
      }

      $link = '#profileTabs a[href="#messages_div"]';
      echo "<script>
              $(function() {
                  $('" . $link ."').tab('show');
              });
            </script>";


    }


?>
    <style type="text/css" media="screen">
        .wrapper {
            margin-left:0px;
            padding-left: 0px;
        }
    </style>
    <div class="profile_left">
        <img src="<?php echo $user_array['profile_pic']; ?>" alt="">
        <div class="profile_info">
            <p><?php echo "Posts: ".$user_array['num_posts']; ?></p>
            <p><?php echo "Likes: ".$user_array['num_likes']; ?></p>
            <p><?php echo "Friends: ".$num_friends; ?></p>
        </div>

    <!-- //Add Friend -->
    <form action="<?php echo $username; ?>" method="POST">
        <?php
        $profile_user_obj = new User($con, $username);
        if($profile_user_obj->isClosed()) {
            header("Location: user_closed.php");
        }

        $logged_in_user_obj = new User($con, $userLoggedIn);

        if($userLoggedIn != $username) {

            if($logged_in_user_obj->isFriend($username)) {
                echo '<input type="submit" name="remove_friend" class="danger" value="Remove Friend"><br>';
            }
            else if ($logged_in_user_obj->didReceiveRequest($username)) {
                echo '<input type="submit" name="respond_request" class="warning" value="Respond to Request"><br>';
            }
            else if ($logged_in_user_obj->didSendRequest($username)) {
                echo '<input type="submit" name="" class="default" value="Request Sent"><br>';
            }
            else{
                echo '<input type="submit" name="add_friend" class="success" value="Add Friend"><br>';
            }


        }

        ?>
    </form>
    </div>
    <div class="main_column column">
        <?php echo $username;?>

    </div>



  </div>
</body>
</html>
