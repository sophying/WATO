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
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
  <style>
    #table{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
        border: none;
        margin-bottom: 0;
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
<%@include file="include/header.jsp"%>
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
        <c:forEach items="${getQnaList}" var="getQnaList">
        <tr>
            <td>${getQnaList.QNA_BNO}</td>
            <td><a href="/qna/getQnaRead?QNA_BNO=${getQnaList.QNA_BNO}">${getQnaList.QNA_TITLE}</a></td>
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
</html>
