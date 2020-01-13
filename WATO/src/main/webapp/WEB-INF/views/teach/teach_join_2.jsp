<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body {
            margin: 0px;
            padding: 0px;
            background-color: #b6bed8; /* footer 좌우 배경 색 */
        }

        div.wrap0 {
            position: relative;
            background-color: #b6bed8;
            background-clip: border-box;
            margin-left: auto;
            margin-right: auto;
            /*height: 950px;*/

        }

        div.wrap2 { /* 좌우 여백 공간 색 */
            min-height: 100%;
            max-width: 1050px; /* 좌우여백 주고 가운데로 */
            background-color: #fff;
            margin: 0 auto;
            /*padding-top: 70px;*/
            padding-bottom: 20px;
            text-align: center;
            width: 80%;
        }

        div#header {
            background-color: #999999;
            display: block;
            margin: auto;
            height: 20px; /* ul 과 같은 높이 설정(공간 생기는 것 방지) */
            position: fixed;
            width: 1050px; /* 헤더가 중간정렬 */
            padding: 0px;
            border: none;
            font-family: times; /* 헤더 메뉴바 글씨체 */
        }

        .footer { /* footer 중앙 정렬 */
            width: 1050px;
            height: 100px;
            text-align: center;
            margin: auto;
        }

        #header ul{
            background-color: #222222; /* 상단바 색 */
            height:50px;
            list-style:none;
            margin:auto;
            padding:0;
        }

        #header ul li {

        }

        #header li ul{
            background-color: #919ec5;
            display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
            height:auto;
            padding:0px;
            margin:0px;
            border:0px;
            position:absolute;
            width:200px;
            z-index:200;
            /*top:1em;
            /*left:0;*/
        }

        #header li:hover ul {
            display: block;
        }

        #header li a{
            background-color: #222222; /* 상단바 색 */
            color:#999999; /* 상단바 글씨 색 */
            display:block;
            font-weight:normal;
            line-height:50px;
            margin:0px;
            padding:0px 25px;
            text-align:center;
            text-decoration:none;
        }

        #header ul li a:hover{
            background-color: #999999; /* 마우스 올리면 배경색 바뀜 */
            color:#222222;
        }

        table.table_main {
            border-top: 1px solid;
            border-bottom: 1px solid;
            margin: auto;
        }

        th {
            padding-right: 20px;
            /*margin-right: 5px;*/
        }

        td {

        }

        table.table_sub {
            border-top: 1px solid;
            border-bottom: 1px solid;
            margin: auto;
        }

        input {
            padding: 15px;
        }
    </style>
</head>
<body>
<div class="wrap0" style="text-align: center;">
    <div class="wrap2">

        <div id="header">
            <div style="float: left"><a href="javascript:;"><img src="../images/book_main_icon.png" width="80" height="50"></a></div>
            <ul>
                <li style="float: left;"><a href="javascript:;">처음 오신 분들께</a></li>
                <li style="float: left;"><a href="javascript:;">스터디</a>
                    <ul>
                        <li><a href="javascript:;">스터디 개설</a></li>
                        <li><a href="javascript:;">강사</a></li>
                    </ul>
                </li>
                <li style="float: right"><a href="javascript:;">문의 02-3456-7899</a></li>
                <li style="float: right"><a href="javascript:;">로그인</a>
                    <ul>
                        <li><a href="../sign_up/std_info">개인정보수정</a>
                    </ul>
                </li>
            </ul>
        </div>

                <div><img src="../images/facebook_cover_photo_1.png" width="500px;" style="margin-top: 30px;"></div>
                <div class="std_info1" style="margin-bottom: 30px; padding: 10px; background-color: #ffee76;">회원 정보 수정</div>
                <div class="std_exp1" style="background-color: #dadeeb; border-top: 1px solid #999999; border-bottom: 1px solid #999999; margin-bottom: 30px;">
                    <p style="float: left; margin: 0px;"><img src="../images/book_main_icon.png" width="70px;"></p>
                    <div>저희 스터디어스를 이용해 주셔서 감사합니다. 최지혜님은 학생이십니다.
                        <p style="float: right; margin: 0px;"><img src="../images/book_main_icon.png" width="70px;"></p>
                        <br>종료 예정 스터디는 0건이 있습니다.
                    </div>
                </div>
                <c:if test="${member == null}">
            <form role="form" method="post" autocomplete="off">
                <div style="font-size: 17px;">로그인</div>
                <div>
                    <table class="table_main" style="text-align: left;">
                        <tr>
	                        <th>아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td><input type="text" id="Teach_Id" name="Teach_Id" size="37" maxlength="40" required oninvalid="this.setCustomValidity('필수입력사항 입니다.')" >
							</td>
	                        <td><button type="button" class="idCheck" onclick="fn_idChk();">아이디 중복확인</button></td>
                    	</tr>
                        <tr>
	                        <th>비밀번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="password" id="userPw" id="Teach_Pwd" name="Teach_Pwd" size="55" maxlength="12" placeholder="비밀번호" ></td>
	                    </tr>
	                    <tr>
	                        <th>비밀번호 확인<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="password" id="userPwChk" size="55" maxlength="12" placeholder="비밀번호 확인"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
	                    </tr>
	                    <tr>
	                        <th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="text" id="Teach_Email" name="Teach_Email" size="55" maxlength="50"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
	                    </tr>
                    </table>
                </div>
            
            <div style="margin: 40px;">
                <button type="submit" style="margin-right: 30px; width: 150px; height: 50px;">로그인</button>
                <button type="reset" style="width: 150px; height: 50px;">취소</button>
            </div>
            </form>
            </c:if>
<c:if test="${msg == false}">
	<p style="color:#foo;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주십시오.</p>
</c:if>

<c:if test="${member != null }">
	<p>${members.Teach_Id}님 환영합니다.</p>
	
	<a href="member/modify">회원정보 수정</a>&nbsp;<a href="member/withdrawal">회원탈퇴</a><br> <!-- 컨트롤을 찾아서 -->
	<a href="member/logout">로그아웃</a>
</c:if>
    </div>
</div>
<div class="footer" style="text-align: center; background-color: #222222;">
    <div style="color: #999999;">
        <div style="float: left;">
            <div>CS CENTER</div>
            <div>02-6598-8520</div>
            <div>주말, 공휴일은 휴무입니다.</div>
        </div>
        <div style="float: left;">
            <div>CS CENTER</div>
            <div>02-6598-8520</div>
            <div>주말, 공휴일은 휴무입니다.</div>
        </div>
        <div style="float: left;">
            <div>CS CENTER</div>
            <div>02-6598-8520</div>
            <div>주말, 공휴일은 휴무입니다.</div>
        </div>
        <div style="float: left;">
            <div>CS CENTER</div>
            <div>02-6598-8520</div>
            <div>주말, 공휴일은 휴무입니다.</div>
        </div>
        <div style="float: left;">
            <div>CS CENTER</div>
            <div>02-6598-8520</div>
            <div>주말, 공휴일은 휴무입니다.</div>
        </div>
    </div>
    <!--<hr>
    <div style="color: #999999;">
        Copyright ⓒ 2019 StudyUs 전문 스터디카페
    </div>-->
</div>
<script type="text/javascript" src="/js/teach_join.js"></script>

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