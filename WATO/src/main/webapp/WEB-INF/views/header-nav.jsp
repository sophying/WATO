<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/nav-bar.css">
</head>
<body>
  <div class="nav-container"  style="display: block;">
		    <div class="brand">
		      <a href="main.jsp">LOGO</a>
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
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
		  <button onclick="ssss()">버튼</button>
</body>
</html>