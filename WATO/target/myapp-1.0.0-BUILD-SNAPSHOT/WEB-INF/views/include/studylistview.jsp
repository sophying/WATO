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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
  height: 250px;  
}  
.studylistviewbody #about .card-header img.user {
  width: 100%; 
  max-width:130px; 
  min-height:130px;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
  max-height:130px;
>>>>>>> branch 'master' of https://github.com/sophying/WATO.git
>>>>>>> branch 'master' of https://github.com/sophying/WATO.git
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
<!-- 필터 -->
		<div style="position: absolute; top: 15px; right: 25px;"> 
			<span id="resetform" style="cursor: pointer;" ><i class="glyphicon glyphicon-repeat"></i> 필터 초기화</span>
		</div>
		<form method="post" name="filterform" id="filterform"> 
			<div style="	  
			  display: -webkit-box;
			  display: -ms-flexbox;  
			  display: flex;
			  -ms-flex-wrap: wrap;
			  flex-wrap: wrap;  
			  margin-right: 0px;   
			  margin-left: -11px;"  
			  id="filter"> 
					<div class="form-group col-sm-2 col-xs-6"> 
						<select class="form-control" name="filetertype" id="filetertype"> 
							<option value="">스터디/강사</option> 
							<option value="10">스터디</option>    
							<option value="20">강사</option>    
						</select>  
					</div>
					<div class="form-group col-sm-2 col-xs-6"> 
						<select class="form-control" name="place" id="place"> 
							<option value="">지역</option> 
							<option value="">Show All</option>    
							<option value="서울">서울</option>   
							<option value="인천">인천</option>   
							<option value="세종">세종</option>  
						</select>  
					</div>
					<div class="form-group col-sm-2 col-xs-6">
						<select class="form-control" name="category" id="category">
							<option value="">카테고리</option>
							<option value="">Show All</option>  
							<option value="JAVA">자바</option>  
							<option value="C">C</option>  
							<option value="파이선">파이선</option>  
						</select> 
					</div>
					<div class="form-group col-sm-2 col-xs-6">
						<select class="form-control" name="level" id="level"> 
							<option value="">레벨</option> 
							<option value="">Show All</option> 
							<option value="초급">초급</option> 
							<option value="중급">중급</option> 
							<option value="고급">고급</option>  
						</select>  
					</div>      
					<div class="form-group col-sm-2 col-xs-6">
						<div class="button-group ">  
					        <button onfocus="this.style.backgroundColor='white';" type="button" class="form-control dropdown-toggle" data-toggle="dropdown"><span class="pull-left">시간 </span><div class="pull-right"><span class="caret"></span></div></button>
							<ul class="dropdown-menu" id="timevalue"> 
							  <li><a href="#" class="small" data-value="월" ><input type="checkbox" value="월"/>&nbsp;월</a></li>
							  <li><a href="#" class="small" data-value="화" ><input type="checkbox" value="화"/>&nbsp;화</a></li> 
							  <li><a href="#" class="small" data-value="수" ><input type="checkbox" value="수"/>&nbsp;수</a></li> 
							  <li><a href="#" class="small" data-value="목" ><input type="checkbox" value="목"/>&nbsp;목</a></li>
							  <li><a href="#" class="small" data-value="금" ><input type="checkbox" value="금"/>&nbsp;금</a></li> 
							  <li><a href="#" class="small" data-value="토" ><input type="checkbox" value="토"/>&nbsp;토</a></li>
							  <li><a href="#" class="small" data-value="일" ><input type="checkbox" value="일"/>&nbsp;일</a></li>
							</ul>
							<input type="hidden" name="time" id="timevalue">       
					  	</div> 
					</div> 
					<div class="form-group col-sm-2 col-xs-6">
					<input type="hidden" id="pageLoaded" name="pageLoaded" value="1">
						<button type="button" id="filtersubmit" class="btn btn-block btn-primary">Search</button>
					</div>   
			</div>  
		</form> 
					<script type="text/javascript"> 
						window.onload = function () {
							/* 검색 했을때 필터에 그 값을 다시 입력시켜준다.  */
							$("#filetertype").val("${getFiletertype}");
							$("#level").val("${getRank}");
							$("#place").val("${getPlace}");
							$("#category").val("${getCategory}");
							var time = "${getTime}";
							if(time.indexOf("월") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "월"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("화") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "화"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("수") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "수"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("목") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "목"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("금") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "금"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("토") != -1){
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "토"){
										$(this).attr("checked",true);
									}
								}); 
							}
							if(time.indexOf("일") != -1){ 
								$("input[type='checkbox']").each(function() {
									if($(this).val() == "일"){
										$(this).attr("checked",true); 
									}
								}); 
							}
						}
					
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
							filterform.submit();
						});

						$("#resetform").click(function () {
							filterform.reset();
							$("input[type='checkbox']").each(function() {
								$(this).attr("checked",false);
							}); 
						})
						
						/* $('#filtersubmit').click(function() {
							$.ajax({
								type:"get",
								url:"/board/studylistview",
								data{filetertype : }
							})
						}); */
						 
						
						
						
					});
					</script> 
	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="font-size: 20px; font-weight: bold;">${TearchlistAll.size()+studylistAll.size()+StudyListFilterdata.size()+TeacherListFilter.size()}개의 스터디</font>
	<br><br> 
	<div class="studylistviewbody">  
	  <div class="valign-wrapper">     
	  	<div class="row" style="width: 100%">   
	  		<c:forEach items="${TearchlistAll}" var="TearchlistAll">
		    <div class="col s12 m4">
		      <div class="card" id="about">  
		        <div class="card-header">
		          <img class="background" src="${TearchlistAll.t_photo}">
		          <c:choose>
		          	<c:when test="${TearchlistAll.teach_orgname.equals('http://i66.tinypic.com/ng7ue1.jpg') }">
			          <img class="user" src="${TearchlistAll.teach_orgname}" >
		          	</c:when>
		          	<c:otherwise>
		          	  <img class="user" src="/resource/images/${TearchlistAll.teach_orgname}">
		          	</c:otherwise>
		          </c:choose>
		        </div>  
		        <h6 class="card-title" id="listalltitle" style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%; height: 30px;">
		              <a style="color: black;" href="javascript:parent.location.href='../study/header_DetailRead?t_no=${TearchlistAll.t_no}'"  title="${TearchlistAll.t_title}">${TearchlistAll.t_title}</a>
		        </h6>  
		        <h6 class="description">    
		                ${TearchlistAll.t_userId} <i class="fa fa-id-badge" aria-hidden="true"></i> 
		              </h6>  
		        <div class="social">
		          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2" onclick="togglefunction(this)"><i class="material-icons">add</i></a>
		        </div>
		        <div class='wrap'>
		          <div class='content' style="top: 24%;">
		             <p> 
		            	<input type="hidden" value="${TearchlistAll.t_no}">
		            	<a onclick="heartbuttonfunct(this)" href="/board/heartbuttoninsert/${TearchlistAll.t_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" >
		            		<i class="fa fa-heart-o" aria-hidden="true" style="color: white;">
		            		</i>
		            	</a>
					</p>
		            <p>
		            	<a onclick="likebuttonfunct(this)" href="/board/likebuttoninsert/${TearchlistAll.t_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-thumbs-o-up">
		            		</i>
		            	</a>
		            </p>
		            <p>
		            	<a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-user-o">
		            		</i>
		            	</a>
		            </p>
		          </div> 
		        </div>
		      </div> 
		    </div>
		  </c:forEach>
	  		<c:forEach items="${studylistAll}" var="studylistAll">
		    <div class="col s12 m4"> 
		      <div class="card" id="about"> 
		        <div class="card-header">
		          <img class="background" src="${studylistAll.s_photo}">
		           <c:choose>
		          	<c:when test="${studylistAll.std_orgname.equals('http://i66.tinypic.com/ng7ue1.jpg') }">
			           <img class="user" src="${studylistAll.std_orgname}">
		          	</c:when>
		          	<c:otherwise>
		          	  <img class="user" src="../resource/images/${studylistAll.std_orgname}">
		          	</c:otherwise>
		          </c:choose>
		        </div>
		       <h6 class="card-title" id="listalltitle" style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%; height: 30px;">
		       		<a title="${studylistAll.s_title}" style="color: black;" href="javascript:parent.location.href='../study/study_DetailRead?s_no=${studylistAll.s_no}'" >${studylistAll.s_title}</a>
		        </h6> 
		        <h6 class="description">   
		                ${studylistAll.s_userId}    
		        </h6>
		        <div class="social">
		          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2" onclick="togglefunction(this)"><i class="material-icons">add</i></a>
		        </div>
		        <div class='wrap'>
		          <div class='content' style="top: 24%;">  
		            <p> 
		            	<input type="hidden" value="${studylistAll.s_no}">
		            	<a onclick="heartbuttonfunct(this)" href='/board/heartbuttoninsert/${studylistAll.s_no}' class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" >
		            		<i class="fa fa-heart-o" aria-hidden="true" style="color: white;">
		            		</i>
		            	</a>
					</p>
		            <p>
		            	<a onclick="likebuttonfunct(this)" href="/board/likebuttoninsert/${studylistAll.s_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-thumbs-o-up">
		            		</i>
		            	</a>
		            </p> 
		            <p>
		            	<a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-user-o">
		            		</i>
		            	</a>
		            </p>
		          </div> 
		        </div>
		      </div>  
		    </div>
		  </c:forEach>
		  <c:forEach items="${StudyListFilterdata}" var="StudyListFilterdata">
		    <div class="col s12 m4"> 
		      <div class="card" id="about">  
		        <div class="card-header">
		          <img class="background" src="${StudyListFilterdata.s_photo}">
		          <c:choose>
		          	<c:when test="${StudyListFilterdata.std_orgname.equals('http://i66.tinypic.com/ng7ue1.jpg') }">
			           <img class="user" src="${StudyListFilterdata.std_orgname}">
		          	</c:when>
		          	<c:otherwise>
		          	  <img class="user" src="/resource/images/${StudyListFilterdata.std_orgname}">
		          	</c:otherwise>
		          </c:choose>
		        </div>
		       <h6 class="card-title" id="listalltitle" style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%; height: 30px;">
		        			<a title="${StudyListFilterdata.s_title}" style="color: black;" href="javascript:parent.location.href='../study/study_DetailRead?s_no=${StudyListFilterdata.s_no}'" >${StudyListFilterdata.s_title}</a>
		        </h6>  
		        <h6 class="description">  
		                ${StudyListFilterdata.s_userId} 
		              </h6>
		        <div class="social">
		          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2" onclick="togglefunction(this)"><i class="material-icons">add</i></a>
		        </div>
		        <div class='wrap'>  
		          <div class='content' style="top: 24%;">
		           	<p> 
		            	<input type="hidden" value="${StudyListFilterdata.s_no}">
		            	<a onclick="heartbuttonfunct(this)" href='/board/heartbuttoninsert/${StudyListFilterdata.s_no}' class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" >
		            		<i class="fa fa-heart-o" aria-hidden="true" style="color: white;">
		            		</i>
		            	</a>
					</p>
		            <p>
		            	<a onclick="likebuttonfunct(this)" href="/board/likebuttoninsert/${StudyListFilterdata.s_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-thumbs-o-up">
		            		</i>
		            	</a>
		            </p> 
		            <p>
		            	<a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-user-o">
		            		</i>
		            	</a>
		            </p>
		          </div> 
		        </div>
		      </div> 
		    </div>
		  </c:forEach>
		  <c:forEach items="${TeacherListFilter}" var="TeacherListFilter">
			 <div class="col s12 m4"> 
		      <div class="card" id="about">  
		        <div class="card-header">
		          <img class="background" src="${TeacherListFilter.t_photo}">
		           <c:choose>
		          	<c:when test="${TeacherListFilter.teach_orgname.equals('http://i66.tinypic.com/ng7ue1.jpg') }">
			          <img class="user" src="${TeacherListFilter.teach_orgname}" >
		          	</c:when>
		          	<c:otherwise>
		          	  <img class="user" src="/resource/images/${TeacherListFilter.teach_orgname}" >
		          	</c:otherwise>
		          </c:choose>
		        </div> 
		        <h6 class="card-title" id="listalltitle" style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%; height: 30px;">
		        			<a style="color: black;" href="javascript:parent.location.href='../study/header_DetailRead?t_no=${TeacherListFilter.t_no}'" title="${TeacherListFilter.t_title}">${TeacherListFilter.t_title}</a>
		        </h6>  
		        <h6 class="description">  
		                ${TeacherListFilter.t_userId}<i class="fa fa-id-badge" aria-hidden="true"></i>
		              </h6> 
		        <div class="social">
		          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2" onclick="togglefunction(this)"><i class="material-icons">add</i></a>
		        </div>
		        <div class='wrap'>   
		          <div class='content' style="top: 24%;"> 
		           <p> 
		            	<input type="hidden" value="${TeacherListFilter.t_no}">
		            	<a onclick="heartbuttonfunct(this)" href="/board/heartbuttoninsert/${TeacherListFilter.t_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links" >
		            		<i class="fa fa-heart-o" aria-hidden="true" style="color: white;">
		            		</i>
		            	</a>
					</p>
		            <p>
		            	<a onclick="likebuttonfunct(this)" href="/board/likebuttoninsert/${TeacherListFilter.t_no}" class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-thumbs-o-up"> 
		            		</i>
		            	</a>
		            </p>
		            <p>
		            	<a class="btn-floating btn-sm waves-effect waves-light teal z-depth-2 social-links">
		            		<i class="fa fa-user-o">
		            		</i>
		            	</a>
		            </p>
		          </div> 
		        </div>
		      </div> 
		    </div> 
		  </c:forEach>  
		  <c:if test="${TeacherListFilter.size()+StudyListFilterdata.size()+TearchlistAll.size()+studylistAll.size() == 0}"> 
		  	<h3>해당 조건에 대한 검색결과가 없습니다.</h3>
		  </c:if>  
		  <br> <br> <br> <br> <br> <br> <br> <br> <br>   
		  </div>   
		</div>
	</div>  
  
