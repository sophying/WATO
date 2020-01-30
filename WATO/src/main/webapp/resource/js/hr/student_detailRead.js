//Q&A 작성시 글자 수 제한 


$("#r_content").keyup(function (event) {
	var content1 = $(this).val();
	$('#cnttxt1').html("("+content1.length+" / 최대 200 자)");
	
	if (content1.length > 200) {
		alert("최대 200자까지 입력 가능합니다.");
		
		$(this).val(content1.substring(0, 200));
		$('#cnttxt1').html("(200 / 최대 200 자)");
	}
});
//textarea 자동 높이 조절 
function resize(obj) {
	  obj.style.height = "1px";
	  obj.style.height = (12+obj.scrollHeight)+"px";
	}
 


		function clickEvnet(obj){
			
			
			if ($(obj).val()== "수정하기") {
				$(obj).val("수정등록");
				$(obj).parent().prev().children().attr('readonly', false);
				$(obj).parent().prev().children().css("background-color", "#ddddee33");
				
			}else if ($(obj).val()== "수정등록") {
				$(obj).val("수정하기");
				$(obj).parent().prev().children().attr('readonly', true);
				$(obj).parent().prev().children().css("background-color", "#fff");
				$('#replyForm').submit();
			}
			
		}
		
		function deleteRe(obj) {
			$('#replyForm').attr("action","./replyDelete");
			$('#replyForm').submit();
		}
		function deleteRe2(obj) {
			$('#replyForm').attr("action","./replyDelete");
			$('#replyForm').submit();
		}
		
		
		
		
		function clickEvnet2(obj){
			
			
			if ($(obj).val()== "수정하기") {
				$(obj).val("수정등록");
				$(obj).parent().children().attr('readonly', false);
				$(obj).parent().children().css("background-color", "#ddddee33");
				
			}else if ($(obj).val()== "수정등록") {
				$(obj).val("수정하기");
				$(obj).parent().children().attr('readonly', true);
				$(obj).parent().children().css("background-color", "#fff");
				$("#replyForm").attr("action","/study/replyModify");
				$('#replyForm').submit();
			}
			
		}
		
		
		
//		$("#rereplybuton").click(function(event) {
//			
//			alert("작동중입니다.");
//			leaderRe(event);
//			
//		})
		
		function leaderRe(obj) {
				
				$(obj).parent().prev().children().attr('readonly',true);
				$("#replyForm").attr("action","/study/s_detailReply.do");
				$('#replyForm').submit();
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
		
					
		