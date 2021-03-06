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
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

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
        <%@ include file="../include/index_header_MS.jsp" %> 
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
<div class="container  mx-auto">
<form  name="classForm"class="form-horizontal" role="form" method="post" action="/study/teacherModi.do">
<!-- <1> image Enroll -->
  <div class="row mt-3 justify-content-md-center"  style="background:#fff;" >
    <div class="col-sm-5 d-inline-block"> <!-- 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
        <div class="form-group container-fluid">
          <div class="card">
            <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="5">사진등록</font></label>
            <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
              <div class="card-body">
                <div class="input-group d-flex justify-content-center">
<!-- photo -->     <img id="input_img" src="${listOne.t_photo}" alt="이미지">
                </div>
              </div>
            </div>
            
<!-- button Enroll -->
            <!-- <div class="cols-sm-5">
            <div class="form-group"> -->
            <div class="cols-sm-5 pb-5 pr-2 pl-2">
             <div class="input-group d-flex justify-content-center ">
                <img id="img_btn_0" src="/resource/images/imgs/studyUs.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
                <img id="img_btn_1" src="/resource/images/imgs/java.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_2" src="/resource/images/imgs/javascript.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_3" src="/resource/images/imgs/cpplus.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_4" src="/resource/images/imgs/php.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_5" src="/resource/images/imgs/Android.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_6" src="/resource/images/imgs/c.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_7" src="/resource/images/imgs/go.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_8" src="/resource/images/imgs/ruby.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_9" src="/resource/images/imgs/swift.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_10" src="/resource/images/imgs/sql.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_11" src="/resource/images/imgs/visualbasic.jpg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_12" src="/resource/images/imgs/cs.jpg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_13" src="/resource/images/imgs/python1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
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
	          <input type="date" name="t_startDate" class="form-control col-sm-8" id="start" value="${listOne.t_startDate }" />
	    </div>
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"></span>
	          <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">&nbsp;&nbsp;&nbsp;끝&nbsp;</label>&nbsp;&nbsp;
	          <input type="date" name="t_endDate"  class="form-control col-sm-8 " id="end" value="${listOne.t_endDate }" />
	    </div>
    <div class="form-group">
           <div class="cols-sm-10">
              <div class="input-group d-flex justify-content-center ">
                 <span class="input-group-addon"></span>
                	<!-- 월요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
              		
                      <input type="checkbox" class="form-check-input" id="mon"   value="${mon}">
                      <label class="form-check-label" for="mon">월</label>
                      
                    </div>

                    <!-- 화요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="tue"  value="${tue}" >
                        <label class="form-check-label" for="tue">화</label>
                    </div>

                    <!-- 수요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="wed"  value="${web}">
                        <label class="form-check-label" for="wed">수</label>
                    </div>
                    
                    <!-- 목요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="thu" value="${thu}">
                        <label class="form-check-label" for="thu">목</label>
                    </div>
                    
                    <!-- 금요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="fri"value="${fri}">
                        <label class="form-check-label" for="fri">금</label>
                    </div>
                    
                    <!--  토요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sat" value="${sat}">
                        <label class="form-check-label" for="sat">토</label>
                    </div>
                    
                    <!-- 일요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sun"  value="${sun}">
                        <label class="form-check-label" for="sun">일</label>
                    </div>
                  </div> 
             
                  <label id="nullText" class="cols-sm-2 pt-2 control-label d-flex justify-content-center font-weight-bold">${listOne.t_day}</label> 
              </div>
           </div>
        </div>
      </div>
    </div>
       <div class="form-group container-fluid d-inline-block">
      <div class="card">
        <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-3 control-label d-flex justify-content-center"><font size="5">자격증 정보</font></label>
          <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
           <div class="card-body">
             <div class="input-group d-flex justify-content-center">
            <span class="input-group-addon"></span>
                <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">자격증 </label>&nbsp;&nbsp;
               <select class="selectpicker form-control" id="t_license" onchange="t_licenseinput()">
                 <option value="ocjp" selected="selected">OCJP</option>
                 <option value="리눅스마스터">리눅스마스터</option>
                 <option value="네트워크관리사">네트워크 관리사</option>
                 <option value="정보보안기사">정보 보안 기사</option>
                 <option value="정보보안산업기사">정보 보안 산업기사</option>
                 <option value="정보처리기사">정보처리기사</option>
                 <option value="정보처리산업기사">정보처리 산업기사</option> 
               </select>
             </div>  
             <div>
             	 <table id="t_licenselist" class="table table-hover">
             	 
             	 </table>
             </div>
           </div> 
         </div>
      </div>
     </div> 
  </div>        
  <script>
	  function t_licenseDelete(event) { 
		 $(event).parent().parent().remove(); 
	}
	
	/*$('#LicenceList').append(
						"<tr><td>"+$('#searchKey').val()+"</td><td><button onclick='LicenceDelete(this)'>delete</button></td><tr>"		
				); */	 
	function t_licenseinput() {
		$('#t_licenselist').append(
			"<tr><td><input name='t_license' type='hidden' value='"+$('#t_license').val()+"' />"+$('#t_license').val()+"</td><td><button onclick='t_licenseDelete(this)'>삭제</button></td></tr>" 
		);					
	}
	 (function($) { // Begin jQuery
		  $(function() {  
			  	
				$.getJSON('/resource/json/Licence.json', function (data, textStatus) { 
					/* for (var i = 0; i < data.fields.length; i++) {
						$('#tablehead').append("<th>"+data.fields[i].id+"</th>");  
						
					} */
						console.log(data) 
						$.each(data.records , function() { 
							$('#t_license').append(
							"<option value='"+this.jmfldnm+"'>"+this.jmfldnm+"</option>"		
							);
						})
				});
				
				  // If a link has a dropdown, add sub menu toggle.
			    
		  }); // end DOM ready
		})(jQuery); // end jQuery
