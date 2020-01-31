<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="../../resource/css/style.default.css" id="theme-stylesheet">
<link rel="icon" type="image/png" href="../../resource/images/icons/favicon.ico"/>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
 #top{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
        background-color: #e0e0e0;
    }
    #studyusnav{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #search{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #new{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #content{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #footer {
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #navigation > ul > li > ul {
        width: 100.3%;
    }
    #hot{
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .cate_list{
        padding-bottom: 10px;
    }
    .cate_list a {
        float: left;
        display: block;
        width: 33%;
        text-align: center;
        padding: 5px 0;
        color: #27323c;
    }
    .cate_list a > * {
        display: inline-block;
        font-size: 13px;
    }
    .cate_list > a > span > img {
        max-width: 100%;
        vertical-align: middle;
        border: 0;
    }
    #icon{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    #all{
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .carousel-item {
        height: 50vh;
        min-height: 350px;
        background: no-repeat center center scroll;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    #blog-homepage{
        position: static; 
        margin-left: auto; 
        margin-right: auto;
        width: 53.8%;
    }
    .imgrank img{
	    position:absolute;
	    background:none;
	 	width:100%;
	 	height: auto;
	 	max-width: 40px; 
	 	z-index: 10;
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
	  background: none; 
	}
	.limiter {
	  width: 100%;
	  margin: 0 auto;
	}
	.close-button {
    transition: all 0.5s ease;
    position: absolute;
    background-color: #4FBFA8;
    padding: 1.5px 7px; 
    right: 0;
    margin-left: -10px;
    margin-top: -9px;
    border-radius: 50%;
    border: 2px solid #fff;
    color: white;
    -webkit-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    -moz-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    box-shadow: -3px 1px 6px 0px rgba(0,0,0,0.1);
	} 
	
	.close-button:hover {
	    background-color: tomato;
	    color: #fff;
	} 

/*  혜련  */
h2 {
  text-align: center;
}

table caption {
    padding: .5em 0;
}

@media screen and (max-width: 767px) {
  table caption {
    border-bottom: 1px solid #ddd; 
  }
}

.p {
  text-align: center;
  padding-top: 140px;
  font-size: 14px;
}
     #star_grade span{
        text-decoration: none;
        color: gray;
    }
    #star_grade span.on{
        color: #feba63;
    }
	#star_grade span:hover {
	cursor:pointer
}
</style>

