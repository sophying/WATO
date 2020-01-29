
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
            	
				document.getElementById("startScore").value = 1;
				console.log($('#startScore').val());
				
			}else if (cnt == 2) {
				
				document.getElementById("startScore").value = 2;
				console.log($('#startScore').val());
				
			}else if (cnt == 3) {
				
				document.getElementById("startScore").value = 3;
				console.log($('#startScore').val());
				
			}else if (cnt == 4) {
				
				document.getElementById("startScore").value = 4;
				console.log($('#startScore').val());

			}else if (cnt == 5) {
				
				document.getElementById("startScore").value = 5;
				console.log($('#startScore').val());
				
			}
            
            return false; 
            
        });
 
		
		function starBtn11(event) {
			$(event).parent().submit();
		};
		
        