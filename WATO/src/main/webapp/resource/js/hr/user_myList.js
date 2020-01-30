
$(function() {
	
	$('#star_grade span').click(function(){
		var cnt = 0;
		$(this).parent().children("span").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
		$(this).addClass("on").prevAll("span").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
		
		
		$(this).parent().children("span").each(function () {
			if ($(this).attr("class") == "on") {
				cnt = cnt+1
			}
		}); 
		
		if (cnt == 1) { 
//			$('#starScore').val(1); 
//			document.getElementById("starScore").value = 1;
//			document.getElementsByName("starScore")[0].value = 1;
			$(this).parent().next().val(1);
			console.log("value1"+ $('#starScore').val());
			
		}else if (cnt == 2) {
			$('#starScore').val(2);
//			document.getElementById("starScore").value = 2;
//			document.getElementsByName("starScore")[0].value = 2;
			$(this).parent().next().val(2);
			console.log("value2"+ $('#starScore').val());
			
		}else if (cnt == 3) { 
			$('#starScore').val(3);
//			document.getElementById("starScore").value = 3;
//			document.getElementsByName("starScore")[0].value = 3;
			$(this).parent().next().val(3);
			console.log("value3"+ $('#starScore').val());
			
		}else if (cnt == 4) {
			$('#starScore').val(4);
//			document.getElementById("starScore").value = 4;
//			document.getElementsByName("starScore")[0].value = 4;
			$(this).parent().next().val(4);
			console.log( "value4"+ $('#starScore').val());
			
		}else if (cnt == 5) {
			$('#starScore').val(5);
//			document.getElementById("starScore").value = 5;
//			document.getElementsByName("starScore")[0].value = 5;
			$(this).parent().next().val(5);
			console.log("value5"+ $('#starScore').val());
			 
		}
		
		return false; 
	});
	
});

function starBtn11(event) {
	$(event).parent().submit();
	$('#starBtn').val("별점전달완료!");
};