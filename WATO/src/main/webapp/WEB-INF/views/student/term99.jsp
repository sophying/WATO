<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>king 게시판</title>
<!-- <link rel="stylesheet" type="text/css" href="../resource/css/terms_jihye.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/std_join.css">  -->
<link rel="stylesheet" type="text/css"
	href="../resource/css/social-icon.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
	box-sizing: border-box;
}

#joinform {
	background: #f6f5f7;
	/* display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; */
	font-family: 'Montserrat', sans-serif;
	/* height: 0;  */
	/* margin: -20px 0 50px; */
	/* margin-top: 60px; */
	margin: auto;
	width: 200;
}

th {
	border: 1px solid #bbbbbb;
	color: #888888;
}

td {
	padding-left: 10px;
	border: 1px solid #bbbbbb;
}

h3.title {
	margin-bottom: 30px;
}

h4.title1 {
	text-align: left;
	margin: 0px;
	margin-bottom: 10px;
}

h4.title2 {
	text-align: left;
	margin: 0px;
	margin-top: 40px;
	margin-bottom: 10px;
}

div.terms1 {
	overflow: scroll;
	border: 1px solid;
	width: 680px;
	height: 200px;
	text-align: left;
	background-color: #eeeeee;
}

div.terms2 {
	overflow: scroll;
	border: 1px solid;
	width: 680px;
	height: 200px;
	text-align: left;
	background-color: #eeeeee;
}

/* button#joinb:hover {
            color: #3c97bf;
            cursor: pointer; /* mouse shape turn finger */
background-color


:

 

#eeeeee


;
}
* /
        
        p.dougi {
	text-align: right;
	margin: 0px;
}

input.gaip {
	width: 100px;
	height: 30px;
	margin-top: 70px;
}

a {
	text-decoration: none;
}

a:hover {
	color: #3c97bf;
}

input.signup {
	width: 50%;
}

p.agree1 {
	margin: 0px;
	padding: 0px;
	text-align: right;
}

