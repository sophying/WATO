$("#menuClick").click(function() {
	
	if ('${std == null}' && '${teach == null}') {
		alert('로그인을 해주십시오.');
		
		$(this).children().children().attr("href","/");
	}
	
});

$('#myList').click(function() {
	if ('${std}'!= null) {
		$(this).children().attr("href","/study/s_myList");
	
	}else if ('${teach}' != null) {
		$(this).children().attr("href","/study/t_myList");
	}
	
});