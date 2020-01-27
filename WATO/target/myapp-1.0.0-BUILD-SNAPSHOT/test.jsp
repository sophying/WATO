<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>JQuery</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">

</style>

</head>
<body>
<div id="top_menu">
	<ul id="topUL">
		<li class="to_home"><a href="/">HOME</a></li>
		<li class="top_menu_li" id="login_btn">로그인</li> 
		<li class="top_menu_li"> | </li>
		<li class="top_menu_li" id="join_btn">회원가입</li>
	</ul>
</div>
<div id="wrap">
	<div id="left_menu">left_menu</div>
	<div id="content"> 
		<div id="login_box">login_box</div>
		<div id="join_box">join_box</div>
		<div id="main_content">
		main_content1<br><br><br><br><br><br><br><br><br><br><br><br><br>
		main_content2<br><br><br><br><br><br><br><br><br><br><br><br><br>
		main_content3<br><br><br><br><br><br><br><br><br><br><br><br><br>
		main_content4<br><br><br><br><br><br><br><br><br><br><br><br><br>
		main_content5<br><br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
	</div>
	<div id="right_menu">right_menu</div>
</div>
<script type="text/javascript">
//<![CDATA[ 
var pageLoaded = 1; //현재 페이지 

$(function() {
	$(document).scroll(function() {
		var maxHeight = $(document).height();
		var currentScroll = $(window).scrollTop() + $(window).height();
		
		if (maxHeight <= currentScroll + 100) {
			pageLoaded = pageLoaded + 1; 
			// ajax를 추가해서 목록을 받아온다
			// alert(pageLoaded);
			$('#main_content').append(   
					"main_content"+pageLoaded+"<br><br><br><br><br><br><br><br><br><br><br><br><br>");
		}
	}) 
})

/* $(window).scroll( function() {
	if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		pageLoaded = pageLoaded + 1; 
		// ajax를 추가해서 목록을 받아온다
		// alert(pageLoaded);
		$('#main_content').append(   
				"main_content"+pageLoaded+"<br><br><br><br><br><br><br><br><br><br><br><br><br>");
	}
}); */
//]]>
</script>
</body>
</html>