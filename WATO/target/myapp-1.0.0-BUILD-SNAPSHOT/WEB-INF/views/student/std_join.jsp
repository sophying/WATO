<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>스터디어스 - 세상을 뒤흔들어라</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- <link rel="stylesheet" type="text/css" href="../resource/css/terms_jihye.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="../resource/css/std_join.css"> -->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
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
        text-align: center;
        background-color: #fff;
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
	  min-height: 60vh; 
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
        
       /* input {
            background-color: #eee;
            border: none; // 그림자 제거 
            padding: 12px 15px;
            margin: 8px 0; // 위아래 간격 
        }

        #header ul li a:hover{
            background-color: #6c80b2; // 마우스 올리면 배경색 바뀜 
            color:#dddddd;
        }

        th#student {

        }

        div#join {
            padding-top: 30px;
            padding-bottom: 20px;
        }

        button#joinb:hover {
            color: #3c97bf;
            cursor: pointer; // mouse shape turn finger
            background-color: #eeeeee;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            color: #3c97bf;
        } */

        th {
            border: 1px solid #bbbbbb;
            color: #888888;
        }

        td {
            padding-left: 10px;
            border: 1px solid #bbbbbb;
        }

</style>
<body>
<!-- navbar-->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top">
        <div class="container"> 
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">모두를 위한 스터디카페</a></div>
                <div class="col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0">
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
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
                        <li class="list-inline-item"><a href="/admin/adminmanage" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="/admin/terms2" class="text-black-50 font-weight-bold">이용약관</a></li> -->                       
                    </ul>
                </div>
            </div>
        </div> 
        <div class="row">
	        <div id="myModal" class="modal fade" tabindex="-1">
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
        <div class="container"><a href="/" class="navbar-brand home"><img src="../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="../resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
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
                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</header>
<div id="all">
    <div id="content">
<!-- 최지혜 추가 -->  
		<div class="table-responsive">
        	<form role="form" method="post" autocomplete="off"><br><br>
            	<table class="table" style="margin: auto; width: 70%;" cellspacing="0"> <!-- 일반 회원가입 폼 -->
                	<tr>
                        <th id="student" colspan="3" style="background-color: #eeeeee; height: 50px; color: #888888;">학생 회원가입</th>
                    </tr>
                    
                    <tr>
                        <td id="avatar" style="height: 140px; width: 100px; padding: 0px;"><img id="image_section" style="height: 140px; display: block; margin: 0px auto;" src="//sb-cafetalk.s3.amazonaws.com/user-uploaded-files/cafetalk-optimized-559cca73cd84d-984180900-1436338803.png"></td>
                        <td colspan="2">
                            <form id="" runat="">
                                <input type='file' id="imgInput" id="Std_Profile" name="Std_Profile"/>
                                <div><em style="font-size: small;">※업로드 가능한 이미지 크기는 150x100 입니다.<br>이미지 크기가 초과할시 업로드 되지 않을 수 있음을 유의바랍니다.</em></div>
                            </form>
                        </td>
                    </tr>                    
                    
                    <tr>
                        <th>아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="User_Id" name="User_Id" size="37" maxlength="40" required oninvalid="this.setCustomValidity('필수입력사항 입니다.')" >
						</td>
                        <td><button type="button" class="idCheck" onclick="fn_idChk();" style="border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;">아이디 중복확인</button></td>
                    </tr>
                    <tr>
                        <th>비밀번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPw" id="User_Pwd" name="User_Pwd" size="55" maxlength="12" placeholder="비밀번호" ></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPwChk" size="55" maxlength="12" placeholder="비밀번호 확인"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
                    </tr>
                    <tr>
                        <th>성별<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                        <label><input type="radio" id="Std_Gender" name="Std_Gender" value="남자">남자</label>
                        &nbsp;
                        <label><input type="radio" id="Std_Gender" name="Std_Gender" value="여자" checked>여자</label></td>
                    </tr>
                    <tr>
                        <th>휴대폰<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                            <select  id="Std_Phone1" name="Std_Phone1">
                                <option value="010" selected>010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            -
                            <input type="text" id="Std_Phone2" name="Std_Phone2" size="15" maxlength="4">
                            -
                            <input type="text" id="Std_Phone3" name="Std_Phone3" size="15" maxlength="4">
                        </td>
                    </tr>
                    <tr>
                    	<th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    	<td colspan="2"><input type="email" id="email" id="User_Email" name="User_Email" size="55" maxlength="80" onfocus="focus()"></td>
                    </tr>
                    <tr>
                        <th>우편번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="sample4_postcode" id="Std_Addr1" name="Std_Addr1" placeholder="우편번호"></td>
                        <td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호찾기" style="border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;"></td>
                    </tr>
                    <tr>
                        <th>주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text"  id="sample4_roadAddress" id="Std_Addr2" name="Std_Addr2" size="55" placeholder="도로명주소"></td>
                    </tr>
                    <tr>
                        <th>상세주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="std_addr_sub" id="Std_Addr3" name="Std_Addr3" size="55" maxlength="12"  placeholder="상세주소"></td>
                    </tr>
                </table>
                   <button type="submit" style="height: 40px; width:150; margin-top: 20px; margin-bottom: 30px; border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;">회원가입</button>
            </form>
		</div>
	</div>
