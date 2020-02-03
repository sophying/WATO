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

 
// textarea 자동 높이 조절 
function resize(obj) {
	  obj.style.height = "1px";
	  obj.style.height = (12+obj.scrollHeight)+"px";
	}
 
// ________________________
 
 
function clickEvnet(event) { 
	if ($(event).val() == "수정하기") {
		alert('수정');
		$(event).val("수정등록");
		$(event).parent().parent().children('.text1').attr('readonly', false);
		$(event).parent().parent().children('.text1').css('background','#c995a255');
	}else if ($(event).val() == "수정등록") {
		$(event).val("수정하기");
		$(event).parent().parent().children('.text1').attr('readonly', true);
		$('.updateform').submit();
	}
	
}

function clickEvnet2(event){
	if ($(event).val()== "수정하기") {
		$(event).val("수정등록");
		$(event).parent().children().attr('readonly', false);
		$(event).parent().children().css("background-color", "#ddddee33");
		
	}else if ($(event).val()== "수정등록") {
		$(event).val("수정하기");
		$(event).parent().children().attr('readonly', true);
		$(event).parent().children().css("background-color", "#fff");
		$(".updateform").attr("action","/study/modireply");
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


 



$('#modalSubmit').click(function () {
	$('#participationForm').submit();
});
$('#cancleSubmit').click(function () {
	$('#cancleForm').submit();
});


$('#deleteSubmit').click(function () {
	$('#deleteForm').submit();
});
	