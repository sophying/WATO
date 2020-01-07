<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디어스 - 세상을 뒤흔들어라</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.4.1.min.js"></script> 
<link rel="stylesheet" type="text/css" href="/css/nav-bar.css"> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="/css/searchpageform.css">
</head> 
<body style="background: white;">    
	<%@ include  file="./nav-bar.jsp"%>
	<form method="post" role="form" action="/board/searchResult">
		<input type="text" name="searchKey" id="searchKey" />
		<div class="after"></div>
		<input type="submit" /> 
	</form> 
	<h4>&nbsp;</h4>
	<p>아이콘을 클릭해주세요, 검색어를 입력한 후 엔터를 눌러주세요</p>
	 
	<script> 
		(function($) { // Begin jQuery
		  $(function() { // DOM ready
		    // If a link has a dropdown, add sub menu toggle.
		    var s = $('input'), f = $('form'), a = $('.after'), m = $('h4');
		    var searchSource = ["자바", "자바스크립트", "Java", "C언어","C#","C++","Python","Ruby","JavaScript","SQL","VisualBasic" ]; // 배열 형태로
		    
	        $("#searchKey").autocomplete({  //오토 컴플릿트 시작
	            source : searchSource,    // source 는 자동 완성 대상
	            select : function(event, ui) {    //아이템 선택시
	                console.log(ui.item);
	            },
	            focus : function(event, ui) {    //포커스 가면
	                return false;//한글 에러 잡기용도로 사용됨
	            },
	            minLength: 1,// 최소 글자수
	            autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
	            classes: {    //잘 모르겠음
	                "ui-autocomplete": "black"
	            },
	            delay: 500,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//	            disabled: true, //자동완성 기능 끄기
	            position: { my : "right top", at: "right bottom" },    //잘 모르겠음
	            close : function(event){    //자동완성창 닫아질때 호출
	                console.log(event);
	            }
	        }).autocomplete( "instance" )._renderItem = function( ul, item ) {    //요 부분이 UI를 마음대로 변경하는 부분
	            return $( "<li>" )    //기본 tag가 li로 되어 있음 
	            .append( "<div style='text-align:center;'>"  + item.label + "</div>" )    //여기에다가 원하는 모양의 HTML을 만들면 UI가 원하는 모양으로 변함.
	            .appendTo( ul );
	    		 };
	    		 
		    /*------------------------------------------------------------------  */
			s.focus(function() {
				if (f.hasClass('open'))
					return;
				f.addClass('in');
				setTimeout(function() {
					f.addClass('open');
					f.removeClass('in');
				}, 1300);
			});
	
			a.on('click', function(e) {
				e.preventDefault();
				if (!f.hasClass('open'))
					return;
				s.val('');
				f.addClass('close');
				f.removeClass('open');
				setTimeout(function() {
					f.removeClass('close');
				}, 1300);
			})
		  }); // end DOM ready
		})(jQuery); // end jQuery
	</script>
</body>
</html>