<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>스터디어스 - 세상을 뒤흔들어라</title> 
  
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./css/social-icon.css"> 
<link rel="stylesheet" type="text/css" href="./css/search.css">
 
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet'>
<link rel="icon" type="image/png" href="./images/icons/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="./slick/slick.css">
<link rel="stylesheet" type="text/css" href="./slick/slick-theme.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="./slick/slick.min.js"></script>
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
	.container-login100 {
	  width: 100%;  
	  min-height: 80vh;
	  display: -webkit-box;
	  display: -webkit-flex;
	  display: -moz-box;
	  display: -ms-flexbox;
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: center;
	  align-items: center;
	  padding: 15px;
	  background: #9053c7;
	  background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
	  background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
	  background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
	  background: linear-gradient(-135deg, #c850c0, #4158d0);
	}
	.main {
	  position:absolute;
	  top:30%;
	  left:4%;
	  font-family:Arial;
	  width:90%;
	  height:300px;
	  display:block;
	  margin:0 auto;
	}
	h3 {
	    background: #fff;
	    color: #3498db;
	    font-size: 36px;
	    line-height: 100px;
	    margin: 10px;
	    padding: 2%;
	    position: relative;
	    text-align: center;
	}
	
	 .main > .slider .container  img {
	 	width:100%;
	 	height: auto;
	 	max-width: 100px;
	 }
	 .main > .slider .container:hover .image {
	  opacity: 0.3;
	}
	
	 .main > .slider .container:hover .middle {
	  opacity: 1;
	}
	
	 .main > .slider .container:hover .middle.text {
	  color: white;
	  font-size: 16px;
	  text-align:center;
	  padding: 16px 32px;
	}
</style>  
</head>
<body style="background: white;">
<div style="display: block; background-color: white;"> 
			<%@ include  file="./nav-bar.jsp"%>
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
			      <input style="cursor: pointer;" id="search" type="text" class="searchTerm" placeholder="What are you looking for?">
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
						<div class="main">
						  <div class="slider slider-nav">
								<%int i = 1;%>
							  <c:forEach items="${listRank}" var="listRank"> 
								<div>
									<%if(i == 1){ %>
										<img alt="1등이미지" src="./images/bttrfly1.jpg">
									<%}else if( i ==2) {%>
										<img alt="2등이미지" src="./images/fi.png">
									<%} %>
							    	<div class="container">
											<a href="#" data-target="#numno${listRank.bno}" data-toggle="modal">
											   <img src="./images/icons/javascript-icon.jpg" alt="Avatar" class="image" style="width:100%">
											 </a>
										  <div class="middle">
										  	${listRank.title} (number<%=i%>)
										  </div>
									</div> 
						    	</div>
						    	<% i++; %>
							  </c:forEach>
						  </div>
						</div>
						<script type="text/javascript">
							 $('.slider-nav').slick({
							   slidesToShow: 3,
							   slidesToScroll: 1,
							   dots: true,
							   focusOnSelect: true,
							   autoplay: true,
								  autoplaySpeed: 2000,
							 });
						</script>
				</div>
			</div>
			<div class="teacher">
					<div style="width: 80%">
						<div class="main">
						  <div class="slider slider-nav" id="teacher">
								<%int j = 1;%>
							  <c:forEach items="${listRank}" var="listRank"> 
								<div>
									<%if(j == 1){ %>
										<img alt="1등이미지" src="./images/bttrfly1.jpg">
									<%}else if( j ==2) {%>
										<img alt="2등이미지" src="./images/fi.png">
									<%} %>
							    	<div class="container">
											<a href="#" data-target="#numno${listRank.bno}" data-toggle="modal">
											   <img src="./images/icons/javascript-icon.jpg" alt="Avatar" class="image" style="width:100%">
											 </a>
										  <div class="middle">
										  	${listRank.title} (number<%=j%>)
										  </div>
									</div> 
						    	</div>
						    	<% j++; %>
							  </c:forEach>
						  </div>
						</div>
						<script type="text/javascript">
							 $('#teacher').slick({
							   slidesToShow: 3,
							   slidesToScroll: 1,
							   dots: true,
							   focusOnSelect: true,
							   autoplay: true,
								  autoplaySpeed: 2000,
							 });
						</script>
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
		<div class="modal-dialog" style="width: 50%;">  
			<div class="modal-content">  
				<div class="modal-header">
					로그인 
					<button class="close" data-dismiss="modal">&times;</button>
				</div> 
				<div class="modal-body" style="text-align: center;">
					<div class="limiter">
						<div class="container-login100" style="height: auto"> 
								<%@ include  file="./loginform.jsp"%>
						</div>
					</div>  
				</div>
			</div>
		</div>
	</div> 
</div>

<c:forEach items="${listRank}" var="listRank">
<div class="row">
		<div class="modal" id="numno${listRank.bno}" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content"  style="max-width: 100%; width: auto; display: table;">
					<div class="modal-header">
						스터디 소개
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<div class="limiter"> 
							<div style="display: block; margin: 0px 70px;">
								<img src="./images/icons/javascript-icon.jpg" alt="Avatar" class="image" style="width:100%; max-width: 100px; display: block;">
							</div> 
							<div class="pull-left" style="display: block;">
								<p>사용하는 언어 : ${listRank.bno}  
								<p>모집 인원 : ${listRank.viewCnt }
								<p>집합 장소 : ${listRank.regDate }
								<p>${listRank.content }
							</div>
							<div>
								<a href="/board/details?bno=${listRank.bno}" class="btn btn-primary">스터디 상세보기</a>
						 	</div>
						</div>  
					</div>			
				</div>
			</div>
		</div>
	</div>
</c:forEach>						
	<script >
	(function($) { // Begin jQuery
		  $(function() { // DOM ready
		    $('#search').on('click', () => {
		    	location.href='/User/search' 
		    });
		  }); // end DOM ready
		})(jQuery); // end jQuery
	</script>
	<script src="js/main.js"></script>
</body>
</html>