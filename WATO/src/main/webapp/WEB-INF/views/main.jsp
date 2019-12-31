<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./css/social-icon.css"> 
<link rel="stylesheet" type="text/css" href="./css/nav-bar.css">
<link rel="stylesheet" type="text/css" href="./css/search.css">
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet'>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"> 
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<!--===============================================================================================-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<style> 
	.seletetype{
		position: absolute;
		top:10%;
		left:18%;   
	}
	.seletetype>div>a>img{
		width: 490px;
		height:300px;
	}
	.catalog{
		position: absolute;
		top:70%; 
		left:18%; 
		width:70%; /* 선택 아이콘  */
		height:100px;
		
	}
	.catalog >div> figure{
		display: inline-block;
		text-align: center;
	}
	.catalog >div>figure> figcaption{
		text-align: center;
	}
	.catalog>div>figure>a>img {
	width: 50px;
	height: 50px;
	}
	.catalog2{
		position: absolute;
		top:85%; 
		left:18%; 
		width:70%; /* 선택 아이콘  */
		height:100px;
		
	}
	.catalog2 >div> figure{
		display: inline-block;
		text-align: center;
	}
	.catalog2 >div>figure> figcaption{
		text-align: center;
	}
	.catalog2>div>figure>a>img {
	width: 50px;
	height: 50px;
	}
	.stady{ 
		position: absolute; 
		top:100%; 
		left:18%;
		width:65%; 
		height:300px;
		background: skyblue;
	}
	.teacher{
		position: absolute; 
		top:145%; 
		left:18%;
		width:65%;  
		height:300px; 
		background: skyblue;  
	} 
	.footer{
		position: absolute; 
		top:190%;   
		left:18%;  
		width:65%;   
		height:200px;
		background: mistyrose;  
	}
	
</style>  
</head>
<body style="background: white;">
<div style="display: block; background-color: white;"> 
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
			<div class="seletetype row" style="display: block;"> 
				<div class="col-sm-6" style="background: white; width:490px; height:300px; display: inline-block;">
					<a href="#" data-target="#modal" data-toggle="modal">
					   <img src="./images/click.jpg">
					 </a>
				</div>
				<div class="col-sm-6" style="background:  white; width:490px; height:300px; display: inline-block;">
	 				   <a href="#" data-target="#modal" data-toggle="modal">
						   <img src="./images/click.jpg">
						 </a> 
	 			</div>
			</div> 
			<div class="wrap"> <!-- search -->
			   <div class="search">
			      <input type="text" class="searchTerm" placeholder="What are you looking for?">
			      <button type="submit" class="searchButton">
			        <i class="fa fa-search"></i>
			     </button>
			   </div>
			</div>
			<div class="catalog row">
				<div class="col-sm-2">
				<figure >
					<a href="#"><img src="./images/icons/c-icon.png" ></a>
					<figcaption>C</figcaption>
				</figure>
				</div> 
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/cshap-icon.png" ></a>
					<figcaption>C#</figcaption>
				</figure>
				</div>
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/java-icon.png" ></a>
					<figcaption>Java</figcaption>
				</figure> 
				</div>
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/javascript-icon.jpg" ></a> 
					<figcaption>JavaScript</figcaption>
				</figure>
				</div>
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/python-iocn.png" ></a>
					<figcaption>Python</figcaption>
				</figure>
				</div>
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/ruby-icon.jpg" ></a>
					<figcaption>Ruby</figcaption>
				</figure>
				</div>
		
			</div> 
			<div class="catalog2 row">
				<div class="col-sm-2"> 
				<figure>
					<a href="#"><img src="./images/icons/sql-icon.jpg" ></a>
					<figcaption>SQL</figcaption>
				</figure>
				</div>
				<div class="col-sm-2">
				<figure>
					<a href="#"><img src="./images/icons/visualbasic-icon.png" ></a>  
					<figcaption>VisualBasic</figcaption>
				</figure>
				</div>
			</div>
			<div class="stady"> 
				<div style="width: 80%">
						<table border="1" style="width: 125%">
							<tr>
								<th>NO</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
							<c:forEach var="board" items="${boardList}" varStatus="loop">
							<tr>
								<td>${board.seq }</td>
								<td><a href="<c:url value="/board/read/${board.seq}"/>">${board.title }</a></td>
								<td>${board.writer }</td>
								<td>${board.regDate }</td>
								<td>${board.cnt }</td>
							</tr>
							</c:forEach>
						</table>
				</div>
			</div>
			<div class="teacher">
				<div style="width: 80%">
				asdadasd
				</div>
			</div> 
</div>
<footer class="footer">
CSS “Always on the bottom” Footer
I often find myself designing a website where the footer must rest at the bottom of the page, even if the content above it is too short to push it to the bottom of the viewport naturally.

However, if the content is taller than the user’s viewport, then the footer should disappear from view as it would normally, resting at the bottom of the page (not fixed to the viewport).

If you know the height of the footer, then you should set it explicitly, and set the bottom padding of the footer’s parent element to be the same value (or larger if you want some spacing).

This is to prevent the footer from overlapping the content above it, since it is being removed from the document flow with position: absolute;.

This footer will always be positioned at the bottom of the page, but not fixed.
</footer>
<div class="row">
	<div class="modal" id="modal" tabindex="-1">
		<div class="modal-dialog" style="width: 65%">
			<div class="modal-content">
				<div class="modal-header">
					로그인
					<button class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="text-align: center;">
					<div class="limiter" >
						<div class="container-login100" >
								<%@ include  file="./loginform.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
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
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>