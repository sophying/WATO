<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사회원스터디 모집 등록</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

</head>
<style>
	body{
	 background-color: #e0e0e0;
	 }
	th{
		disply:none;
		text-align: right;
	}
	
	aside{
		position:fixed;
		top:17px;
		left:52%;
		margin-left: 15pc;
		background-color: #fff;
	}
	#main{
		box-sizing: border-box;
		float:left;
		overflow: hidden;
		background-color: #fff;
	} 
	div.level-mark{
		position:fixed;
		top: 17px;
		left: 200px;
		z-index: ;
	}
	.level-mark{
		width: 90px;
		height: 90px;
		overflow: hidden;
		text-align: center;
		background: #5a7fa2;
		line-height: normal;
	}
	.label{
		margin-top: 26px;
		font-weight: 700;
		font-size: 1pc;
		color: #ffeb3b;
	}
	.level{
		margin-top: 3px;
		font-size: 2pc;
		color: #fff;
	}
	.goButton{
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 100%;
		height: 56px;
		line-height: 56px;
		text-align: center;
		font-size: 15pt;
	}
	input[type=submit] {
    cursor: pointer;
    outline: 0;
}

</style>
</head>
<body >
<header class="header mb-0">
   
</header>



	<div class="container  mx-auto">
		<div class="row mt-3 justify-content-md-center d-inline-block w-100">
			<div id="main" class="rounded-sm d-inline-block w-75">
				<div class="form-group container-fluid border-bottom w-100">
					<div class="embed-responsive embed-responsive-16by9">
 						<iframe class="embed-responsive-item mt-3 w-100 h-100" src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1" ></iframe>
					</div>
							<label for="name" class="pb-3 row m-0 text-justify  cols-sm-2 p-2 control-label d-flex justify-content-center pt-3">
							<font size="10">20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!</font></label>
					</div>	
					
					
					<div class="h-75 row d-flex p-2 pb-5 m-0 container d-inline-block">
						<div class=" h-100 w-25 d-inline-block">
							<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
								<font size="6">스터디 소개</font>
							</label>
						</div>
						
						<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-2 pr-5 container-fluid ">
							<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-2 " >
								
								ㅇㄴㄹㄴㄹㄴㄹㄴ
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!
								<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!

							</div>
						</div>
					</div>
					
					
					<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block ">
						<div class=" h-100 w-25 d-inline-block">
							<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
								<font color="#787878" size="4">상세 내용</font>
							</label>
						</div>
						
						<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-2  pr-5 container-fluid border-top">
							<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-5" >
								
								<table style="width:600px;">
									<tr>
										<td id="t_level"><font color="#a0a0a0" > <label class=" d-flex p-2 pr-0 control-label ">난이도 : </label></font></td>
										<td>고급</td>
										<td id="t_level"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">인원수 : </label></font></td>
										<td> 30</td>
									<tr>
										<td id="t_price"><font color="#a0a0a0" > <label class="d-flex p-2  pr-0 control-label">참여비 : </label></font></td>
										<td>70,000</td>
									<tr>
										<td id="t_people"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">장소 : </label></font></td>
										<td colspan="3"> 서울시 노원구 월계2동 신화초등학교 강당</td>
									<tr>
										<th id="t_place" class="w-25"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">장소 : </label></font></th>
										<td> 강남</td>
									</tr>	
								</table>
							</div>
						</div>
					</div>
	
					
					
					<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block">
						<div class=" h-100 w-25 d-inline-block">
							<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
								<font size="5">상세 내용</font>
							</label>
						</div>
						
						<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-2 pr-5 container-fluid border-bottom  border-top">
							<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-3" >
								
								ㅇㄴㄹㄴㄹㄴㄹㄴ
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!
								<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!<br>
								20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!
							</div>
						</div>
					</div>
					
					
					</div>
				
				
		<aside class="d-inline-block w-25 rounded-sm ">
					<div class="form-group container-fluid ">
						<div class="cols-sm-1 d-inline-block d-flex justify-content-center">
							<div class="card-body">
								<div class="input-group d-flex justify-content-center font-weight-bold ">
									<font size="5">20년 숙련된 개발자의 노하우를 전수합니다!!! 누구나 참여 하세요!! 마감입박!!!</font>
								</div>
							</div>
						</div>
						<div class=" border-top border-bottom h-100 w-100 d-inline-block">
							<label for="name" class="font-weight-bold row d-flex m-0 mt-2 text-justify   control-label justify-content-center">
							<font size="5">기간</font>
							</label>
							<div class="w-100 d-inline-block row d-flex m-0 justify-content-center ">
								<div id="t_startdate" class="form-group d-flex pt-2 w-25 d-inline-block  justify-content-center">
									2020-01-01
								</div>	
								<div class="form-group d-flex pt-2 d-inline-block  justify-content-center"> &nbsp;~ &nbsp;</div>
								<div id="t_startdate" class="form-group d-flex pt-2 w-25 d-inline-block  justify-content-center">
									2020-02-28
								</div>
							</div>		
								<div id="t_startdate" class="form-group d-flex pt-2 d-block  justify-content-center">
									월 화 수 목
								</div>	
						</div>
						<input type="submit" id="goButton" class="goButton" value="참여신청"/>
																				<!-- 마크  -->
	<div class="level-mark">
		<div class="label">LEVEL</div>
		<div class="level">초급</div>
	</div>
					</div>
				</aside>
			</div>
		</div>

	

	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>
