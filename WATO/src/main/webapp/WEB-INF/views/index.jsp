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
	 <script src="./resource/vendor/jquery/jquery.min.js"></script> 
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
	.button2 {
	  display: inline-block; 
	  font-size: 20px;  
	  padding:0px .5em;  
	  border-radius: 5px;
	  transition: all .5s; 
	  filter: hue-rotate(0deg);
	  color: #FFF;
	  text-decoration: none;
	}
  .b-orange, .b-orange:before {
    background: rgba(255,193,7,1);
    background: -moz-linear-gradient(45deg, rgba(255,193,7,1) 0%, rgba(255,87,34,1) 100%);
    background: -webkit-gradient(left bottom, right top, color-stop(0%, rgba(255,193,7,1)), color-stop(100%, rgba(255,87,34,1)));
    background: -webkit-linear-gradient(45deg, rgba(255,193,7,1) 0%, rgba(255,87,34,1) 100%);
    background: -o-linear-gradient(45deg, rgba(255,193,7,1) 0%, rgba(255,87,34,1) 100%);
    background: -ms-linear-gradient(45deg, rgba(255,193,7,1) 0%, rgba(255,87,34,1) 100%);
    background: linear-gradient(45deg, rgba(255,193,7,1) 0%, rgba(255,87,34,1) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc107', endColorstr='#ff5722', GradientType=1 );
  }
  .rot-135:hover {
  filter: hue-rotate(135deg);
}
.img-fluid{
	max-height: 140px;
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

        <%@ include file="./include/index_header_MS.jsp" %>

        <div class="row">
	        <div id="myModal" class="modal fade" tabindex="-1"> <!-- tabindex -1 는 클로즈 키 -->
	        	<div class="modal-dialog modal-lg">
	            	<div class="modal-content" style="background: none; border: 0px">
	            		<div class="modal-body"> 
							<div class="limiter">
								<!-- <button class="close-button" data-dismiss="myModal">&times;</button>  -->
								<div class="container-login100">   
									<%@ include  file="admin/loginform.jsp"%> 
								</div>
							</div>  
						</div> 	                		
	            	</div>
	        	</div>
	    	</div>
    	</div>

 
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
                                            <c:choose>
	                                            <c:when test="${std != null  }">
	                                            	<li class="nav-item"><a href="/study/studentEnroll" class="nav-link">일반스터디등록</a></li>
	                                            </c:when>
	                                            <c:when test="${teach != null  }">
	                                            	<li class="nav-item"><a href="/study/teacherEnroll" class="nav-link">강의등록</a></li>
	                                            </c:when>
                                            </c:choose>
                                            <li class="nav-item"><a href="/study/studyBoard" class="nav-link">스터디탐방</a></li>
                                            <li class="nav-item"><a href="/study/classBoard" class="nav-link">강의탐방</a></li>
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
                <!-- 메인 search 폼  -->
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
<!-- 메인페이지 슬라이드쇼 -->
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
                    <div class="carousel-item active" style="background-image: url('./resource/images/javascriptlogo.jpg">
                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('./resource/images/pythonlogo.png">
                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('./resource/images/Golang_main.png')">
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
        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
        <!-- 메인페이지 language rank  -->
        <div  id="hot">
            <div class="box py-4 mt-0">
                <div class="container">
                    <div class="row">
                            <nav id="studyusnav" class="navbar w-100 pb-3 ">  
								<div class="container w-100 my-auto" style="text-align: center;">
									<iframe style="width: 100%;  border: none;" src="/board/clock"></iframe> 
								</div>
							</nav> 
                        <div class="col-md-12 mt-4">
                            <h2 class="mb-0 text-center"><span style="font-weight: bold;">Best Programming Language</span></h2>
                        </div> 
                    </div>
                </div> 
            </div>
            <div class="container"> 
                <div class="product-slider owl-carousel owl-theme">
                	<%int q = 1;%>
                	<c:forEach items="${languagerank}" var="languagerank"> 
                	<div style="position: relative;"> 
                		<div class="imgrank">
									<%if(q== 1){ %> 
										<img alt="1등이미지" src="./resource/images/rank1st.png"> 
									<%}else if( q ==2) {%>
										<img alt="2등이미지" src="./resource/images/rank2st.png"> 
									<%}else if( q ==3) {%>
										<img alt="3등이미지" src="./resource/images/rank3st.png">
									<%}else if( q ==4) { %>
										<img alt="4등이미지" src="./resource/images/rank4st.png">
									<%}else if( q ==5){ %>
										<img alt="5등이미지" src="./resource/images/rank5st.png">
									<%} %>
						</div>
                    <div class="item"> 
                        <div class="product"> 
                            <div class="flip-container"> 
                                <div class="flipper" onclick="javascript:imagesfunction(this)">
                                    <div class="front"><a><img src='${languagerank.language_image}' alt="" class="img-fluid"></a></div>
                                    <div class="back"><a><img src='${languagerank.language_image}' alt="" class="img-fluid"></a></div>
                                </div>
                                <span style="display: none;">${languagerank.language_name}</span>
                            </div><a href="/board/searchResult/${languagerank.language_name}" class="invisible"><img src='${languagerank.language_image}' alt="" class="img-fluid"></a>
                            <div class="text">  
                                <h3><span>${languagerank.language_name}</span></h3> 
                                
                            </div> 
                        </div>
                    </div>  
                    </div>
                    <% q++; %>
                    </c:forEach> 
                    <script type="text/javascript"> 
                    //c#으로는 controller에 전달되지 않아 다른 이름으로 전달 한 후 c#으로 다시변경한 후 검색
						function imagesfunction(event) {
							var language = $(event).next().text();
							if(language == "C#"){
								language ="Ccrosshatch"; 
							}  
							location.href = '/board/searchResult/'+language;
						}
                    </script>
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
            </div>
        </div>
        <!-- 메인페이지 스터디 랭킹 -->
        <div  id="hot">
            <div class="box py-4 mt-0">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="mb-0"><span style="font-weight: bold;">This Week Popular Study TOP10</span></h2>
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
									<%}else if (i == 5){ %>
										<img alt="5등이미지" src="./resource/images/rank5st.png">
									<%} %>
						</div>  
                    <div class="item">
                        <div class="product"> 
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front"><a href="/study/study_DetailRead?s_no=${listRank.s_no}"><img src="${listRank.s_photo.substring(1)}" alt="" class="img-fluid"></a></div>
                                    <div class="back"><a href="/study/study_DetailRead?s_no=${listRank.s_no}"><img src="${listRank.s_photo.substring(1)}" alt="" class="img-fluid"></a></div>
                                </div>
                            </div><a href="/study/study_DetailRead?s_no=${listRank.s_no}" class="invisible"><img src="${listRank.s_photo.substring(1)}" alt="" class="img-fluid"></a>
                            <div class="text">
                                <h3>${listRank.s_title}</h3> 
                                <p class="price"> 
                                    <del></del><a href="/study/study_DetailRead?s_no=${listRank.s_no}">Details</a> 
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
        <!-- 인기있는 강사 순위 -->
        <div  id="hot">
            <div class="box py-4 mt-0">
                <div class="container"> 
                    <div class="row"> 
                        <div class="col-md-12"> 
                            <h2 class="mb-0"><span style="font-weight: bold;">This Month Best Professor</span></h2>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="container">
                <div class="product-slider owl-carousel owl-theme">
                	<%int j = 1;%>
                	<c:forEach items="${tearstudy}" var="tearstudy"> 
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
									<%}else if ( j == 5){ %>
										<img alt="5등이미지" src="./resource/images/rank5st.png">
									<%} %>
						</div>
                    <div class="item">
                        <div class="product">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front"><a href="/study/header_DetailRead?t_no=${tearstudy.t_no}"><img src="${tearstudy.t_photo}" alt="" class="img-fluid"></a></div>
                                    <div class="back"><a href="/study/header_DetailRead?t_no=${tearstudy.t_no}"><img src="${tearstudy.t_photo}" alt="" class="img-fluid"></a></div>
                                </div>
                            </div><a href="/study/header_DetailRead?t_no=${tearstudy.t_no}" class="invisible"><img src="${tearstudy.t_photo}" alt="" class="img-fluid"></a>
                            <div class="text">
                                <h3>${tearstudy.t_title}</h3>
                                <p class="price">  
                                    <del></del><a href="/study/header_DetailRead?t_no=${tearstudy.t_no}">Details</a>
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

<div class="box text-center mb-3" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">페이지 정보</h4>
                <ul class="list-unstyled">
                    <li><a href="text.html">회사소개</a></li>
                    <li><a href="text.html">이용약관</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a href="/qna/getQnaList">문의하기</a></li>
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
<script src="./resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="./resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="./resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="./resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="./resource/js/front.js"></script> 
</body>
</html>