<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!-- Tweaks for older IEs--><!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<link rel="icon" type="image/png" href="../../resource/images/icons/favicon.ico"/>
<script src="../../resource/vendor/jquery/jquery.min.js"></script>
<script src="../../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../../resource/js/front.js"></script>
<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-16
  Time: PM 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
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
    #table{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
        border: none;
        margin-bottom: 0;
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
    #pagecount {
        text-align: center;
    }
    li{
        display: inline-block; zoom: 1; display: inline;
    }
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
        <div class="container"><a href="/" class="navbar-brand home"><img src="/resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="./resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
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
<div id="table" class="container box">
    <section>
        <h2 style="display: inline-table">글목록</h2>
        <button style="float: right; margin-bottom: 1px;" class="btn btn-success">
            <a style="color: white;" href="/qna/getQnaWrite">글작성</a></button>
        <table class="table table-hover">
            <thead>
            <tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일자</th></tr>
            </thead>
            <!-- 목록 시작 -->
        <c:forEach items="${getQnaList}" var="getQnaList" varStatus="status">
        <tr>
            <td>${getQnaList.QNA_BNO}</td>
            <c:if test="${std != null || teach != null}">
                <td><a href="/qna/getQnaRead?QNA_BNO=${getQnaList.QNA_BNO}">${getQnaList.QNA_TITLE}</a></td>
            </c:if>
            <c:if test="${teach == null && std == null }">
            <td><a href="#" onclick="NonMembers()">${getQnaList.QNA_TITLE}</a></td>
            </c:if>
            <td>${getQnaList.QNA_WRITER}</td>
            <td><fmt:formatDate value="${getQnaList.QNA_REGDATE}" pattern="yyyy-MM-dd"/></td>
        </tr>
        </c:forEach>
<!-- 목록 끝 -->
        </table>
        <div id="searchform" class="search container">
            <button style="float: right" id="searchBtn" type="button">검색</button>
            <input style="float: right" type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
            <select style="float: right; height: 27px;" id="searchType" name="searchType">
                <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
                <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
                <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
                <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
                <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
            </select>
            <script>
                $(function(){
                    $('#searchBtn').click(function() {
                        self.location = "getQnaList" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
                    });
                });
            </script>
        </div>
        <br><br>
        <div id="pagecount" class="container mb-0">
            <ul>
                <c:if test="${pageMaker.prev}">
                    <li><a href="getQnaList${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                    <li><a href="getQnaList${pageMaker.makeSearch(idx)}">${idx}</a></li>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    <li><a href="getQnaList${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
                </c:if>
            </ul>
        </div>
    </section>
</div>
<%@include file="include/footer.jsp"%>
</body>
<script>
    function NonMembers(){
        alert("회원 전용 게시판입니다. 로그인해주세요");
    }


</script>
</html>
