<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body class="m-0 p-0">


	<table class="table table-striped">
  <thead>
  <tr>	
  	<td>
  		현재 로그인 사용자 : &nbsp;&nbsp;&nbsp;${user.m_user_id }
  	</td>
  </tr>
    <tr>
      <th scope="col">No</th>
      <th scope="col">카테고리</th>
      <th scope="col">난이도</th>
      <th scope="col">인원수</th>
      <th scope="col">주제</th>
      <th scope="col">참여진행</th>
      <th scope="col">생성된 날짜</th>
      <th scope="col">수정된 날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody> 
  <c:forEach items="${studylist}" var="studylist">
    <tr>
      <th scope="row">${studylist.s_no}</th>
      <td><a href="study_DetailRead?s_no=${studylist.s_no}">${studylist.s_category}</a></td>
 <%--      <td><a href="study_DetailRead?s_no=${studylist.s_no}&p_userid=HR">${studylist.s_category}</a></td> --%>
      <td>${studylist.s_level}</td>
      <td>${studylist.s_people}</td>
      <td>${studylist.s_title}</td>
      <td>${studylist.s_parti} / ${studylist.s_people }</td>
      <td><fmt:formatDate value="${studylist.s_creadate}" pattern="yyyy-MM-dd"/></td>
      <td><fmt:formatDate value="${studylist.s_updatedate}" pattern="yyyy-MM-dd"/></td>
      <td>${studylist.s_viewcnt}</td> 
    </tr>
  </c:forEach>  
  </tbody>
</table>
</body>
</html>