<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="../resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.carousel.css"> 
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/css/style.default.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes--> 
    <link rel="stylesheet" href="../resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]--> 
    <link rel="icon" type="image/png" href="../resource/images/icons/favicon.ico"/>
</head>
<style>
    #top{
        position: static;
        margin-left: auto;
        margin-right: auto;
        background-color: #e0e0e0;
    }
    #studyusnav{
        margin-left: 0;
        margin-right: 0;
    }
    #search{
        margin-left: auto;
        margin-right: auto;
    }


    #new{
        position: static;
        margin-left: auto;
        margin-right: auto;
    }

    #content{
        margin-left: auto;
        margin-right: auto;
    }
    #footer {
        margin-left: auto;
        margin-right: auto;
        background-color: #fff;
        
    }
    #navigation > ul > li > ul {
        width: 100.3%;
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
  
    .imgrank img{
	    position:absolute;
	    background:none;
	 	width:100%;
	 	height: auto;
	 	max-width: 40px; 
	 	z-index: 10;
	 }
	body{
	 background-color: #e0e0e0;
	 }
	th{
		disply:none;
		text-align: right;
	}
	
	aside{
		position:fixed;
		top:80px;
		right:100px;
		margin-left: 15pc;
		background-color: #fff;
	}
	#main{
		box-sizing: border-box;
		float:left;
		overflow: hidden;
		background-color: #fff;
	} 

	.level-mark2{
		width: 90px;
		height: 90px;
		overflow: hidden;
		text-align: center;
		background: #5a7fa2;
		line-height: normal;
	}
	.label2{
		margin-top: 26px;
		font-weight: 700;
		font-size: 1pc;
		color: #ffeb3b;
	}
	.level2{
		margin-top: 3px;
		font-size: 2pc;
		color: #fff;
	}
	
	.qnaButton{
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 100%;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15pt;
		margin-top:20px;
	}
	
	.goButton{
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 100%;
		height: 56px;
		line-height: 56px;
		text-align: center;
		font-size: 15pt;
	}
	.successBtn{
		border:none;
		background-color: #d0d0d0;
		color: #fff;
		display: block;
		width: 100%;
		height: 56px;
		line-height: 56px;
		text-align: center;
		font-size: 15pt;
	}
	.infoModi{
		box-sizing:border-box;
		position:relative;
		top:0px;
		left:500px;
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 80px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15pt;
	}
	input[type=submit] {
    cursor: pointer;
    outline: 0;
	}
	#QnA{
	background-color: #5a7fa2;
	color: #fff;
	}
	.btn-circle.btn-xl {
	  width: 160px;
	  height: 160px; 
	  padding: 5px 5px 5px 5px;
	  border-radius: 50px;
	  font-size: 24px;
	  line-height: 1.33;
	}
	
	.btn-circle {
	  width: 20px;
	  height: 20px;
	  padding: 0px 0px;
	  border-radius: 15px;
	  text-align: center;
	  font-size: 12px;
	  line-height: 1.42857;
	}
	#r_content{
		height: auto;
		widows: 75%;
	}
	#modalBox{
	background-color:#fff;
}
	textarea{
	 resize: none;
	 background-color: transparent;
	}
