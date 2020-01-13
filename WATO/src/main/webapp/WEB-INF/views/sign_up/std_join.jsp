<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/std_join.css"> 
</head>
<body>
<div id="wrap0">
    <div id="wrap1" class="main">
    
        <nav>
       		<%@ include file="../include/header_jihye.jsp" %>
    	</nav>
    	
        <div id="wrap2">
            <form role="form" method="post" autocomplete="off">
                <table style="margin: auto; margin-top: 20px;" cellspacing="0"> <!-- 일반 회원가입 폼 -->
                    <tr>
                        <th id="student" colspan="3" style="background-color: #eeeeee; height: 50px; color: #888888;">학생 회원가입</th>
                    </tr>
                    
                    <tr>
                        <td id="avatar" style="height: 140px; width: 100px; padding: 0px;"><img id="image_section" style="width: 160px; height: 140px; display: block; margin: 0px auto;" src="//sb-cafetalk.s3.amazonaws.com/user-uploaded-files/cafetalk-optimized-559cca73cd84d-984180900-1436338803.png"></td>
                        <td colspan="2">
                            <form id="" runat="">
                                <input type='file' id="imgInput" id="Std_Profile" name="Std_Profile"/>
                                <div><em style="font-size: small;">※업로드 가능한 이미지 크기는 150x100 입니다.<br>이미지 크기가 초과할시 업로드 되지 않을 수 있음을 유의바랍니다.</em></div>
                            </form>
                        </td>
                    </tr>                    
                    
                    <tr>
                        <th>아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="Std_Id" name="Std_Id" size="37" maxlength="40" required oninvalid="this.setCustomValidity('필수입력사항 입니다.')" >
						</td>
                        <td><button type="button" class="idCheck" onclick="fn_idChk();">아이디 중복확인</button></td>
<!--                         <p class="result">
                        	<span class="msg">아이디를 확인해주십시오.</span>
                        </p> -->
                    </tr>
                    <tr>
                        <th>비밀번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPw" id="Std_Pwd" name="Std_Pwd" size="55" maxlength="12" placeholder="비밀번호" ></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="password" id="userPwChk" size="55" maxlength="12" placeholder="비밀번호 확인"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인 질문<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><select id="Std_Pwd_Qs" name="Std_Pwd_Qs" style="width: 290px; text-align: center;">
                            <option value="기억에 남는 추억의 장소는?" selected>기억에 남는 추억의 장소는?</option>
                            <option value="자신의 보물 1호는?">자신의 보물 1호는?</option>
                            <option value="가장 좋아하는 과일은?">가장 좋아하는 과일은?</option>
                            <option value="가장 좋아했던 초등학교 선생님 성함은?">가장 좋아했던 초등학교 선생님 성함은?</option>
                            <option value="인상 깊게 읽은 책 제목은?">인상 깊게 읽은 책 제목은?</option>
                            <option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
                        </select></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인 답변<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="Std_Pwd_As" name="Std_Pwd_As" size="55" maxlength="12"></td>
                    </tr>
                    <tr>
                        <th>성별<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><label><input type="radio" id="Std_Gender" name="Std_Gender" value="남자">남자</label>
                        &nbsp;<label><input type="radio" id="Std_Gender" name="Std_Gender" value="여자" checked>여자</td></label>
                    </tr>
                    <tr>
                        <th>휴대폰<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                            <select  id="Std_Phone1" name="Std_Phone1">
                                <option value="010" selected>010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            -
                            <input type="text" id="Std_Phone2" name="Std_Phone2" size="15" maxlength="4">
                            -
                            <input type="text" id="Std_Phone3" name="Std_Phone3" size="15" maxlength="4">
                        </td>
                    </tr>
                    <tr>
                    	<th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    	<td colspan="2"><input type="email" id="email" id="Std_Email1" name="Std_Email1" size="55" maxlength="80" onfocus="focus()"></td>
                    </tr>
                    <!-- <tr>
                        <th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="email" id="Std_Email1" name="Std_Email1" size="10" maxlength="12" onfocus="focus()"> @ <input type="txet" id="email2" id="Std_Email2" name="Std_Email2" size="10" maxlength="12" onfocus="focus()">&nbsp;
                            <select onChange="selEmail(this.value)" style="width: 100px;">
                                <option onselect="focus">직접입력</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="naver.com">naver.com</option>
                                <option value="naver.com">hanmail.net</option>
                                <option value="daum.com">daum.com</option>
                            </select>
                        </td>
                    </tr> -->
                    <tr>
                        <th>우편번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="sample4_postcode" id="Std_Addr1" name="Std_Addr1" placeholder="우편번호"></td>
                        <td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호찾기"></td>
                    </tr>
                    <tr>
                        <th>주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text"  id="sample4_roadAddress" id="Std_Addr2" name="Std_Addr2" size="55" placeholder="도로명주소"></td>
                        <span id="guide" style="color:#999"></span>
                    </tr>
                    <tr>
                        <th>상세주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="std_addr_sub" id="Std_Addr3" name="Std_Addr3" size="55" maxlength="12"  placeholder="상세주소"></td>
                    </tr>
                </table>
                <p>
                   <button type="submit" style="width: 150px; height: 30; margin-top: 20px;">회원가입</button>
                </p>
            </form>
        </div>
    </div>
</div>
	<footer>
    	<%@ include file="../include/footer_jihye.jsp"%>
    </footer>

<script type="text/javascript" src="/js/std_join.js"></script>

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
</script>        
</body>
</html>