</script>
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
                               <select name="t_level" id="select-box" class="selectpicker form-control w-50" >
                                <option value="입문">입문</option>
                                <option value="초급">초급</option>
                                <option value="중급">중급</option> 
                                <option value="고급">고급</option> 
                              </select> 
                                <label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-25">인원수</label>
                                    <span class="input-group-addon"></span>
<!-- t_people -->                    <input type="text" class="form-control"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="t_people" id="t_people" value="${listOne.t_people }" placeholder="숫자를 사용해주세요!" />
                     
                          </div> 
                      </div>
                      <div class="form-group">
                          <label for="category" class="cols-sm-2 control-label font-weight-bold">카테고리</label>
                          <label id="t_category" class="cols-sm-2 control-label font-weight-bold"></label>
                          <div class="cols-sm-10">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
 <!-- category 주제 -->          <input type="text" class="form-control" name="t_category" id="category" value="${listOne.t_category }"placeholder="과목 카테고리를 알려주세요!" />
                        </div>
                      </div>
                      </div>
 
                      <div class="form-group">
                          <label for="stitle" class="cols-sm-2 control-label font-weight-bold">강의 주제</label>
                          <label id="t_title" class="cols-sm-2 control-label font-weight-bold"></label>
                          
                             <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"></span>
 <!-- title 주제 -->               <input type="text" class="form-control" name="t_title"  value="${listOne.t_title }" id="stitle" placeholder="강의 주제를 알려주세요!" />
                                </div>
                             </div>
                      </div>

 <!-- day -->     <input type="hidden" class="form-control" name="t_day" id="schedule" value="${listOne.t_day }"/>

                       <!-- kakao map api(카카오 지도) -->
                   <div class="form-group">
                       <label for="sPlace" class="cols-sm-2 control-label font-weight-bold">강의 장소
                          <small>장소를 알려주세요!</small>
                     </label>              
                        <input type="button" class="btn btn-primary box pull-right" value="주소 검색" onclick="execDaumPostcode()">
                        
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group mt-1 mb-1">
                            
                        <!--  post 우편번호 -->            
                           <input type="text"  name="s_postnum" class="form-control" id="postcode"  placeholder="우편번호" value="${listOne.t_postnum }" required>
                         </div>
                            </div>
                            
                    <!-- 주소 (주소 검색 후 사용자 선택에 따라 지번 or 도로명 주소가 입력됨)-->
                          <div class="cols-sm-10 mb-1 ">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
                                <input type="text"  class="form-control" id="roadAddress" placeholder="도로명/지번주소" value="${listOne.road }" required>
                            </div>
                          </div>
                          
                    <!-- 상세주소 (주소 검색 후 focus이동하여 사용자가 직접 입력하게 함)-->                         
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
                                <input type="text" class="form-control" id="jibunAddress" placeholder="상세주소" value="${listOne.jibun }" required>
                           </div>
                          </div>
                          
                     <!-- 참고항목 -->                         
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"></span>
                                <input type="text" class="form-control" id="extraAddress" placeholder="참고항목" required>
                           </div>
                          </div>
                          
                     <%--주소 검색 iframe wrap 공간--%>
                          <div class="cols-sm-10 mb-1">
                              <div class="input-group">
                        <div id="wrap" style="display:none;
                                 border:1px solid;
                                 width:500px;
                                 height:300px;
                                 margin:5px 0;
                                 position:relative">
                      <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap"
                          style="cursor:pointer;
                          position:absolute;
                          right:0px;
                          top:-1px;
                          z-index:1" 
                          onclick="foldDaumPostcode()" alt="접기 버튼">
                         </div>
                     </div>
                          </div>
    
    
                   <%--kakao map API (카카오 지도 담는 영역)--%>
                       <div class="cols-sm-10 mb-1">
                          <div class="input-group">
                        <div id="map" style="width: 100%; height: 300px;"></div>
                     </div>
                  </div>  
                    </div>
