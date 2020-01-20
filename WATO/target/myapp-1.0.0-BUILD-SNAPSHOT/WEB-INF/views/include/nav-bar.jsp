<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title> 
<link rel="stylesheet" type="text/css" href="/css/nav-bar.css">
<link rel="stylesheet" type="text/css" href="/css/searchpageform.css">
</head> 
<body>
<div class="navigation">
		  <div class="nav-container">  
		    <div class="brand">
		      <a href="/">LOGO</a>
		    </div>
		    <nav>
		      <div class="nav-mobile">
		        <a id="nav-toggle" href="#!"><span></span></a>
		      </div>
		      <ul class="nav-list">
		        <!-- Setting the links to #! will ensure that no action takes place on click. -->
		        <li><a href="#!">Home</a></li>
		        <li><a href="#!">About</a></li> 
		        <li><a href="#!">Services</a>
		          <ul class="nav-dropdown">
		            <li><a href="#!">Web Design</a></li>
		            <li><a href="#!">Web Development</a></li>
		            <li><a href="#!">Graphic Design</a></li>
		          </ul> 
		        </li>
		        <li><a href="#!">Pricing</a></li>
		        <li><a href="#!">Contact</a></li>
		      </ul>
		    </nav>
		  </div>
		  </div>
		  <script >
			(function($) { // Begin jQuery
				  $(function() { // DOM ready
				    // If a link has a dropdown, add sub menu toggle.
				    $('nav ul li a:not(:only-child)').click(function(e) {
				      $(this).siblings('.nav-dropdown').toggle();
				      // Close one dropdown when selecting another
				      $('.nav-dropdown').not($(this).siblings()).hide();
				      e.stopPropagation();
				    });
				    // Clicking away from dropdown will remove the dropdown class
				    $('html').click(function() {
				      $('.nav-dropdown').hide();
				    });
				    // Toggle open and close nav styles on click
				    $('#nav-toggle').click(function() {
				      $('nav ul').slideToggle();
				    });
				    // Hamburger to X toggle
				    $('#nav-toggle').on('click', function() {
				      this.classList.toggle('active');
				    });
				  }); // end DOM ready
				})(jQuery); // end jQuery
	</script>
</body>
</html>