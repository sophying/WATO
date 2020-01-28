<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form role="form" name="joinForm" action="/login/join"  method="post">
	<table>
		<tr>
			<td>
				<font size="5"><label style="width: 60px; height: 60px; line-height: 60px;">이름</label></font>
			</td>
			<td>
				<input type="text"  name="m_username" style="width:300px; height: 60px;">
			</td>
		</tr>
		<tr>
			<td>
				<font size="5"><label style="width: 60px; height: 60px; line-height: 60px;">아이디</label></font>
			</td>
			<td>
				<input type="text" name="m_user_id" style="width:300px; height: 60px;">
			</td>
		</tr>
		<tr>
			<td>
				<font size="5"><label style="width: 60px; height: 60px; line-height: 60px;">비밀번호</label></font>
			</td>
			<td>
				<input type="password" name="m_user_pwd" style="width:300px; height: 60px;">
			</td>
		</tr>
		<tr>
			<td>
				<button id="joinGo" style="width: 100px; height: 60px;">가입하기</button>
			</td>
		</tr>
	</table>
</form>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script type="text/javascript">

	
//	var formObj = $('form[role="form"]');
	
	 $('#joinGo').on('click', function () {
		/* 
		 formObj.attr('action', '/login/join');
		 formObj.arrt('method', 'post'); */
		 joinForm.submit();
		 
	});
 
 
 /*
 // 폼을 변수에 저장  form > role="form" 인 값을 담음 
					var formObj = $("form[role='form']");
					
					// 취소 버튼 클릭
					$("#cancel_btn").click(function(){
						window.location.href="/board/read?bno=${modify.bno}"
											+"&page=${scri.page}"
											+"&perPageNum=${scri.perPageNum}"
											+"&searchType=${scri.searchType}"
											+"&keyword=${scri.keyword}";
					});
					
					//수정 버튼 클릭
					$("#modify_btn").click(function() {
						formObj.attr("action", "/board/modify");
						formObj.attr("method", "get");
						formObj.submit();
					});
 
 */
</script>
</body>
</html>