label.agreecheck1 {
	text-align: right;
}
</style>
<body>

	<!-- 내용 추가 -->
	<div class="joinform" style="border-radius: 10px;">
		<form role="form" name="frmJoin" onsubmit="return CheckForm(this)" autocomplete="off" action="">

			<br>
			<br>
			<br>
			<div>
				<strong> <i class="fa fa-exclamation-circle"></i> 
					회원이용약관 및 개인정보보호정책 내용에 동의하셔야 회원가입 하실 수 있습니다.
				</strong>
			</div>
			<br>
			<br>
			<br>
			<h4 class="title">회원이용약관</h4>
			<div>
				<div>
					<div>
						<h5 class="title1" style="text-align: left;">회원이용약관</h5>
					</div>
					<div class="terms1">
						[제1장 홈페이지 이용 총칙]<br> <br> 제1조 목 적<br> <br> 제1조
						목 적<br> <br> 제1조 목 적<br> <br> 이 약관은 (이하 직업학교)이
						제공하는 서비스는 이 약관에 동의한 이용자들에게 무료로 제공되는 서비스이며 그 이용조건 및 절차에 관한 사항과 기타
						필요한 사항을 규정함을 목적으로 합니다.<br> <br> 제2조 약관의 효력과 변경<br>
						<br> 제3조 (약관 외 준칙)<br> <br> 본 약관에 명시되지 않은 사항이 관계법령에
						규정되어 있을 경우에는 그 규정에 따릅니다.<br> <br> [제2장 사이트 서비스 이용]<br>
						<br> 제1조 (이용계약의 성립) 서비스 이용계약은 이용자의 신청과 그에 대한 직업학교의 응낙, 그리고
						이용자의 약관 내용에 대한 동의로 성립됩니다.<br> 회원으로 가입하여 서비스를 이용하고자 하는 희망자는
						직업학교에서 요청하는 필수입력사항을 입력하여야 합니다.<br> 직업학교이 회원으로써의 이용 신청을 응낙하게
						되면 다음 각 항의 사항을 이용자에게 통지합니다.<br> ① 이용자 ID<br> ② 기타 직업학교이
						필요하다고 인정하는 사항<br> <br> [부 칙]<br> <br> 시행일<br>
						이 약관은 2008년 02월 11일부터 시행됩니다.
					</div>
					<p class="agree1">
						<label class="agreecheck1"><input type="checkbox"
							name="terms1" id="terms1">회원이용약관에 동의합니다.</label>
					</p>
				</div>
				<div>
					<h5 class="title1" style="text-align: left;">개인정보 보호정책</h5>
				</div>
				<div class="terms2">
					[제1장 홈페이지 이용 총칙]<br> <br> 제1조 목 적<br> <br> 이
					약관은 (이하 직업학교)이 제공하는 서비스는 이 약관에 동의한 이용자들에게 무료로 제공되는 서비스이며 그 이용조건 및
					절차에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br> <br> 제2조 약관의 효력과
					변경<br> <br> 제3조 (약관 외 준칙)<br> <br> 본 약관에 명시되지
					않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br> <br> [제2장 사이트
					서비스 이용]<br> <br> 제1조 (이용계약의 성립) 서비스 이용계약은 이용자의 신청과 그에 대한
					직업학교의 응낙, 그리고 이용자의 약관 내용에 대한 동의로 성립됩니다.<br> 회원으로 가입하여 서비스를
					이용하고자 하는 희망자는 직업학교에서 요청하는 필수입력사항을 입력하여야 합니다.<br> 직업학교이 회원으로써의
					이용 신청을 응낙하게 되면 다음 각 항의 사항을 이용자에게 통지합니다.<br> ① 이용자 ID<br>
					② 기타 직업학교이 필요하다고 인정하는 사항<br> <br> [부 칙]<br> <br>
					시행일<br> 이 약관은 2008년 02월 11일부터 시행됩니다.
				</div>
				<p class="agree1">
					<label class="agreecheck1"><input type="checkbox"
						name="terms2" id="terms2">개인정보보호정책에 동의합니다.</label>
				</p>
			</div>
			<br>
			<br>
			<br>

			<table style="margin: auto; margin-top: 20px;" cellspacing="0">
				<!-- 일반 회원가입 폼 -->
				<tr>
					<th id="student" colspan="3"
						style="background-color: #eeeeee; height: 50px; color: #888888;">학생
						회원가입</th>
				</tr>

				<tr>
					<td id="avatar" style="height: 140px; width: 100px; padding: 0px;"><img
						id="image_section"
						style="width: 160px; height: 140px; display: block; margin: 0px auto;"
						src="//sb-cafetalk.s3.amazonaws.com/user-uploaded-files/cafetalk-optimized-559cca73cd84d-984180900-1436338803.png"></td>
					<td colspan="2"><input type='file' id="imgInput"
						id="Std_Profile" name="Std_Profile" />
						<div>
							<em style="font-size: small;">※업로드 가능한 이미지 크기는 150x100 입니다.<br>이미지
								크기가 초과할시 업로드 되지 않을 수 있음을 유의바랍니다.
							</em>
						</div></td>
				</tr>

				<tr>
					<th>아이디<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td><input type="text" id="User_Id" name="User_Id" size="30"
						maxlength="30"></td>
					<td>
						<button type="button" class="idCheck"
							style="border-radius: 10px; background-color: #6a8518; border: 1 solid #A0DBE4; color: #fff;"
							onclick="fn_idChk();">아이디 중복확인</button>
					</td>
				</tr>
				<tr>
					<th>비밀번호<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><input type="password" id="userPw"
						id="User_Pwd" name="User_Pwd" size="55" maxlength="12"
						placeholder="비밀번호"></td>
				</tr>
				<tr>
					<th>비밀번호 확인<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><input type="password" id="userPwChk"
						size="55" maxlength="12" placeholder="비밀번호 확인"><br>
						<div style="display: inline-block;" id="pwdcheck"></div></td>
				</tr>
				<tr>
					<th>성별<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2">
					<label><input type="radio" id="Std_Gender" name="Std_Gender" value="남자">남자</label> &nbsp;
					<label><input type="radio" id="Std_Gender" name="Std_Gender" value="여자" checked>여자</label>
					</td>
				</tr>
				<tr>
					<th>휴대폰<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><select id="Std_Phone1" name="Std_Phone1">
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					</select> - <input type="text" id="Std_Phone2" name="Std_Phone2" size="15"
						maxlength="4"> - <input type="text" id="Std_Phone3"
						name="Std_Phone3" size="15" maxlength="4"></td>
				</tr>
				<tr>
					<th>이메일<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><input type="email" id="email" id="User_Email"
						name="User_Email" size="55" maxlength="80" onfocus="focus()"></td>
				</tr>
				<tr>
					<th>우편번호<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td><input type="text" id="sample4_postcode" id="Std_Addr1"
						name="Std_Addr1" placeholder="우편번호"></td>
					<td><input type="button"
						style="border-radius: 10px; background-color: #6a8518; border: 1 solid #A0DBE4; color: #fff;"
						onclick="sample4_execDaumPostcode()" value="우편번호찾기"></td>
				</tr>
				<tr>
					<th>주소<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><input type="text" class="btn btn-primary"
						id="sample4_roadAddress" id="Std_Addr2" name="Std_Addr2" size="55"
						placeholder="도로명주소"></td>
					<span id="guide" style="color: #999"></span>
				</tr>
				<tr>
					<th>상세주소<img
						src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
					<td colspan="2"><input type="text" class="btn btn-primary"
						id="std_addr_sub" id="Std_Addr3" name="Std_Addr3" size="55"
						maxlength="12" placeholder="상세주소"></td>
				</tr>


			</table>
			<input type="submit" class="gaip" id="joinb" value="회원가입" style="border-radius: 10px; background-color: #6a8518; border: 1 solid #A0DBE4; color: #fff;">
		</form>
	</div>



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function CheckForm(Join) {

	// 체크박스 체크여부 확인[하나]
	var chk1 = document.frmJoin.terms1.checked;
	var chk2 = document.frmJoin.terms2.checked;

	if (!chk1 && !chk2) {
		alert('약관에 동의해주세요.');
		return false;
	}
	if (!chk1) {
		alert('회원이용약관에 동의해주세요.');
		return false;
	}
	if (!chk2) {
		alert('개인정보보호정책에 동의해주세요');
		return false;
	}
	if (chk1 && chk2) {
		alert('모든 약관에 동의하셨습니다.');
		}

	}
