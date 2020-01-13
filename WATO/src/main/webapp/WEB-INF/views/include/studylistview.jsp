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
<title>CodePen - Material Design About  Card</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head> 
<style> 
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
.form-group {
  margin-bottom: 1rem;
}
.form-control {
  display: block; 
  width: 100%;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.25rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.col-xs-6{position:relative;min-height:1px;padding-right:15px;padding-left:15px;float:left;width:50%}
.col-xs-3{position:relative;min-height:1px;padding-right:15px;padding-left:15px;float:left;width:25%} 
 .col-sm-3 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 25%;
    flex: 0 0 25%;
    max-width: 25%;
  } 
  input[type="checkbox"] {
  box-sizing: border-box;
  padding: 0;
}
[type="checkbox"]:not(:checked),[type="checkbox"]:checked{position:static;left:0px;visibility:visible;}

  .col-sm-2 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 16.666667%;
    flex: 0 0 16.666667%;
    max-width: 16.666667%;
  } 
  
</style>   
</head>    
<body style="overflow-x:hidden; overflow-y:hidden;">   
<br>
<br>
		<form method="post" name="filterform"> 
			<div style="	  
			  display: -webkit-box;
			  display: -ms-flexbox; 
			  display: flex;
			  -ms-flex-wrap: wrap;
			  flex-wrap: wrap;  
			  margin-right: -15px;   
			  margin-left: 24px;"  
			  id="filter"> 
					<div class="form-group col-sm-2 col-xs-6"> 
						<select class="form-control" name="place"> 
							<option value="">지역</option> 
							<option value="">Show All</option>    
							<option value="서울">서울</option>   
							<option value="인천">인천</option>   
							<option value="세종">세종</option>  
						</select>  
					</div>
					<div class="form-group col-sm-2 col-xs-6">
						<select class="form-control" name="category">
							<option value="">카테고리</option>
							<option value="">Show All</option>  
							<option value="자바">자바</option>  
							<option value="C">C</option>  
							<option value="파이선">파이선</option>  
						</select> 
					</div>
					<div class="form-group col-sm-2 col-xs-6">
						<select class="form-control" name="level"> 
							<option value="">레벨</option> 
							<option value="">Show All</option> 
							<option value="초급">초급</option> 
							<option value="중급">중급</option> 
							<option value="고급">고급</option>  
						</select>  
					</div>      
					<div class="form-group col-sm-2 col-xs-6">
						<div class="button-group"> 
					        <button onfocus="this.style.backgroundColor='white';" type="button" class="form-control dropdown-toggle" data-toggle="dropdown"><span class="pull-left">시간 </span><div class="pull-right"><span class="caret"></span></div></button>
							<ul class="dropdown-menu" id="timevalue">
							  <li><a href="#" class="small" data-value="월" tabIndex="-1"><input type="checkbox" value="월"/>&nbsp;월</a></li>
							  <li><a href="#" class="small" data-value="화" tabIndex="-1"><input type="checkbox" value="화"/>&nbsp;화</a></li> 
							  <li><a href="#" class="small" data-value="수" tabIndex="-1"><input type="checkbox" value="수"/>&nbsp;수</a></li> 
							  <li><a href="#" class="small" data-value="목" tabIndex="-1"><input type="checkbox" value="목"/>&nbsp;목</a></li>
							  <li><a href="#" class="small" data-value="금" tabIndex="-1"><input type="checkbox" value="금"/>&nbsp;금</a></li> 
							  <li><a href="#" class="small" data-value="토" tabIndex="-1"><input type="checkbox" value="토"/>&nbsp;토</a></li>
							  <li><a href="#" class="small" data-value="일" tabIndex="-1"><input type="checkbox" value="일"/>&nbsp;일</a></li>
							</ul>
							<input type="hidden" name="time" id="timevalue">      
					  	</div> 
					</div> 
					<div class="form-group col-sm-2 col-xs-6">
						<button type="button" id="filtersubmit" class="btn btn-block btn-primary">Search</button>
					</div>   
			</div>  
		</form> 
					<script type="text/javascript"> 
					$(function() {
						var options = [];
						 
						$( '.dropdown-menu a' ).on( 'click', function( event ) {
						    
						   var $target = $( event.currentTarget ),
						       val = $target.attr( 'data-value' ),
						       $inp = $target.find( 'input' ),
						       idx; 
						
						   if ( ( idx = options.indexOf( val ) ) > -1 ) { 
						      options.splice( idx, 1 );
						      setTimeout( function() { $inp.prop( 'checked', false ) }, 0); 
						   } else {
						      options.push( val ); 
						      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
						   }
						   $( event.target ).blur(); 
						    
						   console.log( options );   
						   return false;  
						});
						   
						$('#filtersubmit').click(function() { 
							var str = "";  
							$("input[type='checkbox']").each(function() {
								if ($(this).is(':checked')) {  
									str += $(this).val() + "_";
								}
							}); 
							if (str.substr(-1,1) == '_') {
								str = str.substring(0,str.length-1);
							}
							
							document.getElementsByName('time')[0].value = str;  
							/* document.getElementById('timevalue').value = str;  */
							alert(document.getElementsByName('time')[0].value);
							filterform.submit();
						});
					});
					</script> 
	<br>
	<div class="studylistviewbody"> 
	  <div class="valign-wrapper">
	  	<div class="row"> 
		  <% int cnt = 0; %> 
	  <c:forEach items="${studylistAll}" var="studylistAll">
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
		  </c:forEach>
		  <% int cnt1 = 0; %> 
	  <c:forEach items="${StudyListFilterdata}" var="StudyListFilterdata">
		    <div class="col s12 m4">
		      <div class="card" id="about">  
		        <div class="card-header">
		          <img class="background" src="https://images.unsplash.com/uploads/14128434147336bfb286b/e76494ac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=0d14ef0b6c5eeee1561a0e340d48ae41">
		          <img class="user" src="http://i66.tinypic.com/ng7ue1.jpg">
		        </div>
		        <h5 class="card-title" style="  overflow: hidden;
												  text-overflow: ellipsis;
												  white-space: nowrap;
												  width: 200px;
												  height: 30px;"> 
		                ${StudyListFilterdata.t_title} 
		        </h5>  
		        <h6 class="description">  
		                ${StudyListFilterdata.t_userId} 
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
			<% cnt1++; %>
		  </c:forEach>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>

</html>