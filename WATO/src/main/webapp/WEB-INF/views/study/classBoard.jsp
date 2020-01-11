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


<form  name="classForm"class="form-horizontal" role="form" method="post" action="/study/teacherEnroll.do">
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">카테고리</th>
      <th scope="col">난이도</th>
      <th scope="col">인원수</th>
      <th scope="col">주제</th>
      <th scope="col">생성된 날짜</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${classlist}" var="classlist">
    <tr>
      <th scope="row">${classlist.t_no}</th>
      <td><a href="detailRead?t_no=${classlist.t_no}">${classlist.t_category}</a></td>
      <td>${classlist.t_level}</td>
      <td>${classlist.t_people}</td>
      <td>${classlist.t_title}</td>
      <td><fmt:formatDate value="${classlist.t_creatdate}" pattern="yyyy-MM-dd"/></td>
    </tr>
  </c:forEach>  
  </tbody>
</table>
</form>
</body>
</html>