</div>
<!-- 최지혜 추가 -->   		
        <!-- 아이콘 -->

        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->

<!--
   *** BLOG HOMEPAGE ***
   _________________________________________________________
   -->
<!-- <div id="new" class="box text-center mb-0">
    <div class="container">
        <div class="col-md-12">
            <h3 class="text-uppercase">From our blog</h3>
            <p class="lead mb-0">What's new in the world of fashion? <a href="blog.jsp">Check our blog!</a></p>
        </div>
    </div>
</div> -->
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
<!-- /.container-->
<!-- *** BLOG HOMEPAGE END ***-->
<!--
*** FOOTER ***
_________________________________________________________
-->
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
<script type="text/javascript" src="../resource/js/std_join.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- if script tag don't have src="jquery", password text can't see. -->
<script type="text/javascript"> 
        // 비밀번호 확인 소스
        $('#userPw').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPwChk !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            }else if(userPw != "" && userPwChk==""){
                pwdcheck.text('비밀번호 확인를 입력해주세요').css('color', 'blue');
            }else if (userPw != userPwChk) {
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }

        });

        $('#userPwChk').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPw !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            } else if(userPwChk != "" && userPw==""){
                pwdcheck.text('비밀번호를 입력해주세요').css('color', 'blue');
            }else if(userPw != userPwChk){
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }
        });


        function checkPw() {
            var userPw = $('#userPw').val();
            var userPw = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');
            if (userPw == userPwChk) {
                joinform.submit();
            } else {
                /* pwdcheck.text('비밀번호가 다릅니다').css('color', 'red'); *!/ /!* 위에서 출력하고 있는데 한번더 출력할 필요 없음 */
                alert('입력하신 비밀번호가 다릅니다 확인해주세요.')
            }
        }   

  function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function (e) {
       $('#image_section').attr('src', e.target.result);
    }

       reader.readAsDataURL(input.files[0]);
       }
    }

      $("#imgInput").change(function(){
        readURL(this);
  });
      

      
      function fn_idChk(){
      	$.ajax({
      		url : "/student/idChk",
      		type : "post",
      		dataType : "json",
      		data : {"User_Id" : $("#User_Id").val()},
      		success : function(data){
      			if(data == 1){
      				alert("중복된 아이디입니다.");
      			}else if(data == 0){
      				$("#idChk").attr("value", "Y");
      				alert("사용가능한 아이디입니다.");
      			}
      		}
      	})
      }
