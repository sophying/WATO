<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover">
   							<thead>
   								<tr>
   									<th>No</th><th>Category</th><th>Title</th><th>Writer</th>  
   								</tr>
   							</thead>
   							<tbody>
   									<c:forEach items="${listStudy}" var="listStudy"> 
										<tr> 
											<td id="moremessge">${listStudy.s_no}</td> 
											<td>${listStudy.s_category}</td> 
											<td><a href="#" style="color: black;">${listStudy.s_title}</a></td>
											<td><a href="#" style="color: black;">${listStudy.s_userId}</a></td>  
										</tr>
				                    </c:forEach>
				                    <tr> 
				                    	<td colspan="4" align="center"> 
				                    		<h2>${maxlist}</h2>  
				                    	</td>
				                    </tr> 
		                    </tbody> 
   						</table>
</body>
</html>