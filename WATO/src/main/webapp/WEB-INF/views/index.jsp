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
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="./resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="./resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="./resource/vendor/owl.carousel/assets/owl.carousel.css"> 
    <link rel="stylesheet" href="./resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="./resource/css/style.default.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes--> 
    <link rel="stylesheet" href="./resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]--> 
    <link rel="icon" type="image/png" href="./resource/images/icons/favicon.ico"/>
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
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div>
                <div class="col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0">
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null || teach != null}">
                        	<p class="list-inline-item">${std.user_Id}${teach.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="sign_up/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm" method="get" action="/sign_up/std_info">
				                <input type="hidden" value="${login.std_Profile}" readonly="readonly">
				                <input type="hidden" value="${login.std_Pwd_Qs}" readonly="readonly">
				                <input type="hidden" value="${login.std_Pwd_As}" readonly="readonly">
				                <input type="hidden" value="${login.std_Gender}" readonly="readonly">
				                <input type="hidden" value="${login.std_Email}" readonly="readonly">
								<input type="hidden" value="${login.std_Phone1}" readonly="readonly">
								<input type="hidden" value="${login.std_Phone2}" readonly="readonly">
								<input type="hidden" value="${login.std_Phone3}" readonly="readonly">
								<input type="hidden" value="${login.std_Addr1}" readonly="readonly">
								<input type="hidden" value="${login.std_Addr2}" readonly="readonly">
								<input type="hidden" value="${login.std_Addr3}" readonly="readonly">
				                <%-- <input type="hidden" value="${teach.teach_Profile}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Pwd_Qs}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Pwd_As}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Gender}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Email}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone3}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr3}" readonly="readonly"> --%>
                        	<a href="javascript:document.myForm.submit();" class="text-black-50 font-weight-bold">내정보수정</a>
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
								<button class="close-button" data-dismiss="myModal">&times;</button> 
								<div class="container-login100">   
									<%@ include  file="sign_up/loginform.jsp"%> 
								</div>
							</div>  
						</div> 	                		
	            	</div>
	        	</div>
	    	</div>
    	</div>
        <%-- <div class="row"> 
			<div class="modal fade" id="modal" tabindex="-1"> 
				<div class="modal-dialog modal-lg">  
					<div class="modal-content" style="background: none; border: 0px">   
						<div class="modal-body"> 
							<div class="limiter">
								<button class="close-button" data-dismiss="modal">&times;</button> 
								<div class="container-login100">   
										<%@ include  file="sign_up/loginform.jsp"%>
								</div>
							</div>  
						</div> 
					</div>
				</div>
			</div> 
		</div> --%>
        <!-- *** TOP BAR END ***-->

 
    </div> 
    <nav id="studyusnav" class="navbar navbar-expand-lg">  
        <div class="container"><a href="/" class="navbar-brand home"><img src="./resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="./resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
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
                <div class="banner"><a href="#"><img src="./resource/images/banner.jpg" alt="" class="img img-fluid"></a></div>
                <div class="banner"><a href="#"><img src="./resource/images/banner2.jpg" alt="" class="img img-fluid"></a></div>
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
        <header>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <!-- Slide One - Set the background image for this slide in the line below -->
                    <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/LAaSoL0LrYs/1920x1080')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">First Slide</h2>
                            <p class="lead">This is a description for the first slide.</p>
                        </div>
                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('https://source.unsplash.com/bF2vsubyHcQ/1920x1080')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Second Slide</h2>
                            <p class="lead">This is a description for the second slide.</p>
                        </div>
                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('https://source.unsplash.com/szFUQoyvrxM/1920x1080')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Third Slide</h2>
                            <p class="lead">This is a description for the third slide.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>
        <!-- 아이콘 -->
        <div id="icon" class="box text-center mt-0 mb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/c.png"><br/><span class="text">c언어</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/cpp.png"><br/><span class="text">c++언어</span></a>  
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/java.png"><br/><span class="text">자바</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/javascript.png"><br/><span class="text">자바스크립트</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/python.png"><br/><span class="text">파이썬</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/android.png"><br/><span class="text">안드로이드</span></a>
                    </div>
                </div> 
                <div class="row">
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/c.png"><br/><span class="text">c언어</span></a>
                    </div>
                    <div class="col-lg-2"> 
                        <a href="blog.jsp"><img src="./resource/images/cpp.png"><br/><span class="text">c++언어</span></a>  
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/java.png"><br/><span class="text">자바</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/javascript.png"><br/><span class="text">자바스크립트</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/python.png"><br/><span class="text">파이썬</span></a>
                    </div>
                    <div class="col-lg-2">
                        <a href="blog.jsp"><img src="./resource/images/android.png"><br/><span class="text">안드로이드</span></a>
                    </div>
                </div> 
            </div>
        </div>
        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
        <div  id="hot">
            <div class="box py-4 mt-0">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="mb-0">이주의 핫한 교실</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="product-slider owl-carousel owl-theme">
                	<%int i = 1;%>
                	<c:forEach items="${listRank}" var="listRank">
                	<div style="position: relative;"> 
                		<div class="imgrank">
									<%if(i== 1){ %> 
										<img alt="1등이미지" src="./resource/images/rank1st.png"> 
									<%}else if( i ==2) {%>
										<img alt="2등이미지" src="./resource/images/rank2st.png"> 
									<%}else if( i ==3) {%>
										<img alt="3등이미지" src="./resource/images/rank3st.png">
									<%}else if( i ==4) { %>
										<img alt="4등이미지" src="./resource/images/rank4st.png">
									<%}else{ %>
										<img alt="5등이미지" src="./resource/images/rank5st.png">
									<%} %>
						</div>
                    <div class="item">
                        <div class="product">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front"><a href="detail.jsp"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a></div>
                                    <div class="back"><a href="detail.jsp"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a></div>
                                </div>
                            </div><a href="detail.jsp" class="invisible"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a>
                            <div class="text">
                                <h3><a href="detail.jsp">${listRank.title}</a></h3>
                                <p class="price"> 
                                    <del></del><a href="#" class="btn btn-primary" >상세보기</a>
                                </p>
                            </div> 
                        </div>
                    </div>
                    </div>
                    <% i++; %>
                    </c:forEach>
                          <!--     /.text
                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            /.ribbon
                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div> -->
                            <!-- /.ribbon-->
                            <!-- <div class="ribbon gift"> GIFT 표시
                                <div class="theribbon">GIFT</div>
                                <div class="ribbon-background"></div>
                            </div> -->
                    <!-- /.product-slider-->
                </div>
                <!-- /.container-->
            </div>
            <!-- /#hot-->
            <!-- *** HOT END ***-->
        </div>
        <div  id="hot">
            <div class="box py-4 mt-0">
                <div class="container"> 
                    <div class="row"> 
                        <div class="col-md-12"> 
                            <h2 class="mb-0">이번달 베스트 강사</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="product-slider owl-carousel owl-theme">
                	<%int j = 1;%>
                	<c:forEach items="${listRank}" var="listRank"> 
                	<div style="position: relative;"> 
                		<div class="imgrank">
									<%if(j== 1){ %> 
										<img alt="1등이미지" src="./resource/images/rank1st.png"> 
									<%}else if( j ==2) {%>
										<img alt="2등이미지" src="./resource/images/rank2st.png"> 
									<%}else if( j ==3) {%>
										<img alt="3등이미지" src="./resource/images/rank3st.png">
									<%}else if( j ==4) { %>
										<img alt="4등이미지" src="./resource/images/rank4st.png">
									<%}else{ %>
										<img alt="5등이미지" src="./resource/images/rank5st.png">
									<%} %>
						</div>
                    <div class="item">
                        <div class="product">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front"><a href="detail.jsp"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a></div>
                                    <div class="back"><a href="detail.jsp"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a></div>
                                </div>
                            </div><a href="detail.jsp" class="invisible"><img src="./resource/images/cstudy-1.png" alt="" class="img-fluid"></a>
                            <div class="text">
                                <h3><a href="detail.jsp">${listRank.title}</a></h3>
                                <p class="price"> 
                                    <del></del><a href="#" class="btn btn-primary" >상세보기</a>
                                </p>
                            </div> 
                        </div>
                    </div>
                    </div>
                    <% j++; %>
                    </c:forEach>
                          <!--     /.text
                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            /.ribbon
                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div> -->
                            <!-- /.ribbon-->
                            <!-- <div class="ribbon gift"> GIFT 표시
                                <div class="theribbon">GIFT</div>
                                <div class="ribbon-background"></div>
                            </div> -->
                    <!-- /.product-slider-->
                </div>
                <!-- /.container-->
            </div>
            <!-- /#hot-->
            <!-- *** HOT END ***-->
        </div>

    </div>
</div>
<!--
   *** BLOG HOMEPAGE ***
   _________________________________________________________
   -->
<div id="new" class="box text-center mb-0">
    <div class="container">
        <div class="col-md-12">
            <h3 class="text-uppercase">From our blog</h3>
            <p class="lead mb-0">What's new in the world of fashion? <a href="blog.jsp">Check our blog!</a></p>
        </div>
    </div>
</div>
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
<!-- JavaScript files--> 
<script src="./resource/vendor/jquery/jquery.min.js"></script>
<script src="./resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="./resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="./resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="./resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="./resource/js/front.js"></script> 
</body>
</html>