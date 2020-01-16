<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            padding: 10px;
        }
    </style>
</head>
<body>
<div class="wrap0" style="text-align: center;">
    <div class="wrap2">

        <div id="header">
            <div style="float: left"><a href="javascript:;"><img src="../resource/images/book_main_icon.png" width="80" height="50"></a></div>
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
       <div>
        <form role="form" method="post" autocomplete="off">
	        <div><img src="../resource/images/facebook_cover_photo_1.png" width="500px;" style="margin-top: 30px;"></div>
	        <div class="std_info1" style="margin-bottom: 30px; padding: 10px; background-color: #ffee76;">회원 정보 수정</div>
	        <div class="std_exp1" style="background-color: #dadeeb; border-top: 1px solid #999999; border-bottom: 1px solid #999999; margin-bottom: 30px;">
	            <p style="float: left; margin: 0px;"><img src="../resource/images/book_main_icon.png" width="70px;"></p>
	            <div>저희 스터디어스를 이용해 주셔서 감사합니다. <span>${std.user_Id}${teach.user_Id}</span>님은 학생이십니다.
	                <p style="float: right; margin: 0px;"><img src="../resource/images/book_main_icon.png" width="70px;"></p>
	                <br>종료 예정 스터디는 0건이 있습니다.
	            </div>
	        </div>
	        <div style="font-size: 17px;">기본정보</div>
	        <div>
	            <table class="table_main" style="text-align: left;">
	                <caption style="text-align: right;"><img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"> 필수입력사항</caption>
	                <tr>
	                    <th>아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="text" name="Std_Id" value="${std.user_Id}${teach.user_Id}" readonly="readonly"></td>
	                </tr>
	                <tr>
	                    <th>새 비밀번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="password" name="User_Pwd" placeholder="새 비밀번호 입력"></td>
	                </tr>
	                <tr>
	                    <th>새 비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="password" id="" name="" placeholder="새 비밀번호 확인"></td>
	                </tr>
	                <tr>
	                    <th>비밀번호 확인 질문 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td>
	                        <select name="Std_Pwd_Qs" value="${std.std_Pwd_Qs}${teach.teach_Pwd_Qs}" style="">
	                            <option value="기억에 남는 추억의 장소는?" selected>기억에 남는 추억의 장소는?</option>
	                            <option value="자신의 보물 1호는?">자신의 보물 1호는?</option>
	                            <option value="가장 좋아하는 과일은?">가장 좋아하는 과일은?</option>
	                            <option value="가장 좋아했던 초등학교 선생님 성함은?">가장 좋아했던 초등학교 선생님 성함은?</option>
	                            <option value="인상 깊게 읽은 책 제목은?">인상 깊게 읽은 책 제목은?</option>
	                            <option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
	                        </select>
	                    </td>
	                </tr>
	                <tr>
	                    <th>비밀번호 확인 답변 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="text" name="Std_Pwd_As" value="${std.std_Pwd_As}${teach.teach_Pwd_As}"></td>
	                </tr>
	                <tr>
	                    <th>성별 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><span>${std.std_Gender}${teach.teach_Gender}</span></td>
	                </tr>
	                <tr>
	                    <th>휴대폰 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td>
	                    <input type="text" id="Std_Phone1" name="Std_Phone1" value="${std.std_Phone1}${teach.teach_Phone1}" />
	                    -
	                    <input type="text" id="Std_Phone2" name="Std_Phone2" value="${std.std_Phone2}${teach.teach_Phone2}" />
	                    -
	                    <input type="text" id="Std_Phone3" name="Std_Phone3" value="${std.std_Phone3}${teach.teach_Phone3}" />
	                    </td>
	                </tr>
	                <tr>
		                <th>이메일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
		                    <td><input type="text" id="Std_Email" name="Std_Email" value="${std.std_Email}${teach.teach_Email}" /></td>            
		            </tr>
	                <!-- <tr>
	                    <th>이메일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td>
	                        <input type="text" id="" name="" placeholder="이메일"> @ <input type="text" id="" name="">
	                        <select id="" name="">
	                            <option value="gmail.com">gmail.com</option>
	                            <option value="naver.com">naver.com</option>
	                            <option value="hanmail.net">hanmail.net</option>
	                            <option value="daum.com">daum.com</option>
	                        </select>
	                    </td>
	                </tr> -->
	                <tr>
	                    <th>우편번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="text" id="Std_Addr1" name="Std_Addr1" value="${std.std_Addr1}${teach.teach_Addr1}" placeholder="우편번호"><input type="button" id="" name="" value="우편번호 찾기"></td>
	                </tr>
	                <tr>
	                    <th>주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="text" id="Std_Addr2" name="Std_Addr2" value="${std.std_Addr2}${teach.teach_Addr2}" placeholder="도로명주소"></td>
	                </tr>
	                <tr>
	                    <th>상세주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                    <td><input type="text" id="Std_Addr3" name="Std_Addr3" value="${std.std_Addr3}${teach.teach_Addr3}" placeholder="상세주소"></td>
	                </tr>
	            </table>
	        </div>
	
	        <!-- <div style="margin-top: 50px; padding-bottom: 10px; font-size: 17px;">추가정보</div>
	        <div>
	            <table class="table_sub">
	                <tr>
	                    <th>생년월일</th>
	                    <td><input type="text" id="" name=""> 년 <input type="text" id="" name=""> 월 <input type="text" id="" name=""> 일 </td>
	                </tr>
	                <tr>
	                    <th>지역</th>
	                    <td>
	                        <select>
	                            <option value="서울">서울</option>
	                            <option value="경기">경기</option>
	                            <option value="광주">광주</option>
	                            <option value="부산">부산</option>
	                            <option value="제주">제주</option>
	                        </select>
	                    </td>
	                </tr>
	            </table>
	        </div> -->
            <div style="margin: 40px;">
                <button type="submit" style="margin-right: 30px; width: 150px; height: 50px;">회원정보수정</button>
                <button type="reset" style="width: 150px; height: 50px;">취소</button>
            </div>
        </form>
       </div>
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
</body>
</html>