</script>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- if script tag don't have src="jquery", password text can't see. -->
<script type="text/javascript"> 
        // 비밀번호 확인 소스
        $('#userPw').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPwChk !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            }else if(userPw != "" && userPwChk==""){
                pwdcheck.text('비밀번호 확인를 입력해주세요').css('color', 'blue');
            }else if (userPw != userPwChk) {
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }

        });

        $('#userPwChk').blur(function() {
            var userPw = $('#userPw').val();
            var userPwChk = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');

            if (userPw !="" && userPw !="" && userPw==userPwChk) {
                pwdcheck.text('비밀번호가 동일합니다.').css('color', 'green');
            } else if(userPwChk != "" && userPw==""){
                pwdcheck.text('비밀번호를 입력해주세요').css('color', 'blue');
            }else if(userPw != userPwChk){
                pwdcheck.text('비밀번호가 다릅니다').css('color', 'red');
            }else if(userPw =="" && userPwChk==""){
                pwdcheck.text('');
            }
        });


        function checkPw() {
            var userPw = $('#userPw').val();
            var userPw = $('#userPwChk').val();
            var pwdcheck = $('#pwdcheck');
            if (userPw == userPwChk) {
                joinform.submit();
            } else {
                /* pwdcheck.text('비밀번호가 다릅니다').css('color', 'red'); *!/ /!* 위에서 출력하고 있는데 한번더 출력할 필요 없음 */
                alert('입력하신 비밀번호가 다릅니다 확인해주세요.')
            }
        }   

  function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function (e) {
       $('#image_section').attr('src', e.target.result);
    }

       reader.readAsDataURL(input.files[0]);
       }
    }

      $("#imgInput").change(function(){
        readURL(this);
  });
      

      
      function fn_idChk(){
      	$.ajax({
      		url : "/student/idChk",
      		type : "post",
      		dataType : "json",
      		data : {"User_Id" : $("#User_Id").val()},
      		success : function(data){
      			if(data == 1){
      				alert("중복된 아이디입니다.");
      			}else if(data == 0){
      				$("#idChk").attr("value", "Y");
      				alert("사용가능한 아이디입니다.");
      			}
      		}
      	})
      }
</script>        

	<!-- <!-- JavaScript files-->
	<script src="./resource/vendor/jquery/jquery.min.js"></script>
	<script src="./resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./resource/vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="./resource/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="./resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
	<script src="./resource/js/front.js"></script>
	<script type="text/javascript" src="../resource/js/std_join.js"></script>
</body>
</html>
