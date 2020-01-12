<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" type="image/png" href="https://static.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<title>CodePen - Material Design About  Card</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) { 
    window.parent.postMessage("resize", "*");
  }
</script>
</head> 
<style> 
.product {
	margin-bottom: 30px;
}
.product-inner {
	box-shadow: 0 0 10px rgba(0,0,0,.2);
	padding: 10px;
}
.product img {
	margin-bottom: 10px;
}

.studylistviewbody #about {
  width: 80%;
  margin: auto;
  padding: 0;
  margin-bottom: 128px; 
}

.studylistviewbody #about .card-title {
  margin-top: 85px;
  text-align: center;
} 

.studylistviewbody #about .description {
  color: #212121;
  padding-bottom: 10px;
  text-align: center;
}

.studylistviewbody #about .card-header img.background {
  width: 100%;
}

.studylistviewbody #about .card-header img.user {
  width: 100%;
  max-width:130px; 
  display: block; 
  margin: auto;
  border-radius: 100px;
  position: relative;
  bottom: 75px;
  margin-bottom: -150px;
}

.studylistviewbody .social {
  padding: 5px; 
  text-align: center;
  font-size: 1.5em;
}

.studylistviewbody .story {
  padding: 5px;
  text-align: center;
  font-size: 1.2em;
}

.studylistviewbody .wrap {
  position: absolute;
  overflow: hidden;
  top: 0%;
  right: 0%;
  bottom: 80px;
  left: 0%;
  padding: 20px 50px;
  display: block;
  border-radius: 4px;
  transform: translateY(20px);
  transition: all 0.5s;
  visibility: hidden;
}

.studylistviewbody .wrap .content {
  opacity: 0;
}

.studylistviewbody .wrap:before {
  position: absolute;
  width: 1px;
  height: 1px;
  background: white;
  content: "";
  bottom: 10px;
  left: 50%;
  top: 95%;
  color: #fff;
  border-radius: 50%;
  -webkit-transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
  transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
}

.studylistviewbody .wrap.active {
  display: block;
  visibility: visible;
  box-shadow: 2px 3px 16px silver;
  transition: all 600ms;
  transform: translateY(0px);
  transition: all 0.5s;
}

.studylistviewbody .wrap.active:before {
  height: 2000px;
  width: 2000px;
  border-radius: 50%;
  top: 50%; 
  left: 50%;
  margin-left: -1000px;
  margin-top: -1000px;
  display: block;
  -webkit-transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
  transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
}

.studylistviewbody .wrap.active .content {
  position: relative;
  z-index: 1;
  opacity: 1;
  transition: all 600ms cubic-bezier(0.55, 0.055, 0.675, 0.19);
}
.studylistviewbody .content p {
  text-align: center;
}
.studylistviewbody .content h4 {
  text-align: center;
}
.studylistviewbody .more {
-webkit-transition-duration: .5s;
    -moz-transition-duration: .5s;
    -o-transition-duration: .5s;
    transition-duration: .5s;
    -webkit-transition-property: -webkit-transform; 
    -moz-transition-property: -moz-transform;
    -o-transition-property: -o-transform;
    transition-property: transform;
}
</style>
</head>  
<body style="overflow-x:hidden; overflow-y:hidden;">  
<div class="studylistviewbody">
  <div class="valign-wrapper">
  	<div class="row">
  <% int cnt = 0; %>  
	    <div class="col s12 m4">
	      <div class="card" id="about"> 
	        <div class="card-header">
	          <img class="background" src="https://images.unsplash.com/uploads/14128434147336bfb286b/e76494ac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=0d14ef0b6c5eeee1561a0e340d48ae41">
	          <img class="user" src="http://i66.tinypic.com/ng7ue1.jpg">
	        </div>
	        <h5 class="card-title">
	                ${studylistAll.title}
	        </h5>  
	        <h6 class="description">  
	                ${studylistAll.writer} 
	              </h6>
	        <div class="social">
	          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2" onclick="togglefunction(this)"><i class="material-icons">add</i></a>
	        </div>
	        <div class='wrap'>
	          <div class='content'>
	            <span>Follow me:</span>
	            <p><a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" href="https://github.com/rommetv" target="_blank"><i class="fa fa-github"></i></a></p>
	            <p><a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" href="https://codepen.io/Rommetv/" target="_blank"><i class="fa fa-codepen"></i></a></p>
	            <p><a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" href="https://rommetevelde.nl" target="_blank"><i class="fa fa-globe"></i></a></p>
	          </div> 
	        </div>
	      </div>
	    </div>
		<% cnt++; %>
	  </div>  
   
</div>
</div>  
  
<script type="text/javascript">
	
	function togglefunction (event) { 
		$(event).toggleClass('active'); 
		$(event).parent().next().toggleClass('active');  
		return false;
	}

	$( ".more" ).click(function() {
	    //alert($( this ).css( "transform" ));
	    if (  $( this ).css( "transform" ) == 'none' ){
	        $(this).css("transform","rotate(45deg)");
	    } else {
	        $(this).css("transform","" );
	    }
	});
			
/* 	$('.more').on('click', function() {
	  $('.wrap, .more').toggleClass('active');
	  
	  return false;
	}); */
 /* 	$( ".more" ).click(function() {
	    //alert($( this ).css( "transform" ));
	    if (  $( this ).css( "transform" ) == 'none' ){
	        $(this).css("transform","rotate(45deg)");
	    } else {
	        $(this).css("transform","" );
	    }
	}); */
	
</script>
<script type="text/javascript"> 
document.body.scrollIntoView(true);
parent.document.all.studylistview.height = document.body.scrollHeight;

</script>

</body>

</html>