</style>
<body>
<!-- @@@@@@@@ 헤더 시작 @@@@@@@@ -->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top">
        <div class="container"> 
            <div class="row">
                <!-- <div class="col-lg-6 offer d-flex d-block"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div> --> 
                <div class="row mx-auto w-100 text-right"> 
                    <ul class="menu list-inline mb-0 w-100 ">
	                    <c:choose>
	                    <c:when test="${std == null && teach == null}">
                    		<li class=" pl-2 list-inline-item pull-left"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a></li> 
	                    </c:when>
	                    <c:otherwise>
                   	 		<li id="myList" class=" pl-2 list-inline-item pull-left"><a href="/study/myList" class="btn btn-success btn-sm">참여한 스터디 보러가기</a></li> 
	                    </c:otherwise>
	                    </c:choose>
                    	<c:if test="${std == null && teach == null}">
                        	<li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<li class="list-inline-item">${std.user_Id  } 님 환영합니다.</li>
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
                        	<li class="list-inline-item">${teach.user_Id}님 환영합니다!</li>
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
                        <li class="list-inline-item pr-2"><a href="contact.jsp" class="text-black-50 font-weight-bold">문의하기</a></li>
                        </c:if>
                        <c:if test="${std.user_Id.substring(0,5).equals('admin')}">
                       		 <li class="list-inline-item pr-2"><a href="/admin/app_before" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
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
    <div class="container mx-auto"> <!--  *****  mx-auto 설정 -->
    <nav id="studyusnav" class="navbar navbar-expand-lg  w-100 ">   <!-- *****   w-100 설정 -->
        <div class="container mt-auto"><a href="/" class="navbar-brand home"><img src="../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="../resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.jsp" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
            </div>  
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">학생<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row"> 
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>친목도모</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="/study/teacherEnroll" class="nav-link">스터디</a></li>
                                            <li class="nav-item"><a href="/study/normalEnroll" class="nav-link">과외</a></li>
                                            <li class="nav-item"><a href="/study/classBoard" class="nav-link">강의탐방</a></li>
                                            <li class="nav-item"><a href="/study/header_DetailRead" class="nav-link">상세보기 test</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">Q&A</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>동영상 강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">비주얼베이직</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자바</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">기타</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
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
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
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

                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>친목도모</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">스터디</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">과외</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">Q&A</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>동영상 강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">비주얼베이직</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자바</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">기타</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
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
            <div class="col-md-7 col-lg-3">
                <div class="banner"><a href="#"><img src="../resource/images/banner.jpg" alt="" class="img img-fluid"></a></div>
                <div class="banner"><a href="#"><img src="../resource/images/banner2.jpg" alt="" class="img img-fluid"></a></div>
            </div>
        </div>
                            </li>
                        </ul>  
                    </li> 
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">더보기<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row">
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>공지사항</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="index.jsp" class="nav-link">학생</a></li> 
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">그룹장</a></li>
                                            <li class="nav-item"><a href="category-right.jsp" class="nav-link">업체</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>회원</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="register.jsp" class="nav-link">로그인 / 가입하기</a></li>
                                            <li class="nav-item"><a href="customer-orders.jsp" class="nav-link">주문 내역</a></li>
                                            <li class="nav-item"><a href="customer-order.jsp" class="nav-link">주문 내역 더보기</a></li>
                                            <li class="nav-item"><a href="customer-wishlist.jsp" class="nav-link">장바구니</a></li>
                                            <li class="nav-item"><a href="customer-account.jsp" class="nav-link">회원정보 수정</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
                                        <h5>등록</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="basket.jsp" class="nav-link">그룹장 등록</a></li>
                                            <li class="nav-item"><a href="checkout1.jsp" class="nav-link">업체 등록</a></li>
                                            <li class="nav-item"><a href="checkout2.jsp" class="nav-link">광고 문의</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7 col-lg-3"> <!--  *****  col-md-7 설정 -->
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
                </ul>    
            </div>
        </div>
    </nav>
    </div>