</script>
<!-- JavaScript files--> 
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../resource/js/front.js"></script> 
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>스터디어스 - 세상을 뒤흔들어라</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- <link rel="stylesheet" type="text/css" href="../resource/css/terms_jihye.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="../resource/css/std_join.css"> -->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
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
        text-align: center;
        background-color: #fff;
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
	  min-height: 60vh; 
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
        
       /* input {
            background-color: #eee;
            border: none; // 그림자 제거 
            padding: 12px 15px;
            margin: 8px 0; // 위아래 간격 
        }

        #header ul li a:hover{
            background-color: #6c80b2; // 마우스 올리면 배경색 바뀜 
            color:#dddddd;
        }

        th#student {

        }

        div#join {
            padding-top: 30px;
            padding-bottom: 20px;
        }

        button#joinb:hover {
            color: #3c97bf;
            cursor: pointer; // mouse shape turn finger
            background-color: #eeeeee;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            color: #3c97bf;
        } */

        th {
            border: 1px solid #bbbbbb;
            color: #888888;
        }

        td {
            padding-left: 10px;
            border: 1px solid #bbbbbb;
        }

</style>
<body>
<!-- navbar-->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top">
        <div class="container"> 
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">모두를 위한 스터디카페</a></div>
                <div class="col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0">
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<p class="list-inline-item">${std.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="student/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm" method="get" action="/student/std_info">
				                <input type="hidden" value="${std.std_Profile}" readonly="readonly">
				                <input type="hidden" value="${std.std_Pwd_Qs}" readonly="readonly">
				                <input type="hidden" value="${std.std_Pwd_As}" readonly="readonly">
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
				                <input type="hidden" value="${teach.teach_Pwd_Qs}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Pwd_As}" readonly="readonly">
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
                        <li class="list-inline-item"><a href="/admin/adminmanage" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="/admin/terms2" class="text-black-50 font-weight-bold">이용약관</a></li> -->                       
                    </ul>
                </div>
            </div>
        </div> 
        <div class="row">
	        <div id="myModal" class="modal fade" tabindex="-1">
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
        <div class="container"><a href="/" class="navbar-brand home"><img src="../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="../resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
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
                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</header>
<div id="all">
    <div id="content">
<!-- 최지혜 추가 -->  
		<div class="table-responsive">
        	<form role="form" method="post" autocomplete="off"><br><br>
            	<table class="table" style="margin: auto; width: 70%;" cellspacing="0"> <!-- 일반 회원가입 폼 -->
                	<tr>
                        <th id="student" colspan="3" style="background-color: #eeeeee; height: 50px; color: #888888;">학생 회원가입</th>
                    </tr>
                    
                    <tr>
                        <td id="avatar" style="height: 140px; width: 100px; padding: 0px;"><img id="image_section" style="height: 140px; display: block; margin: 0px auto;" src="//sb-cafetalk.s3.amazonaws.com/user-uploaded-files/cafetalk-optimized-559cca73cd84d-984180900-1436338803.png"></td>
                        <td colspan="2">
                            <form id="" runat="">
                                <input type='file' id="imgInput" id="Std_Profile" name="Std_Profile"/>
                                <div><em style="font-size: small;">※업로드 가능한 이미지 크기는 150x100 입니다.<br>이미지 크기가 초과할시 업로드 되지 않을 수 있음을 유의바랍니다.</em></div>
                            </form>
                        </td>
                    </tr>                    
                    
                    <tr>
                        <th>아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="User_Id" name="User_Id" size="37" maxlength="40" required oninvalid="this.setCustomValidity('필수입력사항 입니다.')" >
						</td>
                        <td><button type="button" class="idCheck" onclick="fn_idChk();" style="border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;">아이디 중복확인</button></td>
                    </tr>
                    <tr>
                        <th>비밀번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPw" id="User_Pwd" name="User_Pwd" size="55" maxlength="12" placeholder="비밀번호" ></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPwChk" size="55" maxlength="12" placeholder="비밀번호 확인"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
                    </tr>
                    <tr>
                        <th>성별<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                        <label><input type="radio" id="Std_Gender" name="Std_Gender" value="남자">남자</label>
                        &nbsp;
                        <label><input type="radio" id="Std_Gender" name="Std_Gender" value="여자" checked>여자</label></td>
                    </tr>
                    <tr>
                        <th>휴대폰<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                            <select  id="Std_Phone1" name="Std_Phone1">
                                <option value="010" selected>010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            -
                            <input type="text" id="Std_Phone2" name="Std_Phone2" size="15" maxlength="4">
                            -
                            <input type="text" id="Std_Phone3" name="Std_Phone3" size="15" maxlength="4">
                        </td>
                    </tr>
                    <tr>
                    	<th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    	<td colspan="2"><input type="email" id="email" id="User_Email" name="User_Email" size="55" maxlength="80" onfocus="focus()"></td>
                    </tr>
                    <tr>
                        <th>우편번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="sample4_postcode" id="Std_Addr1" name="Std_Addr1" placeholder="우편번호"></td>
                        <td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호찾기" style="border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;"></td>
                    </tr>
                    <tr>
                        <th>주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text"  id="sample4_roadAddress" id="Std_Addr2" name="Std_Addr2" size="55" placeholder="도로명주소"></td>
                    </tr>
                    <tr>
                        <th>상세주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="std_addr_sub" id="Std_Addr3" name="Std_Addr3" size="55" maxlength="12"  placeholder="상세주소"></td>
                    </tr>
                </table>
                   <button type="submit" style="height: 40px; width:150; margin-top: 20px; margin-bottom: 30px; border-radius: 10px; background-color: #5fa29480; border: 0; outline: 0; color: #fff;">회원가입</button>
            </form>
		</div>
	</div>
</div>
<!-- 최지혜 추가 -->   		
        <!-- 아이콘 -->

        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->

<!--
   *** BLOG HOMEPAGE ***
   _________________________________________________________
   -->
<!-- <div id="new" class="box text-center mb-0">
    <div class="container">
        <div class="col-md-12">
            <h3 class="text-uppercase">From our blog</h3>
            <p class="lead mb-0">What's new in the world of fashion? <a href="blog.jsp">Check our blog!</a></p>
        </div>
    </div>
</div> -->
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
<!-- /.container-->
<!-- *** BLOG HOMEPAGE END ***-->
<!--
*** FOOTER ***
_________________________________________________________
-->
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
<script type="text/javascript" src="../resource/js/std_join.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- if script tag don't have src="jquery", password text can't see. -->
<script type="text/javascript"> 
        // 비밀번호 확인 소스
        $('#userPw').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPwChk !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            }else if(userPw != "" && userPwChk==""){
                pwdcheck.text('비밀번호 확인를 입력해주세요').css('color', 'blue');
            }else if (userPw != userPwChk) {
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }

        });

        $('#userPwChk').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPw !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            } else if(userPwChk != "" && userPw==""){
                pwdcheck.text('비밀번호를 입력해주세요').css('color', 'blue');
            }else if(userPw != userPwChk){
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }
        });


        function checkPw() {
            var userPw = $('#userPw').val();
            var userPw = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');
            if (userPw == userPwChk) {
                joinform.submit();
            } else {
                /* pwdcheck.text('비밀번호가 다릅니다').css('color', 'red'); *!/ /!* 위에서 출력하고 있는데 한번더 출력할 필요 없음 */
                alert('입력하신 비밀번호가 다릅니다 확인해주세요.')
            }
        }   

  function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function (e) {
       $('#image_section').attr('src', e.target.result);
    }

       reader.readAsDataURL(input.files[0]);
       }
    }

      $("#imgInput").change(function(){
        readURL(this);
  });
      

      
      function fn_idChk(){
      	$.ajax({
      		url : "/student/idChk",
      		type : "post",
      		dataType : "json",
      		data : {"User_Id" : $("#User_Id").val()},
      		success : function(data){
      			if(data == 1){
      				alert("중복된 아이디입니다.");
      			}else if(data == 0){
      				$("#idChk").attr("value", "Y");
      				alert("사용가능한 아이디입니다.");
      			}
      		}
      	})
      }
</script>
<!-- JavaScript files--> 
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../resource/js/front.js"></script> 
</body>
>>>>>>> branch 'HRnJIHYEnMSTER' of https://github.com/sophying/WATO.git
</html>