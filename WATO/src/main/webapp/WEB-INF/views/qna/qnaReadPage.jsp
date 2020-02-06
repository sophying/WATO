<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-16
  Time: PM 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
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
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <!-- include summernote-ko-KR -->
    <script src="../../resource/js/summernote-ko-KR.js"></script>
    <title>Title</title>
    <style>
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
            margin-bottom: 0;
            margin-top: 0;
        }
        .card-header{
            display: none;
        }
           #top{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
        background-color: #e0e0e0;
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
    <form role="form" name="readForm" method="post" autocomplete="off">
        <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
        <div class="form-group">
            <label for="bno" class="col-sm-2 control-label">글 번호</label>
            <div class="col-sm-12">
                <input type="text" id="bno" name="QNA_BNO" class="form-control" value="${getQnaRead.QNA_BNO}" readonly="readonly" />
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">글 제목</label>
            <div class="col-sm-12">
                <input type="text" id="title" name="QNA_TITLE" class="form-control" value="${getQnaRead.QNA_TITLE}" readonly="readonly"  />
            </div>
        </div>
        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">글 내용</label>
            <div class="col-sm-12">
                <textarea id="content" name="QNA_CONTENT" class="summernote" readonly="readonly">${getQnaRead.QNA_CONTENT}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="writer" class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-12">
                <c:if test="${std != null}">
                    <p>${std.user_Id}</p>
                </c:if>
                <c:if test="${teach != null}">
                    <p>${teach.user_Id}</p>
                </c:if>
                <input type="hidden" id="writer" name="QNA_WRITER" class="form-control" value="${getQnaRead.QNA_WRITER}" readonly="readonly" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">작성 날짜</label>
            <div class="col-sm-12">
                <span><fmt:formatDate value="${getQnaRead.QNA_REGDATE}" pattern="yyyy-MM-dd" /></span>
            </div>
        </div>

        <div class="form-group">
            <button type="button" id="list_btn" class="btn btn-primary">
                <a style="color: white;" href="/qna/getQnaList">목록</a></button>
                <c:choose>
                	<c:when test="${std != null }">
                		<c:if test="${ std.user_Id == getQnaRead.QNA_WRITER}">
				           <a href="#" onclick="modify_btn()" class="btn btn-warning" style="color: white;">수정</a>
				            <a href="#" onclick="Deletefunct()" class="btn btn-danger" style="color: white;">삭제</a>
			            </c:if>
                	</c:when>
                	<c:otherwise>
                		<c:if test="${ teach.user_Id == getQnaRead.QNA_WRITER}">
				           <a href="#" onclick="modify_btn()" class="btn btn-warning" style="color: white;">수정</a>
				            <a href="#" onclick="Deletefunct()" class="btn btn-danger" style="color: white;">삭제</a>
                		</c:if>
                	</c:otherwise>
                </c:choose>
        </div>
        <span>파일 목록</span>
        <div class="form-group" style="border: 1px solid #dbdbdb;">
            <form method="post" role="form" name="fileForm">
            <c:forEach var="file" items="${file}">
                <a href="#" id="FILE_DOWN" onclick="fn_fileDown('${file.FILE_NO}');
                return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
            </c:forEach>
            </form>
        </div>
    </form>
