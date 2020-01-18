<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
    	input {
    		border: 0px none;
    	}
    </style>
</head>
<body>

<div>회원관리 페이지</div>
<form role="form" method="post" action="auth.do">
    <table border="1px solid #999999">
        <tr>
            <th>프로필 사진</th>
            <th>이력서</th>
            <th>성별</th>
            <th>휴대폰 번호1</th>
            <th>휴대폰 번호2</th>
            <th>휴대폰 번호3</th>
            <th>이메일</th>
            <th>주소1</th>
            <th>주소2</th>
            <th>주소3</th>
            <th>승인여부</th>
        </tr>
        <c:forEach var="AppVO" items="${list}">
        <tr>
            <td><input type="text" id="Teach_Profile" name="Teach_Profile" value="${AppVO.app_Profile}"></td>
            <td><input type="text" id="Teach_Resume" name="Teach_Resume" value="${AppVO.app_Resume}"></td>
            <td><input type="text" id="Teach_Gender" name="Teach_Gender" value="${AppVO.app_Gender}"></td>
            <td><input type="text" id="Teach_Phone1" name="Teach_Phone1" value="${AppVO.app_Phone1}"></td>
            <td><input type="text" id="Teach_Phone2" name="Teach_Phone2" value="${AppVO.app_Phone2}"></td>
            <td><input type="text" id="Teach_Phone3" name="Teach_Phone3" value="${AppVO.app_Phone3}"></td>
            <td><input type="text" id="User_Email" name="User_Email" value="${AppVO.app_Email}"></td>
            <td><input type="text" id="Teach_Addr1" name="Teach_Addr1" value="${AppVO.app_Addr1}"></td>
            <td><input type="text" id="Teach_Addr2" name="Teach_Addr2" value="${AppVO.app_Addr2}"></td>
            <td><input type="text" id="Teach_Addr3" name="Teach_Addr3" value="${AppVO.app_Addr3}"></td>
            <td><button type="submit" name="submit">승인</button></td>
        </tr>
        </c:forEach>
    </table>
    <button type="reset">뒤로가기</button>
</form>

</body>
</html>