<%--kakao map API (카카오 지도) 끝--%>
                    
                    <div class="form-group">
                        <label for="info" class="cols-sm-2 control-label font-weight-bold">강사님을 소개해주세요!</label>
                           <div class="cols-sm-10 " >
                             <div class="md-form" id="inputHtml">
    <!-- t_intro -->               <textarea name="t_intro" class="md-textarea form-control" rows="10" placeholder="편하게 나를 어필해주세요!">${listOne.t_intro }</textarea>
                             </div>
                           </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">상세내용</label>
                           <div class="cols-sm-10">
                             <div class="md-form">
    <!-- t_content -->               <textarea id="form7" name="t_content" class="md-textarea form-control" rows="10" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!">
                               ${listOne.t_content }
                              </textarea>
                             </div>
                           </div>
                    </div>
                    
                    <div class="form-group">
 <!-- t_price -->      <label for="t_price" class="cols-sm-2 control-label font-weight-bold">수강 참여비</label>
                   <label id="price-Text" class="cols-sm-2 control-label font-weight-bold"></label>
                        <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
                               <span class="input-group-addon"></span>
                               <input type="text" class="form-control mr-3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="t_price" id="t_price" value="${listOne.t_price }" placeholder="합리적인 참여비를 작성해주세요" />     
                                <label class="pt-1 mt-1 control-label font-weight-bold w-25">&nbsp;&nbsp;&nbsp;원</label>
                                    
                          </div>
                      </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">영상  URL 등록 </label>
                           <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"></span>
 <!-- t_url 주제 -->               <input type="text" class="form-control" name="t_URL" id="t_URL" value="${listOne.t_URL }" placeholder="강사님을 어필해주세요~!" />
                                </div>
                           </div>
                    </div>
  
                      <div class="form-group ">
 <!-- t_userId -->          <input type="hidden" name="t_userId" id="t_userId" value="${teach.user_Id }">
 <!-- t_photo -->           <input type="hidden" name="t_photo" id="photoval" value="${listOne.t_photo}">
 <!-- t_place -->           <input type="hidden" name="t_place" id="Place" value="" >
                      <input type="hidden" name="t_no" value="${listOne.t_no }"/>
                          <button type="button" id="enroll_btn" class="btn btn-primary btn-lg btn-block login-button">Register</button>
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
<script src="/resource/vendor/jquery/jquery.min.js"></script>
<script src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="/resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="/resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="/resource/js/front.js"></script>
<!-- kakao map api key (최성웅 key)-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6576765d075a8eced9a1dab97cad004a&libraries=services"></script>
</body>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>   
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- kakao map api 시작-->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
							 
	//기존 지도 불러오는 readMap()메소드 호출 
	window.onload = function hello() {
		var license = "${listOne.t_license}" 
		var licenselist = license.split(','); 
		console.log(licenselist); 
		for (var i = 0; i < licenselist.length; i++) { 
			if (licenselist[i] != null && licenselist[i] != "") { 
				$('#t_licenselist').append(
					"<tr><td><input name='t_license' type='hidden' value='"+licenselist[i]+"' />"+licenselist[i]+"</td><td><button onclick='t_licenseDelete(this)'>삭제</button></td></tr>" 
				);			
			}
		}
		
	  	console.log(license); 
		readMap();
	}

	// 주소에 대한 좌표를 담을 변수 선언
	var $coords ={};
	$coords.userAddress = $("#roadAddress");
	var address = $coords.userAddress.val();

	// map컨테이너 선언
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};
		
	// 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	
	//지도 불러오기
    function readMap() {
    	
    	if (address == ""){
    		alert('주소를 확인하여 주시기 바랍니다.');
    	}else {
    	// 주소로 좌표를 검색합니다
    	geocoder.addressSearch(address, function(result, status) {

    		// 정상적으로 검색이 완료됐으면
    		if (status === kakao.maps.services.Status.OK) {
    			
    			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    				
    			// 결과값으로 받은 위치를 마커로 표시합니다
    			var marker = new kakao.maps.Marker({
    				map: map,
    				position: coords
    			});

    			// 인포윈도우로 장소에 대한 설명을 표시합니다
    			var infowindow = new kakao.maps.InfoWindow({
    				content: '<div style="width:150px;text-align:center;padding:6px 0;">김코알라 출몰장소</div>'
    			});
    			
    			infowindow.open(map, marker);

    			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    			map.setCenter(coords);
    		} else {
    			alert('검색 결과가 없어요~~.');
    		}
    	});
    }
    return false;
    };
    
    
    /* 주소 검색 버튼 클릭 시 실행할 메소드 */
    function execDaumPostcode() {
        
         //마커를 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.53591291785309, 127.1336680908981),
            map: map
        });
        
        // 우편번호 찾기 찾기 화면을 넣을 element
        var element_wrap = document.getElementById('wrap');
        
        function foldDaumPostcode() {
            // iframe을 넣은 element를 안보이게 한다.
            element_wrap.style.display = 'none';
        }
    	
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                
                var addr = data.roadAddress; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                        var result = results[0]; //첫번째 결과의 값을 활용
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        
                        /* 좌표 확인 테스트
                        alert(coords); */
                        
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
                
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = addr;
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("jibunAddress").focus();
                
                //주소가 변경되면 jibunAddress input value 초기화
                $("#jibunAddress").attr("value",'');
                
                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';
                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height ='300px';
                //element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);
        
        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
