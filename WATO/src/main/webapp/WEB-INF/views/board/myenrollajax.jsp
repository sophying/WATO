<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="box py-4 mt-0">
	            <div class="container"> 
		            <div class="col-md-12 mt-4"> 
	                      <h2 class="mb-0 text-center"><span style="font-weight: bold;">내가만든 스터디 회원</span></h2>
	                 </div> 
	                <div id="updatehtml">
	                	<table class="table table-hover">
	                		<thead>
	                			<tr>
	                				<th>학생 번호</th><th>아이디</th><th>자기소개</th><th>전화번호</th><th>신청한날짜</th><th>참여 철회</th>
	                			</tr>
	                		</thead> 
	                		<tbody>
	                		<c:choose>
	                			<c:when test="${partiuser.size() !=0 }">
	                				<c:forEach items="${partiuser}" var="partiuser">
			                			<tr>
			                				<td>${partiuser.p_no}</td>
			                				<td>${partiuser.p_userid}</td>
			                				<td>${partiuser.p_intro}</td>
			                				<td>${partiuser.p_tell}</td> 
			                				<td><fmt:formatDate value="${partiuser.p_regdate}" pattern="yyyy-MM-dd"/>
			                				<td>
			                					<input type="hidden" value="${partiuser.p_userid}">
			                					<c:choose>
			                						<c:when test="${std != null }">
					                					<input type="hidden" value="${partiuser.s_no}">
			                						</c:when>
			                						<c:otherwise>
					                					<input type="hidden" value="${partiuser.t_no}">
			                						</c:otherwise>
			                					</c:choose>
			                					<button onclick="particencle(this)">참여 철회</button>
			                				</td>
			                			</tr>
			                		</c:forEach>
	                			</c:when>
	                			<c:otherwise>
	                				<tr>
	                					<td colspan="5">
	                						<h2>신청한 회원이 없습니다.</h2>
	                					</td>
	                				</tr>
	                			</c:otherwise>
	                		</c:choose>
	                		</tbody>
	                	</table>
	                	</div>
	            </div>
            </div>
            <script type="text/javascript">
				function particencle(event) {
					var user_id = $(event).prev().prev().val();
					var bno = $(event).prev().val();
					var check = confirm('정말로 철회하시겠습니까');
					if(check == true){
						location.href='/study/partiCancle?user_id='+user_id+'&bno='+bno
					}else {
						return false;
					}
				}
            </script>
</body>
</html>