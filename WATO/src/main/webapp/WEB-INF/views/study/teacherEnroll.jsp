<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>스터디어스 - 세상을 뒤흔들어라</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../../resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../../resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../../resource/vendor/owl.carousel/assets/owl.carousel.css"> 
    <link rel="stylesheet" href="../../resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../../resource/css/style.default.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes--> 
    <link rel="stylesheet" href="../../resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]--> 
    <link rel="icon" type="image/png" href="../../resource/images/icons/favicon.ico"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>  
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style media="screen">
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
	body{
	 background-color: #e0e0e033;
	 }
.btn-circle.btn-xl {
  width: 60px;
  height: 60px;
  padding: 5px 5px 5px 5px;
  border-radius: 35px;
  font-size: 24px;
  line-height: 1.33;
}

.btn-circle {
  width: 30px;
  height: 30px;
  padding: 0px 0px;
  border-radius: 15px;
  text-align: center;
  font-size: 12px;
  line-height: 1.42857;
}
#input_img{
  width:200px;;
  height: 200px;

}
#img_btn_0:hover{

}
#text{
 display: none;
}


/* .content{
    outline: 2px dashed #92b0b3 ;
    outline-offset:-10px;  
    text-align: center;
    transition: all .15s ease-in-out;
    width: 300px;
    height: 300px;
    background-color: gray;
} */
</style>
</head> 
<body>
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top">
        <div class="container"> 
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div>
                <div class="col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0">
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<p class="list-inline-item">${std.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="../student/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
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
                        	<li class="list-inline-item"><a href="../teach/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
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
                        <li class="list-inline-item"><a href="../admin/app_before" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
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
        <div class="container"><a href="/" class="navbar-brand home"><img src="../../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="../../resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
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
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">Q&amp;A</a></li>
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
                <form role="search" class="ml-auto" method="post" action="/board/searchResult">
                    <div class="input-group">     
                        <input type="text" placeholder="Search" class="form-control" name="searchKey" id="searchKey"> 
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary"></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</header>
<nav id="studyusnav" class="navbar navbar-expand-lg">  
<form  name="classForm"class="form-horizontal" role="form" method="post" action="/study/teacherEnroll">
<!-- <1> image Enroll -->
  <div class="row  justify-content-md-center"  style="background:#fff;" >
    <div class="col-sm-5 d-inline-block"> <!-- 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
        <div class="form-group container-fluid">
          <div class="card">
            <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="5">사진등록</font></label>
            <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
              <div class="card-body">
                <div class="input-group d-flex justify-content-center">
<!-- photo -->     <img id="input_img" src="../../resource/images/imgs/studyUs.png" alt="이미지">
                </div>
              </div>
            </div>
            
<!-- button Enroll -->
            <!-- <div class="cols-sm-5">
            <div class="form-group"> -->
            <div class="cols-sm-5 pb-5 pr-2 pl-2">
              <div class="input-group d-flex justify-content-center ">
                <img id="img_btn_0" src="../../resource/images/imgs/studyUs.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
                <img id="img_btn_1" src="../../resource/images/imgs/java.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_2" src="../../resource/images/imgs/javascript.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_3" src="../../resource/images/imgs/cpplus.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_4" src="../../resource/images/imgs/php.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_5" src="../../resource/images/imgs/Android.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
              </div>
            </div>
            <!-- </div>
          </div> -->
          </div>
        </div>
<!-- // button Enroll -->
<!-- 스터디 기간 설정  -->


<div class="form-group container-fluid d-inline-block">
    <div class="card">
    <label for="name" class="pb-1 row m-0 card-header cols-sm-3 control-label d-flex justify-content-center"><font size="5">강의 기간</font></label>
    <div class="card-body">
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"></span>
	          <label for="start" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">시작</label>&nbsp;&nbsp;
	          <input type="date" name="t_startDate" class="form-control col-sm-8" id="start" value="" />
	    </div>
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"></span>
	          <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">&nbsp;&nbsp;&nbsp;끝&nbsp;</label>&nbsp;&nbsp;
	          <input type="date" name="t_endDate"  class="form-control col-sm-8 " id="end" value="" />
	    </div>
    <div class="form-group">
           <div class="cols-sm-10">
              <div class="input-group d-flex justify-content-center ">
                 <span class="input-group-addon"></span>
                	<!-- 월요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                      <input type="checkbox" class="form-check-input" id="mon" value="월">
                      <label class="form-check-label" for="mon">월</label>
                    </div>

                    <!-- 화요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="tue" value="화" >
                        <label class="form-check-label" for="tue">화</label>
                    </div>

                    <!-- 수요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="wed" value="수">
                        <label class="form-check-label" for="wed">수</label>
                    </div>
                    
                    <!-- 목요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="thu" value="목">
                        <label class="form-check-label" for="thu">목</label>
                    </div>
                    
                    <!-- 금요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="fri" value="금">
                        <label class="form-check-label" for="fri">금</label>
                    </div>
                    
                    <!--  토요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sat" value="토">
                        <label class="form-check-label" for="sat">토</label>
                    </div>
                    
                    <!-- 일요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sun" value="일">
                        <label class="form-check-label" for="sun">일</label>
                    </div>
                  </div>
             
                  <label id="nullText" class="cols-sm-2 pt-2 control-label d-flex justify-content-center font-weight-bold"></label>
                  <!-- <div id="nullText" class=" d-flex pt-2 d-flex justify-content-center"></div> -->
                  
                  
              </div>
           </div>
        </div>
      </div>
    </div>
        <div class="form-group container-fluid">
      <div class="card">
        <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="5">자격증 정보</font></label>
          <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
           <div class="card-body">
             <div class="input-group d-flex justify-content-center">
				<span class="input-group-addon"></span>
	          	<label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">자격증 </label>&nbsp;&nbsp;
					<select name="t_license" class="selectpicker form-control">
					  <option value="ocjp" selected="selected">OCJP</option>
					  <option value="리눅스마스터">리눅스마스터</option>
					  <option value="네트워크관리사">네트워크 관리사</option>
					  <option value="정보보안기사">정보 보안 기사</option>
					  <option value="정보보안산업기사">정보 보안 산업기사</option>
					  <option value="정보처리기사">정보처리기사</option>
					  <option value="정보처리산업기사">정보처리 산업기사</option>
					</select>
             </div> 
           </div>
         </div>
      </div>
  	</div>
  </div>       
<!-- // 스터디 기간 설정  -->
<!-- // 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->


<!-- <2> Study Info Enroll -->
    <div class="col-md-7 d-inline-block">
      <div class="card">
        <div class="pb-1 row m-0 card-header font-weight-bold d-flex justify-content-center"><h4>강의 등록</h4></div>
          <div class="card-body">
                    <div class="form-group">
                        <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
                          		<label for="level" class="pt-1 mt-1 control-label font-weight-bold w-25">난이도</label>
	                                 <span class="input-group-addon"></span>
	 <!-- t_level -->               	<select name="t_level" class="selectpicker form-control w-50" >
										  <option value="입문"selected="selected">입문</option>
										  <option value="초급">초급</option>
										  <option value="중급">중급</option>
										  <option value="고급">고급</option>
										</select>
										
                          		<label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-25">인원수</label>
	                                 <span class="input-group-addon"></span>
<!-- t_people --> 	       			<input type="text" class="form-control"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"name="t_people" id="t_people" placeholder="숫자를 사용해주세요!" />
	               	
                      	 </div>
                      </div>
                      <div class="form-group">
                          <label for="t_category" class="cols-sm-2 control-label font-weight-bold">카테고리</label>
                          <label id="t_category" class="cols-sm-2 control-label font-weight-bold"></label>
                          <div class="cols-sm-10">
                            <div class="input-group">
	                           <span class="input-group-addon"></span>
 <!-- category 주제 -->	       <input type="text" class="form-control" name="t_category" id="category" placeholder="과목 카테고리를 알려주세요!" />
                        </div>
                      </div>
                      </div>
 
                      <div class="form-group">
                          <label for="t_title" class="cols-sm-2 control-label font-weight-bold">강의 주제</label>
                          <label id="t_title" class="cols-sm-2 control-label font-weight-bold"></label>
                          
                             <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"></span>
 <!-- title 주제 -->               <input type="text" class="form-control" name="t_title" id="stitle" placeholder="그룹의 스터디 주제를 알려주세요!" />
                                </div>
                             </div>
                      </div>


                   <!-- 우편번호 찾기 API -->
                   <div class="form-group">
                       <label for="sPlace" class="cols-sm-2 control-label font-weight-bold">강의 장소
                       		&nbsp;&nbsp;&nbsp;&nbsp;<small>강의장소는 확실하게 정해주신 뒤 등록 바랍니다.</small>
                       </label>
                       <div class="d-inline row  mx-mb-n1 mr-2 pull-right">
                                <input type="button" class="btn btn-primary box " id="execDaumPostcode" value="우편번호 찾기">
                         </div>
                          <div class="cols-sm-10">
                            <div class="input-group mt-1 mb-1">
                            <span class="input-group-addon"></span>
<!-- post 우편번호 -->            <input type="text" class="form-control" id="postcode" name="t_postnum" placeholder="우편번호" required>
                            </div>
                          </div>
                          <div class="cols-sm-10 mb-1 ">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
                                <input type="text"  class="form-control" id="roadAddress" placeholder="도로명주소" required>
                            </div>
                          </div>
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
                                <input type="text" class="form-control" id="jibunAddress" placeholder="지번주소" required>
                           </div>
                          </div>
                    </div>
                    <!-- 우편번호 찾기 API -->
                    <div class="form-group">
                        <label for="info" class="cols-sm-2 control-label font-weight-bold">강사님을 소개해주세요!&nbsp;&nbsp;<span id="cnttxt1"></span></label>
                           <div class="cols-sm-10 " >
                             <div class="md-form" id="inputHtml">
	 <!-- t_intro -->               <textarea id="t_intro" name="t_intro" class="md-textarea form-control" rows="10" placeholder="편하게 나를 어필해주세요!"></textarea>
                             </div>
                           </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">강의 상세내용&nbsp;&nbsp;<span id="cnttxt2"></span></label>
                           <div class="cols-sm-10">
                             <div class="md-form">
	 <!-- t_content -->               <textarea id="t_content" onkeydown="if(event.keyCode===9){var v=this.value,s=this.selectionStart,e=this.selectionEnd;this.value=v.substring(0, s)+'\t'+v.substring(e);this.selectionStart=this.selectionEnd=s+1;return false;}" name="t_content" class="md-textarea form-control" rows="10" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
                             </div>
                           </div>
                    </div>
                    
                    <div class="form-group">
 <!-- t_price -->      <label for="t_price" class="cols-sm-2 control-label font-weight-bold">수강 참여비</label>
 					   <label id="price-Text" class="cols-sm-2 control-label font-weight-bold"></label>
                        <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
	                            <span class="input-group-addon"></span>
	                            <input type="text" class="form-control mr-3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="t_price" id="t_price" placeholder="합리적인 참여비를 작성해주세요" />     
                          		<label class="pt-1 mt-1 control-label font-weight-bold w-25">&nbsp;&nbsp;&nbsp;원</label>
	                                 
                      	 </div>
                      </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">영상  URL 등록 </label>
                           <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"></span>
 <!-- t_url 주제 -->               <input type="text" class="form-control" name="t_URL" id="t_URL" placeholder="강사님을 어필해주세요~!" />
                                </div>
                           </div>
                    </div>
  
                      <div class="form-group ">
 <!-- t_userId -->          <input type="hidden" name="t_userId" id="t_userId" value="${teach.user_Id}">
 <!-- t_photo -->           <input type="hidden" name="t_photo" id="photoval" value="">
 <!-- t_place -->           <input type="hidden" name="t_place" id="Place" value="" >
 <!-- day -->               <input type="hidden" class="form-control" name="t_day" id="schedule" value="" />
                          <button type="button" id="enroll_btn" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                      </div>
          </div> 
        </div> 
      </div>
    </div> <!-- 2-->
    </form>
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
<!--
*** FOOTER ***
_________________________________________________________
-->
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
<!-- JavaScript files--> 
<script src="../../resource/vendor/jquery/jquery.min.js"></script>
<script src="../../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../../resource/js/front.js"></script> 
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">

$(document).ready(function($){

// 조건_____________  

$("#t_intro").keyup(function (event) {
	var content1 = $(this).val();
	$('#cnttxt1').html("("+content1.length+" / 최대 3000 자)");
	
	if (content1.length > 3000) {
		alert("최대 3000자까지 입력 가능합니다.");
		
		$(this).val(content1.substring(0, 3000));
		$('#cnttxt1').html("(3000 / 최대  3000 자)");
	}
});

$("#t_content").keyup(function (event) {
	var content2 = $(this).val();
	$('#cnttxt2').html("("+content2.length+" / 최대 3000 자)");
	
	if (content2.length > 3000) {
		alert("최대 3000자까지 입력 가능합니다.");
		
		$(this).val(content2.substring(0, 3000));
		$('#cnttxt2').html("(3000 / 최대  3000 자)");
	}
});

// 금액 천단위 
$(function() {
  var $t_price = $("#t_price");
  $t_price.on('blur', function() {
    // 입력 값 알아내기
    var _$self = $(this);
    var value = _$self.val();

    // 원단위로 변경하기
    var result = AddComma(value);

    _$self.val(result);
  })

});

function AddComma(dataValue) {
  isNumber(dataValue);
  var separateValue = Number(dataValue).toLocaleString('en');
  if (separateValue == 'NaN') {
    return '';
  }
  return separateValue;
}

function isNumber(checkValue) {
    checkValue = '' + checkValue;
    if (isNaN(checkValue) || checkValue == "") {
      alert('숫자만 입력해 주세요!!!');
      return;
    }}





// 등록 버튼  					
 $('#enroll_btn').click(function(){
	  var road =  document.getElementById('roadAddress').value; 
	  var jibun =  document.getElementById('jibunAddress').value;
	  
	  var Place = road+"/"+jibun;
	  document.getElementById('Place').value = Place; 
 

/* null 확인  */
	 var t_category = document.getElementById('category');
	 var t_title = document.getElementById('stitle');
	 var t_day = document.getElementById('schedule');
	 var t_price = document.getElementById('t_price');
	 
	 
	 if ((t_category.value == null || t_category.value == "")) {
		
		 $('#t_category').css('color','red');
		 $('#t_category').text("카테고리를 작성하십시오.");
		 
		 
		 /* t_category.value ="카테고리를 작성하십시오.";
		 
		 $('#category').focus(function(){ 
			 
			 if ( t_category.value=="카테고리를 작성하십시오.") {
				 t_category.value="";
			}
				$('#category').css('color','black');
				
			 });
		 
		 $('#category').blur(function(){ 
			 
			 if (t_category.value == null || t_category.value == "") {
				t_category.value = "카테고리를 작성하십시오";
				$('#category').css('color','red');
				 
			}
				
			 }); */
		 
		 
	}

	 if ( t_title.value == null || t_title.value =="") {
			$('#t_title').css('color','red');
			$('#t_title').text("강의주제를 작성하십시오.");
			
			
			/*
			
			t_title.value ="강의주제를 작성하십시오.";
			
			  $('#stitle').focus(function(){ 
				 
				 if ( t_title.value=="강의주제를 작성하십시오.") {
					 t_title.value="";
				}
					$('#stitle').css('color','black');
					
				 });
			 
			 $('#stitle').blur(function(){ 
				 
				 if (t_title.value == null || t_title.value == "") {
					 t_title.value = "강의주제를 작성하십시오";
					$('#stitle').css('color','red');
					 
				}
					
				 }); */
	}
	 
	 if (t_day.value == null || t_day.value == "") {
		 $('#nullText').css('color','red');
	   	 $('#nullText').text("구체적인 날짜를 정해주십시오."); 
		
	}
	 
	 if ($('#start').val() > $('#end').val()) {
			alert('날짜를 다시 입력해주세요');
		}
	 
	 if (t_price.value == null || t_price.value =="") {
		$('#price-Text').css('color','red');
		$('#price-Text').text('합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])');
		
	}
 
	 if (t_day.value != null && t_day.value !="" && !($('#start').val() > $('#end').val()) && t_day.value !="구체적인 날짜를 정해주십시오." && t_price.value != null && t_price.value != "합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])" &&t_category.value != null && t_category.value != "카테고리를 작성하십시오." && t_category.value != "" && t_title.value != "강의주제를 작성하십시오."&& t_title.value != null && t_title.value !="" ) {
		document.classForm.submit();
	}
 
 });


  
// 우편번호 검색 ___________________________________________________________

	  $("#execDaumPostcode").click(function sample4_execDaumPostcode() {
	      new daum.Postcode(
	              {
	                  oncomplete : function(data) {
	                	  
	                	  // 도로명 주소 변수 
	                      var fullRoadAddr = data.roadAddress;
	                      // 도로명 조합형 주소 변수 
	                      var extraRoadAddr = '';  
	
	                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                      if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
	                          extraRoadAddr += data.bname;
	                      }
	                      // 건물명이 있고, 공동주택일 경우 추가한다.
	                      if (data.buildingName !== ''
	                              && data.apartment === 'Y') {
	                          extraRoadAddr += (extraRoadAddr !== '' ? ', '
	                                  + data.buildingName : data.buildingName);
	                      }
	                      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                      if (extraRoadAddr !== '') {
	                          extraRoadAddr = ' (' + extraRoadAddr + ')';
	                      }
	                      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                      if (fullRoadAddr !== '') {
	                          fullRoadAddr += extraRoadAddr;
	                      }
	
	                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                      document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
	                      document.getElementById('roadAddress').value = fullRoadAddr;
	                      document.getElementById('jibunAddress').value = data.jibunAddress;
	
	                      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                      if (data.autoRoadAddress) {
	                          //예상되는 도로명 주소에 조합형 주소를 추가한다.
	                          var expRoadAddr = data.autoRoadAddress
	                                  + extraRoadAddr;
	                          document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
	                                  + expRoadAddr + ')';
	
	                      } else if (data.autoJibunAddress) {
	                          var expJibunAddr = data.autoJibunAddress;
	                          document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
	                                  + expJibunAddr + ')';
	
	                      } else {
	                          document.getElementById('guide').innerHTML = '';
	                      }
	                  }
	              }).open();
	  });


// 요일 선택___________________________________________________________

		$(".form-check-input").click(function(){
			var str = "";  
			$(".form-check-input").each(function(){ 
				if($(this).is(":checked")) 
					str += $(this).next().text() + " "; 
			});
			
					document.getElementById("schedule").value= str;  
					$('#nullText').css("color","green");
					$('#nullText').text(str);
		});
		 
// 이미지 버튼___________________________________________________________

		/*   var photo = document.getElementById("input_img");
		  var photoSrc = photo.getAttribute('src');
		  document.getElementById('photoval').value = photoSrc; */


		  var img0 = $('#img_btn_0').attr('src');
		  var img1 = $('#img_btn_1').attr('src');
		  var img2 = $('#img_btn_2').attr('src');
		  var img3 = $('#img_btn_3').attr('src');
		  var img4 = $('#img_btn_4').attr('src');
		  var img5 = $('#img_btn_5').attr('src');

		  $('#img_btn_0').on({'click': function(){
		        $('#input_img').attr('src',img0);
		        document.getElementById("category").value = "직접입력";
		     }
		 });
		  $('#img_btn_1').on({'click': function(){
		        $('#input_img').attr('src',img1);
		        document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		        document.getElementById("category").value = "JAVA";
		     }
		 });

		 $('#img_btn_2').on({'click': function(){
		        $('#input_img').attr('src',img2);
		        document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		        document.getElementById("category").value = "JavaScript";
		    } 
		});

		$('#img_btn_3').on({'click': function(){
		       $('#input_img').attr('src',img3);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "C";
		   }
		});

		$('#img_btn_4').on({'click': function(){
		       $('#input_img').attr('src',img4);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Python";
		   }
		 });

		$('#img_btn_5').on({'click': function(){
		       $('#input_img').attr('src',img5);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Android";
		   }
		});

});
</script>
</body>
</html>
