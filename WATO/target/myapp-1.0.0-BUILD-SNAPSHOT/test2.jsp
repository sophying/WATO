<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img id="imgval" alt="이미지" src="http://blogpfthumb.phinf.naver.net/20140808_166/yysvip_1407482954532HjjnC_JPEG/ssu_300.jpg">
	<input type="hidden" value="" id="imgvalue">
	<button onclick="Test()">테스트</button>
	<script>
		var srctest = document.getElementById('imgval').getAttribute('src');
		
		document.getElementById('imgvalue').value = srctest ; 
		
		function Test() {
			alert(srctest);
			
		}
		
		
	</script>
</body>

</html>