</head>
<body>
<!-- @@@@@@@@ 헤더 시작 @@@@@@@@ -->
<!-- navbar-->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
 <div id="top">
        <div class="container"> 
            <div class="row">
                <!-- <div class="col-lg-6 offer d-flex d-block"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div> --> 
                <div class="row mx-auto w-100 text-right "> 
                    <ul class="menu list-inline mb-0 w-100  ">
                    	<c:choose>
	                    <c:when test="${std == null && teach == null}">
                    		<li class=" pl-2 list-inline-item pull-left"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a></li> 
	                    </c:when>
	                    <c:otherwise>
	                    <c:if test="${std != null }">
                   	 		<li class=" pl-2 list-inline-item pull-left"><a href="/study/user_myList" class="btn btn-success btn-sm">참여한 스터디 보러가기</a></li> 
	                    </c:if>
	                    <c:if test="${teach != null }">
                   	 		<li class=" pl-2 list-inline-item pull-left"><a href="/study/user_myList" class="btn btn-success btn-sm">참여한 스터디 보러가기</a></li> 
	                    </c:if>
	                    </c:otherwise>
	                    </c:choose>
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item">
                        	<a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a>
                        </li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<p class="list-inline-item">${std.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="student/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm" method="get" action="/student/std_info">
				                <input type="hidden" value="${std.std_Profile}" readonly="readonly">
				                <input type="hidden" value="${std.std_Gender}" readonly="readonly">
				                <input type="hidden" value="${std.user_Email}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone1}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone2}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone3}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr1}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr2}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr3}" readonly="readonly">
                        	<a href="javascript:document.myForm.submit();" class="text-black-50 font-weight-bold">내정보수정</a>
                        	</form>
                        	</li>
                        </c:if>
                        <c:if test="${teach != null}">
                        	<p class="list-inline-item">${teach.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="teach/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm2" method="get" action="/teach/teach_info">
				                <input type="hidden" value="${teach.teach_Profile}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Gender}" readonly="readonly">
				                <input type="hidden" value="${teach.user_Email}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone3}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr3}" readonly="readonly">
                        	<a href="javascript:document.myForm2.submit();" class="text-black-50 font-weight-bold">내정보수정</a>
                        	</form>
                        	</li>
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="register.jsp" class="text-black-50 font-weight-bold">회원가입</a></li> -->
                        <c:if test="${!std.user_Id.substring(0,5).equals('admin')}">
                        <li class="list-inline-item"><a href="contact.jsp" class="text-black-50 font-weight-bold">문의하기</a></li>
                        </c:if>
                        <c:if test="${std.user_Id.substring(0,5).equals('admin')}">
                        <li class="list-inline-item"><a href="/admin/app_before" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="/admin/terms2" class="text-black-50 font-weight-bold">이용약관</a></li> -->                       
                    </ul>
                </div>
            </div>
        </div> 
        <div class="row">
	        <div id="myModal" class="modal fade" tabindex="-1"> <!-- tabindex -1 는 클로즈 키 -->
	        	<div class="modal-dialog modal-lg">
	            	<div class="modal-content" style="background: none; border: 0px">
	            		<div class="modal-body"> 
							<div class="limiter">
								<!-- <button class="close-button" data-dismiss="myModal">&times;</button>  -->
								<div class="container-login100">   
									<%@ include  file="../admin/loginform.jsp"%> 
								</div>
							</div>  
						</div> 	                		
	            	</div>
	        	</div>
	    	</div>
    	</div>

 
    </div> 
    <nav id="studyusnav" class="navbar navbar-expand-lg">  
        <div class="container"><a href="/" class="navbar-brand home"><img src="../../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="./resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.jsp" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
            </div>  
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">스터디등록<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row"> 
                                    <div class="col-md-6 col-lg-3">
                                        <h5>스터디 등록</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="/study/studentEnroll" class="nav-link">일반스터디등록</a></li>
                                            <li class="nav-item"><a href="/study/teacherEnroll" class="nav-link">강의등록</a></li>
                                            <li class="nav-item"><a href="/study/studyBoard" class="nav-link">스터디탐방</a></li>
                                            <li class="nav-item"><a href="/study/classBoard" class="nav-link">강의탐방</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>IT공부</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">프로그래밍 언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">서버, 시스템</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">네트워크</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">데이터베이스</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">화이트 해커 / 해킹</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자격증</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>IT정보</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">IT뉴스</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">IT취업</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">각종후기</a></li>
                                        </ul>
                                        <h5>개인강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">A의 강의</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">B의 강의</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C의 강의</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">그룹장<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row">

                                    <div class="col-md-6 col-lg-3">
                                        <h5>친목도모</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">스터디</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">과외</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">Q&A</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>동영상 강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">비주얼베이직</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자바</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">기타</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>IT공부</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">프로그래밍 언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">서버, 시스템</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">네트워크</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">데이터베이스</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">화이트 해커 / 해킹</a></li>
                            <li class="nav-item"><a href="category.jsp" class="nav-link">자격증</a></li>
                        </ul>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="banner"><a href="#"><img src="../../resource/images/banner.jpg" alt="" class="img img-fluid"></a></div>
                <div class="banner"><a href="#"><img src="../../resource/images/banner2.jpg" alt="" class="img img-fluid"></a></div>
            </div>
        </div>
                            </li>
                        </ul>  
                    </li> 
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">더보기<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row">
                                    <div class="col-md-6 col-lg-3">
                                        <h5>공지사항</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="index.jsp" class="nav-link">학생</a></li> 
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">그룹장</a></li>
                                            <li class="nav-item"><a href="category-right.jsp" class="nav-link">업체</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>회원</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="register.jsp" class="nav-link">로그인 / 가입하기</a></li>
                                            <li class="nav-item"><a href="customer-orders.jsp" class="nav-link">주문 내역</a></li>
                                            <li class="nav-item"><a href="customer-order.jsp" class="nav-link">주문 내역 더보기</a></li>
                                            <li class="nav-item"><a href="customer-wishlist.jsp" class="nav-link">장바구니</a></li>
                                            <li class="nav-item"><a href="customer-account.jsp" class="nav-link">회원정보 수정</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>등록</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="basket.jsp" class="nav-link">그룹장 등록</a></li>
                                            <li class="nav-item"><a href="checkout1.jsp" class="nav-link">업체 등록</a></li>
                                            <li class="nav-item"><a href="checkout2.jsp" class="nav-link">광고 문의</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>관련 사이트</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="blog.jsp" class="nav-link">블로그 리스트</a></li>
                                            <li class="nav-item"><a href="post.jsp" class="nav-link">블로그 포스트</a></li>
                                            <li class="nav-item"><a href="faq.jsp" class="nav-link">FAQ</a></li>
                                            <li class="nav-item"><a href="text.html" class="nav-link">글페이지</a></li>
                                            <li class="nav-item"><a href="text-right.jsp" class="nav-link">글 오른쪽</a></li>
                                            <li class="nav-item"><a href="404.jsp" class="nav-link">404페이지</a></li>
                                            <li class="nav-item"><a href="contact.jsp" class="nav-link">연락하기</a></li>
                                        </ul> 
                                    </div>    
                                </div>  
                            </li>
                        </ul>   
                    </li>
                    <li class="nav-item menu-large"><a href="/board/studylist"  class="nav-link" >스터디찾기<b class="caret"></b></a> 
                </ul>    
            </div>
        </div>
    </nav>
</header>

<nav id="studyusnav" class="navbar ">  
<div class="  mt-4 container w-100 mx-auto d-flex justify-content-center" >
  <div class="row ">
    <div class="col-xs-12 ">
      <div class=" mb-5 table-responsive">
<!-- ######  ++++++++++++++++ 학생 유저일 경우 ++++++++++++++++++++++++++++++++ -->      
      <c:if test="${std != null }">
	      <h4 class="font-weight-bold">내가 참여한 스터디</h4>
	        <table class="table table-bordered table-hover">
	          <thead class="text-center " style="width: 100px;">
	            <tr>
	              <th>번호</th>
	              <th>레벨</th>
	              <th>카테고리</th>
	              <th>주제</th>
	              <th>시작날짜</th>
	              <th>끝날짜</th>
	              <th>리더</th>
	              <th colspan="2">별점주기</th>
	            </tr>
	          </thead>
			  	<c:if test="${studyParti != null }">
		           <c:forEach var="studyParti" items="${studyParti}">
		          
			          <tbody>
			            <tr>
			              <td class="text-center">${studyParti.s_no }</td>
			              <td>${studyParti.s_level }</td>
			              <td class="text-center">${studyParti.s_category }</td>
			              <td>${studyParti.s_title }</td>
			              <td>${studyParti.s_startDate }</td>
			              <td>${studyParti.s_endDate }</td>
			              <td>${studyParti.s_userId}</td>
			              <td>
			   <!--  form  -->           
				              <form name="starForm"method="post" action="">
				              	<c:choose>
			              			<c:when test="${studyParti.starscore_parti == 1  }">
						              	<div>
										</div>
									</c:when>
									<c:when test="${studyParti.starscore_parti == 0}">
						              	<div class="text-center"id="star_grade" >
										        <span>★</span> 
										        <span>★</span>
										        <span>★</span>   
										        <span>★</span>
										        <span>★</span>   
										</div>
									</c:when>
								</c:choose>		
		<!-- 스터디 게시글 번호 를 전달하여  별점 & 참여자 카운트   업데이트   -->	              		
				              	<input type="hidden" name="starScore" id="starScore" >
								<input type="hidden" name="s_no" value="${studyParti.s_no }" />
								
		<!-- 유저에 따른 p_userid 값 전달 어떤 유저가 별점 평가를 하였는지 판단  -->
								 
								<c:if test="${std != null }">
										<input type="hidden" name="p_userid" value="${std.user_Id}" />
								</c:if>
								
		<!-- 현재 로그인 유저가 별점평가에 참여하였는지 판단  -->	              		
			              		<c:choose>
			              			<c:when test="${studyParti.starscore_parti == 1 }">   
			              				<input type="button" id="starBtn" value="별점전달완료!"/>
							 		</c:when>
							 		<c:otherwise>
			              				<input type="button" id="starBtn" onclick="starBtn11(this)" value="별점전달하기!"/>
							 		</c:otherwise>
							 	</c:choose>
							 </form>
			 <!-- // form  --> 				 	
			              </td>
			            </tr>
			          </tbody>
			      
		          </c:forEach>
		        </c:if>
	          <tfoot>
	            <tr>
	              <td colspan="9" class="text-center h2">스터디는 만족스러우셨나요?</td>
	            </tr>
	          </tfoot>
	        </table>
	        
	        
	        <h4 class="font-weight-bold">내가 참여한 강의</h4>
	        <table class="table table-bordered table-hover">
	          <thead class="text-center " style="width: 100px;">
	            <tr>
	              <th>번호</th>
	              <th>레벨</th>
	              <th>카테고리</th>
	              <th>주제</th>
	              <th>시작날짜</th>
	              <th>끝날짜</th>
	              <th>리더</th>
	              <th colspan="2">별점주기</th>
	            </tr>
	          </thead>
		        <c:if test="${classParti != null }">
		        	<c:forEach var="classParti" items="${classParti}">
			          <tbody>
			            <tr>
			              <td class="text-center">${classParti.t_no }</td>
			              <td>${classParti.t_level }</td>
			              <td class="text-center">${classParti.t_category }</td>
			              <td>${classParti.t_title }</td>
			              <td>${classParti.t_startDate }</td>
			              <td>${classParti.t_endDate }</td>
			              <td>${classParti.t_userId}</td>
			              <td>
			   <!--  form  -->           
				              <form name="class_starForm"method="post" action="./t_user_myList">
				              	<c:choose>
			              			<c:when test="${classParti.starscore_parti == 1  }">
						              	<div>
										</div>
									</c:when>
									<c:when test="${classParti.starscore_parti == 0}">
						              	<div class="text-center"id="star_grade" >
										        <span>★</span> 
										        <span>★</span>
										        <span>★</span>   
										        <span>★</span>
										        <span>★</span>   
										</div>
									</c:when>
								</c:choose>		
		<!-- 스터디 게시글 번호 를 전달하여  별점 & 참여자 카운트   업데이트   -->	              		
				              	<input type="hidden" name="starScore" id="starScore" >
								<input type="hidden" name="t_no" value="${classParti.t_no }" />
								
		<!-- 유저에 따른 p_userid 값 전달 어떤 유저가 별점 평가를 하였는지 판단  -->
								 
								<c:if test="${std != null }">
										<input type="hidden" name="p_userid" value="${std.user_Id}" />
								</c:if>
								
		<!-- 현재 로그인 유저가 별점평가에 참여하였는지 판단  -->	              		
			              		<c:choose>
			              			<c:when test="${classParti.starscore_parti == 1 }">   
			              				<input type="button" id="starBtn" value="별점전달완료!"/>
							 		</c:when>
							 		<c:otherwise>
			              				<input type="button" id="starBtn2" onclick="starBtn22(this)" value="별점전달하기!"/>
							 		</c:otherwise>
							 	</c:choose>
							 </form>
			 <!-- // form  --> 				 	
			              </td>
			            </tr>
			          </tbody>
		        	</c:forEach>
		        </c:if>
	          <tfoot>
	            <tr>
	              <td colspan="9" class="text-center h2">강의는 만족스러우셨나요?</td>
	            </tr>
	          </tfoot>
	        </table>
        </c:if>
 <!-- ####### ++++++++++++++++++++++++++++ 강사 유저일 경우  ++++++++++++++++++++++++++++ -->       
        
        <c:if test="${teach != null }">
        <h4 class="font-weight-bold">강좌 목록</h4>
        <table class="table table-bordered table-hover">
          <thead class="text-center " style="width: 100px;">
            <tr>
              <th>번호</th>
              <th>레벨</th>
              <th>카테고리</th>
              <th>주제</th>
              <th>시작날짜</th>
              <th>끝날짜</th>
              <th>강사</th>
              <th colspan="2">참여확인</th>
            </tr>
          </thead>
	        <c:if test="${classParti != null }">
	        	<c:forEach var="classParti" items="${classParti}">
		          <tbody>
		            <tr>
		              <td class="text-center">${classParti.t_no }</td>
		              <td>${classParti.t_level }</td>
		              <td class="text-center">${classParti.t_category }</td>
		              <td>${classParti.t_title }</td>
		              <td>${classParti.t_startDate }</td>
		              <td>${classParti.t_endDate }</td>
		              <td>${classParti.t_userId}</td>
		              <td>
		              <!--  form  -->           
				        <form name="attendee_Form"method="post" action="./attendee_List">
		              		<input type="hidden" name="t_no" value="${classParti.t_no }">
		              		<input type="button" id="starBtn2" onclick="partiCheck22(this)" value="참여확인"/>
		              	</form>
		              </td>
		            </tr>
		            <c:choose>
		            	<c:when test="${attendee != null }">
				            <tr>
				            	<td>
				            		<table>
				            			<thead>
					            			<tr>
					            				<th>참여자 아이디</th>
					            				<th>전화번호</th>
					            				<th>한 줄 소개</th>
					            			</tr>
				            			</thead>
				            <c:forEach var="attendee" items="${attendee}">
					            		<tbody>
					            			<tr>
					            				<td>${attendee.p_userid }</td>
					            				<td>${attendee.p_tell }</td>
					            				<td>${attendee.p_intro }</td>
					            			</tr>
					            		</tbody>		
				            </c:forEach>
				            		</table>
				            	</td>
				            </tr>
			            </c:when>
			            <c:otherwise>
			            </c:otherwise>
		            </c:choose>
		          </tbody>
	        	</c:forEach>
	        </c:if>
        <tfoot>
            <tr>
              <td colspan="9" class="text-center h2">멋진 강의를 선물해주세요!</td>
            </tr>
          </tfoot>
        </table>	
        </c:if>
      </div>
      <!--end of .table-responsive-->
    </div>
  </div>
</div>
</nav>

<div id="blog-homepage" class="box row mb-0">
    <div class="container">
        <div class="post">
            <h4><a href="post.jsp">"취업에 도움될까" 대학생 10명 중 7명은 '아웃캠퍼스족' (예시)</a></h4>
            <p class="author-category"><a href="">파이낸셜뉴스 / 2017.06.02 / 네이버뉴스</a></p>
            <hr>
            <p class="intro">
                많은 대학생들이 학기 중에도 학교 밖에서의 활동을 하는 것으로 나타난 가운데 아웃캠퍼스 활동자의 69.1%가 이로 인해 ‘학교 생활에 지장을 겪었다’고 답해 눈길을 끌었다.
                대학생들이 느낀 지장을 살펴보면 ‘너무 많은 시간을 빼앗기거나 강의시간, 조모임이 겹치는 등의 시간 부족’을 꼽는 응답이 70.7%로 1위를 차지했다.
                2위는 ‘체력소모에 따른 피로 누적(61.7%)’이, 3위는 ‘학업에만 온전히 집중할 수 없는 점(52.2%)’이 각각 차지했다.
            </p>
            <p class="read-more"><a href="post.jsp" class="btn btn-primary">Continue reading</a></p>
        </div>
    </div>
    <!-- /#blog-homepage-->
</div>

<div class="box text-center mb-3" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">페이지 정보</h4>
                <ul class="list-unstyled">
                    <li><a href="text.html">회사소개</a></li>
                    <li><a href="text.html">이용약관</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a href="contact.jsp">문의하기</a></li>
                </ul>
                <hr>
                <h4 class="mb-3">회원</h4>
                <ul class="list-unstyled">
                    <li><a href="#" data-toggle="modal" data-target="#modal">로그인</a></li>
                    <li><a href="register.jsp">회원가입</a></li>
                </ul>
            </div>
            <!-- /.col-lg-3-->
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">상위 카테고리</h4>
                <h5>학생</h5>
                <ul class="list-unstyled">
                    <li><a href="category.jsp">스터디</a></li>
                    <li><a href="category.jsp">과외</a></li>
                    <li><a href="category.jsp">C언어</a></li>
                </ul>
                <h5>그룹장</h5>
                <ul class="list-unstyled">
                    <li><a href="category.jsp">스터디</a></li>
                    <li><a href="category.jsp">그룹장 등록</a></li>
                    <li><a href="category.jsp">광고 문의</a></li>
                </ul>
            </div>
            <!-- /.col-lg-3-->  
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">찾아오는길</h4>
                <p><strong>강동센터</strong><br><a class="text-muted">서울특별시</a><br><a class="text-muted">강동구</a><br><a class="text-muted">천호대로 1095</a>
                    <br><a class="text-muted">2층</a><br><strong>미래능력개발교육원</strong></p><a href="contact.jsp">Go to contact page</a>
                <hr class="d-block d-md-none">
            </div> 
            <!-- /.col-lg-3-->
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">새로운 소식</h4>
                <p class="text-muted">대학생들의 핫플레이스 '미래 스터디카페 강동역점'오픈 !</p>
                <form>
                    <div class="input-group">
                        <input type="text" class="form-control"><span class="input-group-append">
                  <button type="button" class="btn btn-outline-secondary">구독하기</button></span>
                    </div>
                    <!-- /input-group--> 
                </form>
                <hr> 
                <h4 class="mb-3">더보기 사이트</h4>
                <p class="social"><a href="#" class="facebook external"><i class="fa fa-facebook"></i></a><a href="#" class="twitter external"><i class="fa fa-twitter"></i></a><a href="#" class="instagram external"><i class="fa fa-instagram"></i></a><a href="#" class="gplus external"><i class="fa fa-google-plus"></i></a><a href="#" class="email external"><i class="fa fa-envelope"></i></a></p>
            </div>
            <!-- /.col-lg-3-->
        </div> 
        <!-- /.row-->  
    </div>
    <!-- /.container-->  
</div>
<!-- /#footer-->
<!-- *** FOOTER END ***-->
<script src="../resource/js/hr/user_myList.js"></script> 
</body>
</html>