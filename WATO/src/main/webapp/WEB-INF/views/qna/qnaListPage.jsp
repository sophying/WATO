<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <td><a href="/board/getQnaRead/${getQnaList.QNA_BNO}">${getQnaList.QNA_TITLE}</a></td>
            <td>${getQnaList.QNA_WRITER}</td>
            <td><fmt:formatDate value="${getQnaList.QNA_REGDATE}" pattern="yyyy-MM-dd"/></td>
        </tr>
        </c:forEach>
<!-- 목록 끝 -->
        </table>
    </section>
</div>
<%@include file="include/footer.jsp"%>
</body>
</html>
