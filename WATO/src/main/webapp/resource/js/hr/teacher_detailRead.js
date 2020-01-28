// 조건  _______________________



// Q&A 작성시 글자 수 제한 
$("#r_content").keyup(function (event) {
	var content1 = $(this).val();
	$('#cnttxt1').html("("+content1.length+" / 최대 200 자)");
	
	if (content1.length > 200) {
		alert("최대 200자까지 입력 가능합니다.");
		
		$(this).val(content1.substring(0, 200));
		$('#cnttxt1').html("(200 / 최대 200 자)");
	}
});
$("#r_content2").keyup(function (event) {
	var content1 = $(this).val();
	$('#cnttxt2').html("("+content1.length+" / 최대 200 자)");
	
	if (content1.length > 200) {
		alert("최대 200자까지 입력 가능합니다.");
		
		$(this).val(content1.substring(0, 200));
		$('#cnttxt2').html("(200 / 최대 200 자)");
	}
});
 
 
// textarea 자동 높이 조절 
function resize(obj) {
	  obj.style.height = "1px";
	  obj.style.height = (12+obj.scrollHeight)+"px";
	}
 
// ________________________
 
 
function updatefun(event) { 
	if ($(event).val() == "수정하기") {
		$(event).parent().prev().children().attr('readonly',false);
		$(event).parent().prev().children().css('background','#c995a2');
		$(event).val("수정완료");
	}else if ($(event).val() == "수정완료") {
		$(event).parent().prev().children().attr('readonly',true);
		$(event).val("수정하기");
		$('.updateform').submit();
	}
	
}

function deleteRe(obj) {
	$('.updateform').attr("action","./t_replyDelete");
	$('.updateform').submit();
}
function deleteRe2(obj) {
	$('.updateform').attr("action","./t_replyDelete");
	$('.updateform').submit();
}


 
$(function(){
	 var listOne_URL = document.getElementById('listOne_URL').value;
	
	if (listOne_URL != null) {
		
		document.getElementById("main-iframe").src = listOne_URL;
	 
	} 
	
});


$('#modalSubmit').click(function () {
	$('#participationForm').submit();
});
$('#cancleSubmit').click(function () {
	$('#cancleForm').submit();
});


$('#deleteSubmit').click(function () {
	$('#deleteForm').submit();
});
	