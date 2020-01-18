<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<head>
	<title>king 게시판</title>
	<link rel="stylesheet" type="text/css" href="../resource/css/social-icon.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 내용 추가 -->


                    <form role="form" name="frmJoin" onsubmit="return CheckForm(this)" autocomplete="off" action="/student/std_join">
                        <h3 class="title">회원이용약관</h3>
                        <h4 class="title1">회원이용약관</h4>
                        <div class="terms1">
                        	[제1장 홈페이지 이용 총칙]<br><br>

							제1조 목 적<br><br>
							제1조 목 적<br><br>
							제1조 목 적<br><br>
							
							이 약관은 (이하 직업학교)이 제공하는 서비스는 이 약관에 동의한 이용자들에게 무료로 제공되는 서비스이며 그 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
							
							제2조 약관의 효력과 변경<br><br>
							
							제3조 (약관 외 준칙)<br><br>
							본 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br><br>
							
							[제2장 사이트 서비스 이용]<br><br>
							
							제1조 (이용계약의 성립) 서비스 이용계약은 이용자의 신청과 그에 대한 직업학교의 응낙, 그리고 이용자의 약관 내용에 대한 동의로 성립됩니다.<br>
							회원으로 가입하여 서비스를 이용하고자 하는 희망자는 직업학교에서 요청하는 필수입력사항을 입력하여야 합니다.<br>
							직업학교이 회원으로써의 이용 신청을 응낙하게 되면 다음 각 항의 사항을 이용자에게 통지합니다.<br>
							① 이용자 ID<br>
							② 기타 직업학교이 필요하다고 인정하는 사항<br><br>
						
							[부 칙]<br><br>
							
							시행일<br>
							이 약관은 2008년 02월 11일부터 시행됩니다.
                        </div>
                        <p class="dougi">
                            <label><input type="checkbox" name="terms1" id="terms1">회원이용약관에 동의합니다.</label>
                        </p>
                        <h4 class="title1">개인정보 보호정책</h4>
                        <div class="terms2">
                        	[제1장 홈페이지 이용 총칙]<br><br>

							제1조 목 적<br><br>
							
							이 약관은 (이하 직업학교)이 제공하는 서비스는 이 약관에 동의한 이용자들에게 무료로 제공되는 서비스이며 그 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
							
							제2조 약관의 효력과 변경<br><br>
							
							제3조 (약관 외 준칙)<br><br>
							본 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br><br>
							
							[제2장 사이트 서비스 이용]<br><br>
							
							제1조 (이용계약의 성립) 서비스 이용계약은 이용자의 신청과 그에 대한 직업학교의 응낙, 그리고 이용자의 약관 내용에 대한 동의로 성립됩니다.<br>
							회원으로 가입하여 서비스를 이용하고자 하는 희망자는 직업학교에서 요청하는 필수입력사항을 입력하여야 합니다.<br>
							직업학교이 회원으로써의 이용 신청을 응낙하게 되면 다음 각 항의 사항을 이용자에게 통지합니다.<br>
							① 이용자 ID<br>
							② 기타 직업학교이 필요하다고 인정하는 사항<br><br>
						
							[부 칙]<br><br>
							
							시행일<br>
							이 약관은 2008년 02월 11일부터 시행됩니다.
                        </div>
                        <p class="dougi">
                            <label><input type="checkbox" style="margin: 0px;" name="terms2" id="terms2">개인정보보호정책에 동의합니다.</label>
                        </p>
                        <a href="#" data-toggle="modal" data-target="#myModal1" data-dismiss="modal1" class="text-black-50 font-weight-bold">
                        <input class="gaip" id="joinb" type="submit" style="" value="회원가입"></a>
                    </form>
                    
                    <div class="row">
	        <div id="myModal1" class="modal fade" tabindex="-1">
	        	<div class="modal-dialog modal-lg">
	            	<div class="modal-content" style="background: none; border: 0px">
	            		<div class="modal-body"> 
							<div class="limiter">
								<button class="close-button" data-dismiss="myModal1">&times;</button> 
								<div class="container-login100">   
									<%@ include  file="../student/terms.jsp"%> 
								</div>
							</div>  
						</div> 	                		
	            	</div>
	        	</div>
	    	</div>
    	</div>
 

    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
    function CheckForm(Join) {

        // 체크박스 체크여부 확인[하나]
        var chk1 = document.frmJoin.terms1.checked;
        var chk2 = document.frmJoin.terms2.checked;

        if(!chk1 && !chk2) {
            alert('약관에 동의해주세요.');
            return false;
        }
        if(!chk1){
            alert('회원이용약관에 동의해주세요.');
            return false;
        }
        if(!chk2) {
            alert('개인정보보호정책에 동의해주세요');
            return false;
        }
        if(chk1 && chk2) {
        	alert('모든 약관에 동의하셨습니다.');
        }

    }

</script>
</body>
</html>

