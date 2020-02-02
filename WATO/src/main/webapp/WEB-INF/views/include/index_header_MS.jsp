<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container"> 
            <div class="row">
                <!-- <div class="col-lg-6 offer d-flex d-block"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div> --> 
                <div class="row mx-auto w-100 text-right"> 
                    <ul class="menu list-inline mb-0 w-100 ">
                    	<c:if test="${std == null && teach == null}"> 
                    		<li class=" pl-2 list-inline-item pull-left"><a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success btn-sm">회원가입 하러 가기</a></li> 
                    	</c:if>
                    	<c:if test="${std == null && teach == null}">
                        	<li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<li class="list-inline-item">${std.user_Id  } 님 환영합니다.</li>
                        	<li class="list-inline-item"><a href="/student/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm" method="get" action="/student/std_info">
				                <input type="hidden" value="${std.std_Orgname}" readonly="readonly">
				                <input type="hidden" value="${std.std_Gender}" readonly="readonly">
				                <input type="hidden" value="${std.user_Email}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone1}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone2}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone3}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr1}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr2}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr3}" readonly="readonly">
                        	<a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<i class="fa fa-home" aria-hidden="true" style="color:black; font-size: 20px;"></i>
                        	</a>
                        		<div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
								    <a  class="dropdown-item  text-black-50 font-weight-bold" href="/board/myinformation">즐겨찾기/좋아요</a> 
                        			<a href="javascript:document.myForm.submit();" class="dropdown-item  text-black-50 font-weight-bold">내정보 수정</a>
			                   	 	<a href="/board/Myenroll" class="dropdown-item  text-black-50 font-weight-bold">내가 개설한 스터디 보러가기</a> 
                        			 <c:if test="${std != null }">
			                   	 		<a href="/study/user_myList" class="dropdown-item  text-black-50 font-weight-bold">참여한 스터디 보러가기</a> 
				                    </c:if>
				                    <c:if test="${teach != null }">
			                   	 		<a href="/study/user_myList" class="dropdown-item  text-black-50 font-weight-bold">나의 강좌보러가기</a>
				                    </c:if>
								 </div>
                        	</form>
                        	</li>
                        </c:if>
                        <c:if test="${teach != null}">
                        	<p class="list-inline-item">${teach.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="/teach/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm2" method="get" action="/teach/teach_info">
				                <input type="hidden" value="${teach.teach_Orgname}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Gender}" readonly="readonly">
				                <input type="hidden" value="${teach.user_Email}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone3}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr3}" readonly="readonly">
                        	<a class="dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<i class="fa fa-home" aria-hidden="true" style="color:black; font-size: 20px;"></i>
                        	</a> 
                        		<div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
								    <a  class="dropdown-item  text-black-50 font-weight-bold" href="/board/myinformation">즐겨찾기/좋아요</a> 
                        			<a href="javascript:document.myForm2.submit();" class="dropdown-item  text-black-50 font-weight-bold">내정보 수정</a>
                        			 <c:if test="${std != null }">
			                   	 		<a href="/study/user_myList" class="dropdown-item  text-black-50 font-weight-bold">참여한 스터디 보러가기</a> 
				                    </c:if>
				                    <c:if test="${teach != null }">
			                   	 		<a href="/study/user_myList" class="dropdown-item  text-black-50 font-weight-bold">나의 강좌보러가기</a>
				                    </c:if>
								 </div>
                        	</form>
                        	</li>
                        </c:if>
                        <c:if test="${!std.user_Id.equals('admin')}">
                        <li class="list-inline-item pr-2"><a href="/qna/getQnaList" class="text-black-50 font-weight-bold">문의하기</a></li>
                        </c:if>
                        <c:if test="${std.user_Id.equals('admin')}">
                        <li class="list-inline-item"><a href="/admin/index_admin" class="text-black-50 font-weight-bold">관리자</a></li>                        
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="/admin/terms2" class="text-black-50 font-weight-bold">이용약관</a></li> -->                       
                    	
                    </ul>
                </div>
            </div>
        </div> 
</body>
</html>