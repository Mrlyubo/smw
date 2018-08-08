$(document).ready(function() {
    $('#search_text_input').focus(function() {
        if(window.matchMedia( "(min-width: 800px)" ).matches) {//if the window is wide enough
            $(this).animate({width: '250px'}, 500);
        }
    });

    $('.button_holder').on('click', function() {
        document.search_form.submit();
    });

    $('#submit_profile_post').click(function(){
      $.ajax({
          url: "includes/handlers/ajax_submit_profile_post.php",
          type: "POST",
          data: $('form.profile_post').serialize(),
          success: function(msg) {
              $("#post_form").modal('hide');
              location.reload();
          },
          error: function() {
              alert('Failure');
          }
      });
  });
});

//when user click on the area outside the active dropdown menu, close it automatically.
$(document).click(function(e){

	if(e.target.class != "search_results" && e.target.id != "search_text_input") {

		$(".search_results").html("");
		$('.search_results_footer').html("");
		$('.search_results_footer').toggleClass("search_results_footer_empty");
		$('.search_results_footer').toggleClass("search_results_footer");
	}

	if(e.target.className != "dropdown_data_window") {

		$(".dropdown_data_window").html("");
		$(".dropdown_data_window").css({"padding" : "0px", "height" : "0px"});
	}


});

  function getUsers(value, user) {
  	$.post("includes/handlers/ajax_friend_search.php", {query:value, userLoggedIn:user}, function(data) {
  		$(".results").html(data);//in messages.php
  	});
  }

  function getDropdownData(user, type) {

  	if($(".dropdown_data_window").css("height") == "0px") {

  		var pageName;

  		if(type == 'notification') {
  			pageName = "ajax_load_notifications.php";
  			$("span").remove("#unread_notification");
  		}
  		else if (type == 'message') {
  			pageName = "ajax_load_messages.php";
  			$("span").remove("#unread_message");
  		}

  		var ajaxreq = $.ajax({
  			url: "includes/handlers/" + pageName,
  			type: "POST",
  			data: "page=1&userLoggedIn=" + user,
  			cache: false,

  			success: function(response) {
  				$(".dropdown_data_window").html(response);
  				$(".dropdown_data_window").css({"padding" : "0px", "height": "280px", "border" : "1px solid #DADADA"});
  				$("#dropdown_data_type").val(type);//refer to header.php
  			}

  		});

  	}
  	else {
  		$(".dropdown_data_window").html("");
  		$(".dropdown_data_window").css({"padding" : "0px", "height": "0px", "border" : "none"});
  	}

  }

  function getLiveSearchUsers(value, user) {

	$.post("includes/handlers/ajax_search.php", {query:value, userLoggedIn: user}, function(data) {//Ajax call

		if($(".search_results_footer_empty")[0]) {//in header.php
			$(".search_results_footer_empty").toggleClass("search_results_footer");
			$(".search_results_footer_empty").toggleClass("search_results_footer_empty");
		}

		$('.search_results').html(data);
		$('.search_results_footer').html("<a href='search.php?q=" + value + "'>See All Results</a>");

		if(data == "") {
			$('.search_results_footer').html("");
			$('.search_results_footer').toggleClass("search_results_footer_empty");
			$('.search_results_footer').toggleClass("search_results_footer");
		}

	});

}
