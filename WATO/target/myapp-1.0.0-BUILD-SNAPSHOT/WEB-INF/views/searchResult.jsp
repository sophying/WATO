<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 -->
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/nav-bar.css">
</head> 
<body>
	<%@ include  file="./nav-bar.jsp"%>
	<div class="container">
		<section>
			<h2>글 목록</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>글 번호</th><th>글 제목</th><th>작성자</th><th>작성일자</th>
					</tr>
				</thead>
				<tbody>
					<!-- 목록시작 -->
					<c:forEach items="${list}" var="list">
					<tr>
						<td>${list.bno}</td>  
						<td>
							<a href="/board/read?bno=${list.bno}&page=${scri.page}
																&perPageNum=${scri.perPageNum}
																&searchType=${scri.searchType}
																&keyword=${scri.keyword}">${list.title }
							</a>
						</td>
						<td>${list.writer}</td>
						<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
					</tr>
					</c:forEach>
					<!-- 목록 끝 -->
				</tbody>
			</table>
		</section>
	</div>

</body>
</html>