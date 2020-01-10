<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>  
<body>  
  


<input class="checkbox-test" type="checkbox" value="화" id="fire">화
<input class="checkbox-test" type="checkbox" value="수" id="su">수

<div id="test"></div>
<script type="text/javascript">  
	$(".checkbox-test").click(function() {
		$('#test').text();
	})	
</script>
 




</body>

</html>