<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <%
        // 인코딩
        request.setCharacterEncoding("UTF-8");
    %>

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../resource/admin/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="../resource/admin/css/custom.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/admin/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../resource/admin/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../resource/admin/admin/img/favicon.png?3">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script src="../../../resource/vendor/jquery/jquery.min.js"></script>
    <script src="../../../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../../../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="../../../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>

    <title>StudyUs</title>
    <style>
        #pagecount {
            text-align: center;
        }
        li{
            display: inline-block; zoom: 1; display: inline;
        }

    </style>
</head>
<body>
<%@include file="../include_admin/admin_navbar.jsp"%> 
    <div class="pull-left" style="display: inline-block; width: 200px;"> 
   	  	<%@include file="../include_admin/admin_sidebar.jsp"%>
    </div>  
<div id="table" class="container" style="margin-left:5%; width:70%; display: inline-block;"> 
    <section style="position: absolute; top: 15%; width: 80%; ">    
        <h2 style="display: inline-table">글목록</h2> 
        <table class="table table-hover">
            <thead>
            <tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일자</th></tr>  
            </thead>
            <!-- 목록 시작 -->
            <c:forEach items="${admin_qna_list}" var="admin_qna_list">
                <tr>
                    <td>${admin_qna_list.QNA_BNO}</td>
                    <c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                    </c:if>
                    <td><a href="/admin/admin_qna_read?QNA_BNO=${admin_qna_list.QNA_BNO}">${admin_qna_list.QNA_TITLE}</a></td>
                    <td>${admin_qna_list.QNA_WRITER}</td>
                    <td><fmt:formatDate value="${admin_qna_list.QNA_REGDATE}" pattern="yyyy-MM-dd"/></td>
                </tr>
            </c:forEach>
            <!-- 목록 끝 -->
        </table>
        <div id="searchform" class="search container">
            <button style="float: right;" id="searchBtn" type="button">검색</button>
            <input style="float: right;" type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
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
                        self.location = "admin_qna_list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
                    });
                });
            </script>
        </div>
        <br><br>
        <div id="pagecount" class="container mb-0">
            <ul>
                <c:if test="${pageMaker.prev}">
                    <li><a href="admin_qna_list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                    <li><a href="admin_qna_list${pageMaker.makeSearch(idx)}">${idx}</a></li>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    <li><a href="admin_qna_list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
                </c:if>
            </ul>
        </div>
    </section>
</div> 
<div style="position: fixed; bottom: 0px; width: 100%;">
<%@include file="../include_admin/admin_footer.jsp"%>
</div>
</body>
</html>