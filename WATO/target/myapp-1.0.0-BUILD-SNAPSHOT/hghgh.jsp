<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0px;
            padding: 0px;
        }

        div#wrap0 {
            position: relative;
        }

        div#wrap1.main {
            background-color: #dadeeb; /* 좌우 여백 공간 색 */
            background-clip: border-box;
            margin-left: auto;
            margin-right: auto;
        }

        div#header {
            background-color: #999999;
            display: block;
            margin: 0px;
            height: 50px; /* ul 과 같은 높이 설정(공간 생기는 것 방지) */
            position: fixed;
            width: 100%;
            padding: 0px;
            border: none;
            font-family: times; /* 헤더 메뉴바 글씨체 */
        }

        #header ul{
            background-color: #919ec5; /* 상단바 색 */
            height:50px;
            list-style:none;
            margin:0;
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
            background-color: #919ec5; /* 상단바 색 */
            color:#333333; /* 상단바 글씨 색 */
            display:block;
            font-weight:normal;
            line-height:50px;
            margin:0px;
            padding:0px 25px;
            text-align:center;
            text-decoration:none;
        }

        div#wrap2 {
            min-height: 100%;
            max-width: 720px; /* 좌우여백 주고 가운데로 */
            background-color: #fff;
            margin: 0 auto;
            padding-top: 70px;
            padding-bottom: 20px;
            text-align: center;
            width: 80%;
        }

        input {
            background-color: #eee;
            border: none; /* 그림자 제거 */
            padding: 12px 15px;
            margin: 8px 0; /* 위아래 간격 */
        }

        #header ul li a:hover{
            background-color: #6c80b2; /* 마우스 올리면 배경색 바뀜 */
            color:#dddddd;
        }

        th {
            border: 1px solid #495D9E;
            color: #8f8db1;
        }

        td {
            padding-left: 10px;
            border: 1px solid #999999;
        }

        th#student {

        }

        div#join {
            padding-top: 30px;
            padding-bottom: 20px;
        }

        button#joinb:hover {
            color: #3c97bf;
            cursor: pointer; /* mouse shape turn finger */
            background-color: #eeeeee;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            color: #3c97bf;
        }

    </style>


</head>
<body>
<div id="wrap0">
<div id="wrap1" class="main">
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
        <li style="float: right"><a href="javascript:;">로그인</a></li>

    </ul>
</div>
<div id="wrap2">
    <form>
        <table style="margin: auto;">
                <tr>
                    <th id="student" colspan="3" style="background-color: #dadeeb; height: 50px; color: #333333;">학생 회원가입</th>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" name="id" size="37" maxlength="40"></td>
                    <td><button>아이디 중복확인</button></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td colspan="2"><input type="password" id="userPw" placeholder="비밀번호" ></td>
                </tr>
                <tr>
                    <th>비밀번호 확인</th>
                    <td colspan="2"><input type="password" id="userPwChk" placeholder="비밀번호 확인"></td>
                </tr>
                <tr>
                    <th>비밀번호 확인 질문</th>
                    <td style="border: none;"><select name="phone1" style="width: 290px;">
                        <option value="1" selected>기억에 남는 추억의 장소는?</option>
                        <option value="1">자신의 보물 1호는?</option>
                        <option value="1">가장 좋아하는 과일은?</option>
                        <option value="1">가장 좋아했던 초등학교 선생님 성함은?</option>
                        <option value="1">인상 깊게 읽은 책 제목은?</option>
                        <option value="1">추억하고 싶은 날짜가 있다면?</option>
                    </select></td>
                </tr>
                <tr>
                    <th>비밀번호 확인 답변</th>
                    <td colspan="2"><input type="text" name="id" size="55" maxlength="12"></td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td colspan="2"><button>남자</button>&nbsp;<button>여자</button></td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td colspan="2">
                        <select name="phone1">
                            <option value="1" selected>010</option>
                            <option value="1">011</option>
                            <option value="1">016</option>
                            <option value="1">017</option>
                            <option value="1">018</option>
                            <option value="1">019</option>
                        </select>
                        -
                        <input type="text" name="phone2" size="15" maxlength="4">
                        -
                        <input type="text" name="phone2" size="15" maxlength="4">
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td colspan="2"><input type="email" name="id" size="55" maxlength="12"></td>
                </tr>
                <tr>
                    <th>우편번호</th>
                    <td><input type="text" id="sample4_postcode" placeholder="우편번호"></td>
                    <td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호찾기"></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td><input type="text" id="sample4_roadAddress" size="30" placeholder="도로명주소"></td>
                    <td><input type="text"  size="6" placeholder="나머지주소"></td>
                    <span id="guide" style="color:#999"></span>
                </tr>
                <tr>
                    <th>주소</th>
                    <td colspan="2"><input type="email" name="id" size="55" maxlength="12"></td>
                </tr>
                <tr>
                    <th>상세주소</th>
                    <td colspan="2"><input type="email" name="id" size="55" maxlength="12"></td>
                </tr>
        </table>
        <div>
            <h3>회원이용약관</h3>
            <iframe style="width: 550px;"></iframe>
            <p>
                <input type="checkbox"><label>이용약관에 동의합니다.</label>
            </p>
            <iframe style="width: 550px;"></iframe>
            <p>
                <input type="checkbox"><label>이용약관에 동의합니다.</label>
            </p>
        </div>
        <div id="join">
        <button id="joinb" style="width: 100px; height: 30px;"><a href="javascript:;">회원가입</a></button>
        </div>
    </form>
</div>
</div>
</div>
<footer style="text-align: center; background-color: #222222;">
    <div style="color: #999999;">
        <span id="footer1">StudyUs</span>
        <span id="footer2">전문 스터디카페</span>
    </div>
    <hr>
    <div style="color: #999999;">
        Copyright ⓒ 2019 StudyUs
    </div>
</footer>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script>
        //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
        function sample4_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraRoadAddr !== ''){
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }
                    // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                    if(fullRoadAddr !== ''){
                        fullRoadAddr += extraRoadAddr;
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                    document.getElementById('sample4_roadAddress').value = fullRoadAddr;

                    // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                    if(data.autoRoadAddress) {
                        //예상되는 도로명 주소에 조합형 주소를 추가한다.
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                    } else {
                        document.getElementById('guide').innerHTML = '';
                    }
                }
            }).open();
        }

        $(function(){
            $('#userPw').keyup(function(){
                $('#chkNotice').html('');
            });

            $('#userPwChk').keyup(function(){

                if($('#userPw').val() != $('#userPwChk').val()){
                    $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
                    $('#chkNotice').attr('color', '#f82a2aa3');
                } else{
                    $('#chkNotice').html('비밀번호 일치함<br><br>');
                    $('#chkNotice').attr('color', '#199894b3');
                }

            });
        });

    </script>
</body>
</html>