</section>
<div id="reply">
    <form method="post" action="/qna/replyUpdate/${getQnaRead.QNA_BNO}" id="replyform">
    <ol class="repList">
        <c:forEach items="${repList}" var="repList">
            <li>
                <p>
                    <c:if test="${!repList.QNA_WRITER.equals('admin')}">
                         <span id="repList_QNA_WRITER" class="glyphicon glyphicon-user">
                                 ${repList.QNA_WRITER}
                         </span>
                    </c:if>
                    <c:if test="${repList.QNA_WRITER.equals('admin')}">
                         <span id="repList_QNA_WRITER" class="glyphicon glyphicon-user">
                                 관리자
                         </span>
                    </c:if>
                    (<fmt:formatDate value="${repList.QNA_REGDATE}" pattern="yyyy-MM-dd" />)
                </p>
                 <textarea name="QNA_CONTENT" class="form-control" readonly >${repList.QNA_CONTENT}</textarea>
                <div class="form-group">
                    <input type="hidden" name="QNA_BNO" value="${repList.QNA_BNO}">
                    <input type="hidden" name="QNA_RNO" value="${repList.QNA_RNO}">
                    
                      <c:choose>
                	<c:when test="${std != null }">
                		<c:if test="${ std.user_Id == repList.QNA_WRITER}">
				              <button type="button" style="color: white;" onclick="replyUpdate_btn(this)" class="btn btn-warning">수정
				              </button>
                    <button type="button"  class="btn btn-danger">
                        <a style="color: white;" 
                        href="/qna/replyDelete/${getQnaRead.QNA_BNO}/${repList.QNA_RNO}" onclick="replyDelete_btn()">
                        삭제</a></button>
			            </c:if>
                	</c:when>
                	<c:otherwise>
                		<c:if test="${ teach.user_Id == repList.QNA_WRITER}">
				            <button type="button" style="color: white;" onclick="replyUpdate_btn(this)" class="btn btn-warning">수정</button>
                    <button type="button"  class="btn btn-danger">
                        <a style="color: white;" 
                        href="/qna/replyDelete/${getQnaRead.QNA_BNO}/${repList.QNA_RNO}" onclick="replyDelete_btn()">삭제</a></button>
                		</c:if>
                	</c:otherwise>
                </c:choose>
                    
                 
                </div>
            </li>
        </c:forEach>
    </ol>
    </form>

       <section class="replyForm">
           <form method="post" autocomplete="off" id="replyWrite">
              <%-- <input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
               <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
               <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
               <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />--%>
               <div class="form-group">
                   <label for="writer" class="col-sm-2 control-label">작성자</label>
                   <div class="col-sm-10">
                       <c:if test="${std != null}">
                           <p>${std.user_Id}</p>
                           <input type="hidden" name="QNA_WRITER" value="${std.user_Id}" class="form-control">
                       </c:if>
                       <c:if test="${teach != null}">
                           <p>${teach.user_Id}</p>
                           <input type="hidden" name="QNA_WRITER" value="${teach.user_Id}" class="form-control">
                       </c:if>
                   </div>
               </div>

               <div class="form-group">
                   <label for="content1" class="col-sm-2 control-label">댓글 내용</label>
                   <div class="col-sm-10">
                       <textarea id="content1" name="QNA_CONTENT" class="form-control"></textarea>
                   </div>
               </div>

               <div class="form-group">
                   <div class="col-sm-offset-2 col-sm-10">
                       <button type="button" id="replyWrite_btn" class="btn-success btn">작성</button>
                   </div>
               </div>
           </form>
       </section>

   </div>


</div>
<%@include file="include/footer.jsp"%>
</body>
<script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']");
    function modify_btn(){
       location.href="/qna/getQnaModify/${getQnaRead.QNA_BNO}";
    };
    // 삭제 버튼 클릭
  /*  $("#delete_btn").click(function(){
        if (confirm("정말로 게시글을 삭제하시겠어요?") == true) {
            formObj.attr("action", "/qna/QnaDelete");
            formObj.submit();
        } else {
        }
    });*/
    function Deletefunct() {
        if (confirm("정말로 게시글을 삭제하시겠어요?") == true) {
            location.href="/qna/QnaDelete/${getQnaRead.QNA_BNO}";
        }
    }
    var replywrite = $("form[id='replyWrite']");;
    $("#replyWrite_btn").click(function() {

        //널 검사
        if ($("#writer1").val()) {

        }
        else if ($("#content1").val().trim() == "") {
            alert("내용을 입력하세요.");
            $("#content1").focus();
            return false;
        }
        else{
            replywrite.attr("action", "/qna/replyWrite/${getQnaRead.QNA_BNO}");
            replywrite.submit();
        }
    })
   /* $("#replyUpdate_btn").click(function(){
        formObj.attr("action", "/qna/replyUpdate");
        formObj.submit();
    });*/
   function replyUpdate_btn(event) {
       if ($(event).text() == "수정"){
           $(event).parent().prev().attr("readOnly", false);
           $(event).text("수정완료");
       }else {
           $(event).parent().prev().attr("readOnly", true);
           $(event).text("수정");
          $('#replyform').submit();
       }

   }
    /*   $("#replyDelete_btn").click(function(){
        if (confirm("정말로 댓글을 삭제하시겠어요?") == true) {
            formObj.attr("action", "/qna/replyDelete");
            formObj.submit();
        } else {
        }
    });*/
    function replyDelete_btn() {
        if (confirm("정말로 댓글을 삭제하시겠어요?") == true) {
            formObj.submit();
            return window.location.reload();
        } else{

        }
    }
    function fn_fileDown(fileNo){
        var formObj = $("form[name='readForm']");
        $("#FILE_NO").attr("value", fileNo);
        formObj.attr("action", "/qna/fileDown");
        formObj.submit();
    }



</script>
<script type="text/javascript">

</script>
<script type="text/javascript">
    $('.summernote').summernote({
        height: 500,
        minHeight: 400,
        maxHeight: null,
        lang : 'ko-KR',
        disableResizeEditor: true,
        onImageUpload: function(files, editor, welEditable) {
            sendFile(files[0], editor, welEditable);
        }
    });
    // 서머노트 쓰기 비활성화
    $('.summernote').summernote('disable');
</script>

</html>
