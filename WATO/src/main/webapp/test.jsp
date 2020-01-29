<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>CodePen - Interactive splat like button</title>
<script type="text/javascript">
        function printTime()
        {
            var clock = document.getElementById("clock");
            var now = new Date();
            
            
            clock.innerHTML = now.getHours()+"시"

             +now.getMinutes()+"분"+now.getSeconds()+"초";

            // setTimeout함수를 통해 원하는 함수를 1초간격으로 출력해줌
            setTimeout("printTime()", 1000);
        }
        window.onload = printTime;
    </script>
</head>
<body> 
    <div>
        <h2><span id="clock"></span></h2>
    </div>
</body>
</html>