<!-- kakao map + 우편번호 검색 끝~~~~~~~~~~~~ -->


<script type="text/javascript">

$(document).ready(function($){
 
// 조건_____________  
 
	$('#select-box option').each(function() {
		if (this.value == "${listOne.t_level}") {
			this.selected = true;
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
	 
	 if (t_price.value == null || t_price.value =="") {
		$('#price-Text').css('color','red');
		$('#price-Text').text('합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])');
		
	}
	
	 if ($('#start').val() > $('#end').val()) {
			alert('날짜를 다시 입력해주세요');
		}
	 
	 if (t_price.value != null && t_price.value != "합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])" &&t_category.value != null && t_category.value != "카테고리를 작성하십시오." && t_category.value != "" && t_title.value != "강의주제를 작성하십시오."&& t_title.value != null && t_title.value !="" && !($('#start').val() > $('#end').val()) ) {
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
		$('.form-check-input').each(function() {
		     if(this.value != null && this.value !=""){ //값 비교
		            this.checked = true; //checked 처리
		      }
		 });
	
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
		  var img6 = $('#img_btn_6').attr('src');
		  var img7 = $('#img_btn_7').attr('src');
		  var img8 = $('#img_btn_8').attr('src');
		  var img9 = $('#img_btn_9').attr('src');
		  var img10 = $('#img_btn_10').attr('src');
		  var img11 = $('#img_btn_11').attr('src');
		  var img12 = $('#img_btn_12').attr('src');

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
		       document.getElementById("category").value = "C++";
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
		$('#img_btn_6').on({'click': function(){
		       $('#input_img').attr('src',img6);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "C";
		   }
		});
		$('#img_btn_7').on({'click': function(){
		       $('#input_img').attr('src',img7);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Go";
		   }
		});
		$('#img_btn_8').on({'click': function(){
		       $('#input_img').attr('src',img8);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Ruby";
		   }
		});
		$('#img_btn_9').on({'click': function(){
		       $('#input_img').attr('src',img9);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Swift";
		   }
		});
		$('#img_btn_10').on({'click': function(){
		       $('#input_img').attr('src',img10);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "SQL";
		   }
		});
		$('#img_btn_11').on({'click': function(){
		       $('#input_img').attr('src',img11);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "Visual Basic";
		   }
		});
		$('#img_btn_12').on({'click': function(){
		       $('#input_img').attr('src',img12);
		       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
		       document.getElementById("category").value = "C#";
		   }
		});
});
</script>
</body>
</html>
