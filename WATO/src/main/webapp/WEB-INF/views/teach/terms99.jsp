<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<title>king 게시판</title>
	<link rel="stylesheet" type="text/css" href="../resource/css/terms_jihye.css">
</head>
<body>

<!-- 내용 추가 -->

<div id="wrap0">
	<div id="wrap1" class="main">
	
    	
        <div id="wrap2">
            <div style="padding: 20px;">
                <div>
                    <form role="form" name="frmJoin" onsubmit="return CheckForm(this)" autocomplete="off">
                        <h3 class="title">회원이용약관</h3>
                        <h4 class="title1">회원이용약관</h4>
                        <!-- <iframe src="./join_std_terms_01" style="width: 680px;"></iframe> -->
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
                        <!-- <iframe src="./join_std_terms_01" style="width: 680px;"></iframe> -->
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
                        <!-- <p><a href="./std_join/register">회원가입</a></p> -->
                        <!-- <form role="form" method="post" autocomplete="off"> -->
                <table style="margin: auto; margin-top: 20px;" cellspacing="0"> <!-- 일반 회원가입 폼 -->
                    <tr>
                        <th id="teach" colspan="3" style="background-color: #eeeeee; height: 50px; color: #888888;">강사 승인신청폼</th>
                    </tr>
                    
                    <tr>
                        <td id="avatar" style="height: 140px; width: 100px; padding: 0px;"><img id="image_section" style="width: 160px; height: 140px; display: block; margin: 0px auto;" src="//sb-cafetalk.s3.amazonaws.com/user-uploaded-files/cafetalk-optimized-559cca73cd84d-984180900-1436338803.png"></td>
                        <td colspan="2">
                                <input type='file' id="imgInput" id="app_Profile" name="app_Profile"/>
                                <div><em style="font-size: small;">※업로드 가능한 이미지 크기는 150x100 입니다.<br>이미지 크기가 초과할시 업로드 되지 않을 수 있음을 유의바랍니다.</em></div>
                        </td>
                    </tr>                    
                    <tr>
                        <th>이력서첨부<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type='file' id="app_Resume" name="app_Resume"/></td>
                    </tr>
                    <tr>
                        <th>성별<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><label><input type="radio" id="app_Gender" name="app_Gender" value="남자">남자</label>
                        &nbsp;<label><input type="radio" id="app_Gender" name="app_Gender" value="여자" checked>여자</label></td>
                    </tr>
                    <tr>
                        <th>휴대폰<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2">
                            <select  id="app_Phone1" name="app_Phone1">
                                <option value="010" selected>010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                            </select>
                            -
                            <input type="text" id="app_Phone2" name="app_Phone2" size="15" maxlength="4">
                            -
                            <input type="text" id="app_Phone3" name="app_Phone3" size="15" maxlength="4">
                        </td>
                    </tr>
                    <tr>
                    	<th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    	<td colspan="2"><input type="email" id="email" id="app_Email" name="app_Email" size="55" maxlength="80" onfocus="focus()"></td>
                    </tr>
                    <tr>
                        <th>우편번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td><input type="text" id="sample4_postcode" id="app_Addr1" name="app_Addr1" placeholder="우편번호"></td>
                        <td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호찾기"></td>
                    </tr>
                    <tr>
                        <th>주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text"  id="sample4_roadAddress" id="app_Addr2" name="app_Addr2" size="55" placeholder="도로명주소">
                        <span id="guide" style="color:#999"></span></td>
                    </tr>
                    <tr>
                        <th>상세주소<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                        <td colspan="2"><input type="text" id="std_addr_sub" id="app_Addr3" name="app_Addr3" size="55" maxlength="12"  placeholder="상세주소"></td>
                    </tr>
                </table>
                        <input class="gaip" id="joinb" type="submit" style="" value="회원가입">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>    
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