</header>
<!-- @@@@@@@@ 헤더 끝 @@@@@@@@ -->
<!-- @@@@@@@@ //// 본론 진입 /// @@@@@@@@ -->
    <div class="container mx-auto mb-0">
				<div class=" justify-content-md-center d-inline-block w-100">
					<div id="main" class="rounded-sm d-inline-block w-100">  <!-- @@@@@@@@ 메인 시작 @@@@@@@@ -->
						<div class="form-group container-fluid  w-100">
									<label for="name" class="pb-3 row m-0 text-justify w-100  cols-sm-2 p-2 pl-5 pr-5 control-label d-flex justify-content-center pt-3">
										<font size="8">${listOne.s_title }</font>
									</label>
									<c:choose>
									<c:when test="${std != null}">
										<c:if test="${(std.user_Id ).equals(listOne.s_userId) }">
			<!--  내용 수정 -->				<a href="studentModify?s_no=${listOne.s_no}" ><input type="submit" id="infoModi" class="infoModi align-self-end d-inline-block justify-content-center mt-2 mb-2" value="수정"/></a>
			<!--  내용 삭제 -->				<input type="submit" id="delete_enroll"  data-toggle="modal" data-target="#delete-modal"class="infoModi align-self-end d-inline-block justify-content-center mt-2 mb-2" value="삭제"/>	
										<%@include file="../include/s_delete_enroll.jsp" %>
										</c:if>
									</c:when>
									</c:choose>
								
							</div>	
							<div class="h-75 container d-inline-block border-top"> 
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center">
								</div>		
							</div>
							
							

							<div class="h-75 row d-flex  p-2  m-0 container d-inline-block">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-3 pb-4 m-0 text-justify   control-label justify-content-center">
										<font size="6">그룹장 소개</font>
									</label>
									<div class="cols-sm-5 pb-5 pr-2 pl-2">
						              <div class="input-group d-flex justify-content-center ">
						                <img id="img_btn_0" src="../../resource/images/imgs/김혜련_증명.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
						              </div>
           						    </div>
								</div>
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-2  pl-5 pr-5 justify-content-center container-fluid ">
									<div  style=" word-break:break-all;"class="row h-50 w-100 d-inline-block d-flex pt-2 " >
										
										<pre><font size="4"><c:out value="${listOne.s_intro }" /></font></pre>
									</div>
								</div>
							</div>
							
					<!-- 별점 평가 통계  -->
							<div class="h-75 row d-flex  p-2  m-0 container d-inline-block">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-3 pb-2 m-0 text-justify   control-label justify-content-center">
										<font size="4">스터디 별점</font>
									</label> 
								</div>
								<div  class="cols-sm-5 d-inline-block w-75 pt-2 pl-5 pr-5 justify-content-center container-fluid  border-top">
									<div  style=" word-break:break-all;"class="row h-50 w-100 d-inline-block d-flex pt-2 " >
										<c:if test="${(starScore == 0 && starScore < 1)|| (starScore == 'NaN') }">
											<div id="star_grade" class="h2" >
										        <span>★</span> 
										        <span>★</span>  
										        <span>★</span>    
										        <span>★</span>
										        <span>★</span>   
											</div>
										</c:if>
										<c:if test="${starScore > 0 && starScore < 1 }">
											<div id="star_grade" class="h2" >
										        <span style="color: #feba63;">★</span> 
										        <span>★</span>  
										        <span>★</span>    
										        <span>★</span>
										        <span>★</span>   
											</div>
										</c:if>
										<c:if test="${starScore > 1  && starScore <= 2 }">
											<div id="star_grade" class="h2" >
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span>★</span>    
										        <span>★</span>
										        <span>★</span>   
											</div>
										</c:if>
										<c:if test="${starScore > 2  && starScore <= 3 }">
											<div id="star_grade" class="h2" >
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span>★</span>
										        <span>★</span>   
											</div>
										</c:if>
										<c:if test="${starScore > 3  && starScore <= 4 }">
											<div id="star_grade" class="h2" >
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span>★</span>   
											</div>
										</c:if>
										<c:if test="${starScore> 4  && starScore <= 5 }">
											<div id="star_grade" class="h2" >
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
										        <span style="color: #feba63;">★</span> 
											</div>
										</c:if>
										<c:choose>
											<c:when test="${starScore == 'NaN' }">
												<span class="h3 mt-2 ml-4">00.00</span>
											</c:when>
											<c:otherwise>
												<span class="h3 mt-2 ml-4">${starScore}</span>
											</c:otherwise>
										</c:choose>
									</div> 
								</div>
							</div>
							
							<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block ">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
										<font color="#787878" size="4">상세 내용</font>
									</label>
								</div>
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-5  pl-5 pr-5 justify-content-center container-fluid border-top">
									<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-5" >
										
										<table style="width:400px;">
											<tr>
												<th id="s_level"><font color="#a0a0a0" > <label class=" d-flex p-2 pr-0 control-label ">난이도 : </label></font></th>
												<td>${listOne.s_level }</td>
												<th id="s_people"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">인원수 : </label></font></th>
												<td> ${listOne.s_people }</td>
											</tr>	
											<tr>
												<th id="s_people"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">장소 : </label></font></th>
												<td colspan="3">${listOne.s_place }</td>
											</tr>	
										</table>
									</div>
								</div>
							</div>
			
							
							
							<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
										<font size="5">스터디 상세 내용</font>
									</label>
								</div>
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-3 pl-5 pr-5 pt-3 container-fluid justify-content-center  border-top">
									<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-3" >
										<pre><font size="4"><c:out value="${listOne.s_content }" /></font></pre>
									</div>
								</div>
							</div>
							
	<!-- @@@@@@@@ //// 댓글 ( Q & A ) 작성  /// @@@@@@@@ -->	
							<c:forEach var="reply" items="${reply}">
								<c:choose>
 								<c:when test="${(listOne.s_userId).equals(reply.r_userid)}">
										<form  id="replyForm"action="./replyModify" method="post">
											<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top " style="background: orange;">
												<div  class="cols-sm-5 d-inline-block w-100 mb-0 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
													<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 " >
															<table class="justify-content-center d-inline-block w-100">
																<tr>
																	<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">리더</font></td>
																	<td colspan="5" >
																		
																		<textarea name="r_content" onkeydown="resize(this)" onkeyup="resize(this)" cols="100"  readonly="readonly" style="border:none; ">${reply.r_content}</textarea>
																	
																	<c:choose>
																	<c:when test="${(listOne.s_userId).equals(std.user_Id ) }">
																		<input type="button" id="modiReButton" onclick="clickEvnet2(this)" class="modiReButton d-inline-block" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe2(this)">
																		<%-- <a href="./replyDelete/${reply.s_no}/${reply.r_no }">삭제하기</a> --%>
																		<input type="hidden" name="s_no" value="${reply.s_no }"/>
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																	</c:when>
																	<c:when test="${(listOne.s_userId).equals(teach.user_Id ) }">
																		<input type="button" id="modiReButton" onclick="clickEvnet2(this)" class="modiReButton d-inline-block" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe2(this)">
																		<%-- <a href="./replyDelete/${reply.s_no}/${reply.r_no }">삭제하기</a> --%>
																		<input type="hidden" name="s_no" value="${reply.s_no }"/>
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>																	
																	</c:when>
																	</c:choose>
																</tr>
															</table>
													</div>
												</div>		
											</div>
										</form>
									</c:when>
									<c:otherwise>
									<form id="replyForm"  action="./replyModify" method="post">
										<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top mt-1"style="background:#dddeee;"> 
												<div  class="cols-sm-5 d-inline-block w-100 mb-0 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
													<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 " >
															<table class="justify-content-center d-inline-block w-100">
																<tr>
																	<td rowspan="1" colspan="2" class="pr-5 w-25 h-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">${reply.r_userid }</font><font size="4"> 님</font></td>
																	<td colspan="7" >
																		<textarea  name="r_content" onkeydown="resize(this)" onkeyup="resize(this)" cols="90"  readonly="readonly">${reply.r_content}</textarea>
																	</td> 
																	<td >
																	<c:choose>
																	<c:when test="${(reply.r_userid).equals(std.user_Id ) }">
																		<input type="button" id="modiReButton" class="modiReButton d-inline-block" onclick="clickEvnet(this)" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe(this)">
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																		<input type="hidden" name="s_no" value="${reply.s_no }"/>
																	</c:when>
																	<c:when test="${(reply.r_userid).equals(teach.user_Id ) }">
																		<input type="button" id="modiReButton" class="modiReButton d-inline-block" onclick="clickEvnet(this)" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe(this)">
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																		<input type="hidden" name="s_no" value="${reply.s_no }"/>																	
																	</c:when>
																	</c:choose>
																	</td>
																</tr>
															</table>
													</div>
												</div>		
											</div>
										</form>
									</c:otherwise>
								</c:choose> 
							</c:forEach>
							<c:choose>
							<c:when test="${std.user_Id != null && teach.user_Id == null }">
								<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top ">
									<div  class="cols-sm-5 d-inline-block w-100 mb-0 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
										<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 "  >
											<form role="from" method="post" action="./s_detailReply.do"> 
												<font size="4"><span id="cnttxt1" class="d-flex justify-content-end"></span></font>
												<table class="justify-content-center d-inline-block w-100">
													<tr>
														<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="7">Q &amp; A</font></td>
														<td colspan="5" >
															<textarea id="r_content" name="r_content" rows="10" cols="100" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
														<td>    
													</tr>   
													<tr>
														<td>
															<input type="submit" id="qnaButton" class="qnaButton" value="질문하기"/>
														</td> 
													</tr>
												</table>
												<input type="hidden" name="s_no" value="${listOne.s_no}" />
												<input type="hidden" name="r_userid" value="${std.user_Id  }"/>
											</form>
										</div>
									</div>		
								</div>
							</c:when> 
							<c:otherwise>
								<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top ">
									<div  class="cols-sm-5 d-inline-block w-100 mb-0 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
										<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 "  >
											<form role="from" method="post" action="./s_detailReply.do"> 
												<font size="4"><span id="cnttxt1" class="d-flex justify-content-end"></span></font>
												<table class="justify-content-center d-inline-block w-100">
													<tr>
														<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="7">Q &amp; A</font></td>
														<td colspan="5" >
															<textarea id="r_content" name="r_content" rows="10" cols="100" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
														<td>    
													</tr>   
													<tr>
														<td>
															<input type="submit" id="qnaButton" class="qnaButton" value="질문하기"/>
														</td> 
													</tr>
												</table>
												<input type="hidden" name="s_no" value="${listOne.s_no}" />
												<input type="hidden" name="r_userid" value="${teach.user_Id  }"/>
											</form>
										</div>
									</div>		
								</div>
							</c:otherwise>
							</c:choose> 
					</div>    
					<!-- @@@@@@@@ 메인 끝 @@@@@@@@ -->
	<!-- @@@@@@@@ //// 참여신청 시작 /// @@@@@@@@ -->					
				<aside class="d-inline-block rounded-sm " style="width: 350px;" >
					<div  class="form-group container-fluid" style="height: auto;">
							<div class="cols-sm-1 d-inline-block d-flex justify-content-center"> 
								<div class="card-body">
									<div class="input-group d-flex justify-content-center font-weight-bold ">
										<font size="5">${listOne.s_title }</font>
									</div>
								</div> 
							</div> 
							<div class=" border-top border-bottom h-100 w-100 d-inline-block">
									<div class="level-mark2 d-inline-block">
										<div class="label2">LEVEL</div>
										<div class="level2">${listOne.s_level }</div>
									</div>
									<label for="name" class="font-weight-bold text-center row p-2 d-inline-block m-0 mt-2 text-justify w-50  control-label justify-content-center">
										<font size="5">기간</font>
									</label>
								<div class="w-100 d-inline-block row d-flex m-0 justify-content-center ">
									<div id="s_startdate" class="form-group d-flex pt-2  d-inline-block  justify-content-center">
										<font size="4"><fmt:formatDate value="${listOne.s_startDate }"  pattern="yyyy-MM-dd"/></font>
									</div>	
									<div class="form-group d-flex pt-2 d-inline-block  justify-content-center"> &nbsp; ~ &nbsp;</div>
									<div id="s_endDate" class="form-group d-flex pt-2  d-inline-block  justify-content-center">
										<font size="4"><fmt:formatDate value="${listOne.s_endDate }"  pattern="yyyy-MM-dd"/></font>
									</div>
								</div>		
								<div id="s_day" class="form-group d-flex pt-2 d-block  justify-content-center">
									<font size="4">${listOne.s_day }</font> 
								</div>	
							</div>	
							<div class=" border-top border-bottom h-100 w-100 d-inline-block">
								<label for="s_price" class="font-weight-bold text-center row p-2 d-inline-block m-0 mt-2 text-justify w-100  control-label justify-content-center">
								</label>
							</div>
							<c:choose>
								<c:when test="${(listOne.s_parti) == (listOne.s_people) }">
									<div class="goButton">마감되었습니다</div>
								</c:when>
								<c:otherwise>
								<c:choose>
										<c:when test="${(partiOne.p_userid).equals(std.user_Id )}">    
											<div class="successBtn"id="success" >    참여신청완료</div>
											<input type="button" class="goButton mt-4" id="cancle"  data-toggle="modal" data-target="#cancle-modal"  value="참여신청취소하기"/> 
										</c:when> 
										<c:otherwise>
											<input type="button" class="goButton"id="partiBnt"  data-toggle="modal" data-target="#Form-modal"  value="참여신청"/> 
										</c:otherwise>
								</c:choose>
								</c:otherwise>
							</c:choose>
					</div>
				</aside>

		           		 <%@include file="../include/participation.jsp" %>
		           		 <%@include file="../include/cancleForm.jsp" %>
				<!-- @@@@@@@@ //// 참여신청 끝 /// @@@@@@@@ -->	
					</div>   
					<!-- @@@@@@@@ 메인 끝 @@@@@@@@ -->
		<!-- *** FOOTER ***_________________________________________________________-->			
				<div class="box text-center mb-0  container mx-auto"id="footer">
				    <div class="container ">
				        <div class="row ">
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
				                    <li><a href="#" data-toggle="modal" data-target="#login-modal">로그인</a></li>
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
				</div><!-- //  *** FOOTER ***______-->
			</div><!-- @@@@@@@@ //// 본론 진입 /// @@@@@@@@ -->
		
<!-- *** BLOG HOMEPAGE END ***-->

<!-- JavaScript files--> 
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../resource/js/front.js"></script>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script src="../resource/js/hr/student_detailRead.js"></script> 
</body>
</html>		