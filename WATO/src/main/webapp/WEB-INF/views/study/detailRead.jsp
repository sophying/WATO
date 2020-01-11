<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사회원스터디 모집 등록</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

    
<style media="screen">
.list-table {
  width: 100%;
  border: solid 0px #ccc;
  border-collapse: collapse;
}
.list-table tbody th {
  width:20%;
  text-align: left;
  font-size:20pt;
  background: #F9F9F9;
  border-bottom: solid 1px #ccc;
}
.list-table tbody td {
  width:70%;
  padding: 2%;
  background: #fff;
  border-bottom: solid 1px #ccc;

}

@media only screen and (max-width: 479px) {
 
  .list-table {
    border-top:none;
  }
  .list-table tbody tr {
    display: block;
    background: #fff;
  }
  .list-table tbody th {
    display: list-item;
    border: none;
    list-style: none;
    width: 60%;
    border-top: solid 1px #ccc;
    
  }
  .list-table tbody td {
    display: list-item;
    border: none;
    list-style: none;
  }
}



</style>
</head> 
<body class="container mt-auto">

<div class="container mt-10">
  <div class="row mt-5 w-100 h-100 justify-content-md-center">
     <div class="w-100 h-100">
        <label for="name" class="pb-3 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="10">모집글 상세보기</font></label>
        <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
			
			<table class="list-table">
			  <tbody>
			    <tr>
			      <th class="pl-4"><label for="level" class="pt-1 mt-1 control-label font-weight-bold w-100">카테고리</label></th>
			      <td>${listOne.t_category }</td>
			    </tr>
			    <tr>
			      <th class="pl-4"><label for="level" class="pt-1 mt-1 control-label font-weight-bold w-100">스터디 주제</label></th>
			      <td>${listOne.t_title }</td>
			    </tr>
			     <tr>
			      <th class="pl-4"><label for="level" class="pt-1 mt-1 control-label font-weight-bold w-100">스터디 난이도</label></th>
			      <td>${listOne.t_level}</td>
			    </tr>
			     <tr>
			      <th class="pl-4">스터디 인원수</th>
			      <td>${listOne.t_people }</td>
			    </tr>
			     <tr>
			      <th class="pl-4">스터디 장소</th>
			      <td>${listOne.t_place}</td>
			    </tr> 
			     <tr>
			      <th class="pl-4">상세내용</th>
			      <td>${listOne.t_content }</td>
			    </tr>
			  </tbody> 
			</table>
		</div> 
	</div> 
	<div class="container"> 
		<iframe src="http://localhost:8080/study/reply" scrolling="no" id="classReply" style="width: 100%; border: none;"></iframe>
	</div>
  </div>    
</div>
 
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>   
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">

</script>
</body>
</html>
