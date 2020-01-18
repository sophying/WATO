<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="css/text" href="../resources/css/std_info.css">
</head>
<body>
<div class="wrap0" style="text-align: center;">
    <div class="wrap2">

        <nav>
       		<%@ include file="../include/header_jihye.jsp" %>
    	</nav>
 
        <form action = "/sign_up/terms">
        <div><img src="../images/facebook_cover_photo_1.png" width="500px;" style="margin-top: 30px;"></div>
        <div class="std_info1" style="margin-bottom: 30px; padding: 10px; background-color: #ffee76;">회원 정보 수정</div>
        <div class="std_exp1" style="background-color: #dadeeb; border-top: 1px solid #999999; border-bottom: 1px solid #999999; margin-bottom: 30px;">
            <p style="float: left; margin: 0px;"><img src="../images/book_main_icon.png" width="70px;"></p>
            <div>저희 스터디어스를 이용해 주셔서 감사합니다. 최지혜님은 학생이십니다.
                <p style="float: right; margin: 0px;"><img src="../images/book_main_icon.png" width="70px;"></p>
                <br>종료 예정 스터디는 0건이 있습니다.
            </div>
        </div>
        <div style="font-size: 17px;">기본정보</div>
        <div>
            <table class="table_main" style="text-align: left;">
                <caption style="text-align: right;"><img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"> 필수입력사항</caption>
                <tr>
                    <th>아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td>${sign_up.Std_Id}</td>
                </tr>
                <tr>
                    <th>비밀번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="password" id="Std_Pwd" name="Std_Pwd" placeholder="비밀번호 입력"></td>
                </tr>
                <tr>
                    <th>비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="password" id="Std_Pwd_Qs" name="Std_Pwd_Qs" placeholder="비밀번호 확인"></td>
                </tr>
                <tr>
                    <th>비밀번호 확인 질문 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td>
                        <select id="" name="" style="">
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
                    <td><input type="text" id="" name="" placeholder="답변 선택 후 입력"></td>
                </tr>
                <tr>
                    <th>성별 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="radio" id="" name="">남자
                        <input type="radio" id="" name="" checked>여자</td>
                </tr>
                <tr>
                    <th>휴대폰 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td>
                        <select id="" name="">
                            <option value="010" selected>010</option>
                            <option value="011" selected>011</option>
                            <option value="016" selected>016</option>
                            <option value="017" selected>017</option>
                            <option value="018" selected>018</option>
                            <option value="019" selected>019</option>
                        </select>
                        -
                        <input type="text" id="" name="" placeholder="0000">
                        -
                        <input type="text" id="" name="" placeholder="0000">
                    </td>
                </tr>
                <tr>
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
                </tr>
                <tr>
                    <th>우편번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="text" id="" name="" placeholder="우편번호"><input type="button" id="" name="" value="우편번호 찾기"></td>
                </tr>
                <tr>
                    <th>주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="text" id="" name="" placeholder="도로명주소"></td>
                </tr>
                <tr>
                    <th>상세주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
                    <td><input type="text" id="" name="" placeholder="상세주소"></td>
                </tr>
            </table>
        </div>

        <div style="margin-top: 50px; padding-bottom: 10px; font-size: 17px;">추가정보</div>
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
        </div>
            <div style="margin: 40px;">
                <button type="submit" style="margin-right: 30px; width: 150px; height: 50px;">회원정보수정</button>
                <button type="reset" style="width: 150px; height: 50px;">취소</button>
            </div>
        </form>

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