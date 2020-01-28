<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:if test="${teach != null }">
	<span>현재 유저 : ${teach.user_Id }</span>
</c:if>
<c:if test="${std != null}">
	<span>현재 유저 : ${std.user_Id }</span>
</c:if>

<div class="card col-md-6 ">
  <h5 class="card-header ">나의 스터디 그룹!</h5>
  <div class="card-body">
  <c:choose>
	  <c:when test="${studyParti != null }">
	  <table class="border">
	  	<tr>
	  		<th class="h3 pl-5 pr-5">레벨</th>
	  		<th class=" h3 pl-5 pr-5">카테고리</th>
	  		<th class=" h3 pl-5 pr-5">주제</th>
	  		<th class=" h3 pl-5 pr-5">시작</th>
	  		<th class=" h3 pl-5 pr-5">끝</th>
	  		<th class=" h3 pl-5 pr-5">리더</th>
	  	</tr>
	  </table>
		  <c:forEach var="studyParti" items="${studyParti}">
			  <form action="">
				    <table class="border">
				    	<tr>	
				    		<td>
				    		   ${std.user_Id }
				    		</td>
				    		<td>
				    		   ${studyParti.s_no }
				    		</td>
				    		<td>
				    		   ${studyParti.s_level }
				    		</td>
				    		<td>
				    			${studyParti.s_category }
				    		</td>
				    		<td>
				    			${studyParti.s_title }
				    		</td>
				    		<td>
				    			${studyParti.s_startDate }
				    		</td>
				    		<td>
				    			${studyParti.s_endDate }
				    		</td>
				    		<td>
				    			${studyParti.s_userId }
				    		</td>
				    	</tr>
				    </table>
			    </form>
		    </c:forEach>
	    <a href="#" class="btn btn-primary">Go somewhere</a>
	    </c:when>
	  <%-- <c:otherwise>
	  <table class="border">
	  	<tr>
	  		<th class="h3 pl-5 pr-5">레벨</th>
	  		<th class=" h3 pl-5 pr-5">카테고리</th>
	  		<th class=" h3 pl-5 pr-5">주제</th>
	  		<th class=" h3 pl-5 pr-5">시작</th>
	  		<th class=" h3 pl-5 pr-5">끝</th>
	  		<th class=" h3 pl-5 pr-5">리더</th>
	  	</tr>
	  </table>
		  <c:forEach var="classParti" items="${classParti}">
			  <form action="">
				    <table class="border">
				    	<tr>	
				    		<td>
				    		   ${teach.user_Id }
				    		</td>
				    		<td>
				    		   ${classParti.t_no }
				    		</td>
				    		<td>
				    		   ${classParti.t_level }
				    		</td>
				    		<td>
				    			${classParti.t_category }
				    		</td>
				    		<td>
				    			${classParti.t_title }
				    		</td>
				    		<td>
				    			${classParti.t_startDate }
				    		</td>
				    		<td>
				    			${classParti.t_endDate }
				    		</td>
				    		<td>
				    			${classParti.t_userId }
				    		</td>
				    	</tr>
				    </table>
			    </form>
		    </c:forEach>
	    <a href="#" class="btn btn-primary">Go somewhere</a>
	    </c:otherwise> --%>
	    </c:choose>
  </div>
</div>


</body>
</html>