<script type="text/javascript">
	function heartbuttonfunct(event) {
		var loginplase = "${loginplase}"; 
		if (loginplase != null && loginplase != "") { 
			alert(loginplase);
			return false; 
		}
	}
	
	function likebuttonfunct(event) {
		var loginplase = "${loginplase}"; 
		if (loginplase != null && loginplase != "") { 
			alert(loginplase);
			return false;  
		}
	}
	
	


//__________________________________
	function togglefunction (event) {  
		$(event).toggleClass('active');  
		$(event).parent().next().toggleClass('active');
		 var heartbutton = "${heartbutton}";
		 var likebutton = "${likebutton}";
		 var s_no = $(event).parent().next().children().children().children().val();
	  
		 if (heartbutton != null && heartbutton !="" && heartbutton.length != 0) { 
				if(heartbutton.indexOf(s_no) != -1){
					$(event).parent().next().children().children().children().next().children().attr("class","fa fa-heart");
					$(event).parent().next().children().children().children().next().attr("href", "/board/heartbuttondelete/"+s_no+"?myinfo=false");
	    		}
		}
		 if (likebutton != null && likebutton !="" && likebutton.length != 0) {
				if(likebutton.indexOf(s_no) != -1){
					  $(event).parent().next().children().children().next().children().children('.fa-thumbs-o-up').attr("class","fa fa-thumbs-up");
				      $(event).parent().next().children().children().next().children().attr("href", "/board/likebuttondelete/"+s_no+"?myinfo=false");
	    		}
		 }
		
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