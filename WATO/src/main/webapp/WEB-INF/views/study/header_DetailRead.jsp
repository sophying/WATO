<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>스터디어스 - 세상을 뒤흔들어라</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.carousel.css"> 
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/css/style.default.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes--> 
    <link rel="stylesheet" href="../resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]--> 
    <link rel="icon" type="image/png" href="../resource/images/icons/favicon.ico"/>
</head>
<style>
    #top{
        position: static;
        margin-left: auto;
        margin-right: auto;
        background-color: #e0e0e0;
    }
    #studyusnav{
        margin-left: 0;
        margin-right: 0;
    }
    #search{
        margin-left: auto;
        margin-right: auto;
    }


    #new{
        position: static;
        margin-left: auto;
        margin-right: auto;
    }

    #content{
        margin-left: auto;
        margin-right: auto;
    }
    #footer {
        margin-left: auto;
        margin-right: auto;
        background-color: #fff;
    }
    #navigation > ul > li > ul {
        width: 100.3%;
    }
  

    .cate_list{
        padding-bottom: 10px;
    }
    .cate_list a {
        float: left;
        display: block;
        width: 33%;
        text-align: center;
        padding: 5px 0;
        color: #27323c;
    }
    .cate_list a > * {
        display: inline-block;
        font-size: 13px;
    }
    .cate_list > a > span > img {
        max-width: 100%;
        vertical-align: middle;
        border: 0;
    }
    #icon{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    #all{
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .carousel-item {
        height: 50vh;
        min-height: 350px;
        background: no-repeat center center scroll;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
  
    .imgrank img{
	    position:absolute;
	    background:none;
	 	width:100%;
	 	height: auto;
	 	max-width: 40px; 
	 	z-index: 10;
	 }
	body{
	 background-color: #e0e0e0;
	 }
	th{
		disply:none;
		text-align: right;
	}
	
	aside{
		position:fixed;
		top:80px;
		right:80px;
		margin-left: 15pc;
		background-color: #fff; 
	} 
	#main{
		box-sizing: border-box;
		float:left;
		overflow: hidden;
		background-color: #fff;
	} 
	iframe{
		min-width: 1000px;
	}

	
	
	.level-mark2{
		width: 90px;
		height: 90px;
		overflow: hidden;
		text-align: center;
		background: #5a7fa2;
		line-height: normal;
	}
	.label2{
		margin-top: 26px;
		font-weight: 700;
		font-size: 1pc;
		color: #ffeb3b;
	}
	.level2{
		margin-top: 3px;
		font-size: 2pc;
		color: #fff;
	}
	
	.qnaButton{
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 100%;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15pt;
		margin-top:20px;
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
	.successBtn{
		border:none;
		background-color: #e0e0e0;
		color: #fff;
		display: block;
		width: 100%;
		height: 56px;
		line-height: 56px;
		text-align: center;
		font-size: 15pt;
	}
	.infoModi{
		box-sizing:border-box;
		position:relative;
		top:0px;
		left:500px;
		border:none;
		background-color: #5a7fa2;
		color: #fff;
		display: block;
		width: 80px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15pt;
	}
	input[type=submit] {
    cursor: pointer;
    outline: 0;
	}
	#QnA{
	background-color: #5a7fa2;
	color: #fff;
	}
	.btn-circle.btn-xl {
	  width: 160px;
	  height: 160px; 
	  padding: 5px 5px 5px 5px;
	  border-radius: 50px;
	  font-size: 24px;
	  line-height: 1.33;
	}
	
	.btn-circle {
	  width: 20px;
	  height: 20px;
	  padding: 0px 0px;
	  border-radius: 15px;
	  text-align: center;
	  font-size: 12px;
	  line-height: 1.42857;
	}
	textarea{
	 resize: none;
	 background-color: transparent;
	/*  border: none; */
	}
</style>
<body>
<!-- @@@@@@@@ 헤더 시작 @@@@@@@@ -->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <%@include file="../include/hr/teacher_detail_header.jsp" %>
</header>
<!-- @@@@@@@@ 헤더 끝 @@@@@@@@ -->
<!-- @@@@@@@@ //// 본론 진입 /// @@@@@@@@ -->
    <div class="container mx-auto">
				<div class=" justify-content-md-center d-inline-block w-100">
					<div id="main" class="rounded-sm d-inline-block w-100">  <!-- @@@@@@@@ 메인 시작 @@@@@@@@ -->
						<div class="form-group container-fluid  w-100">
								<%-- <input id="listOne_URL"type="hidden" value="#{listOne.t_URL }"/> --%>
								
							<c:choose>	
								<c:when test="${listOne.t_URL != null }">
							<div class="embed-responsive embed-responsive-16by9">
		 							<iframe id="main-iframe"class="embed-responsive-item mt-3 w-100 h-100" src="${listOne.t_URL }" ></iframe>
							</div>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>	
															
									<label for="name" class="pb-3 row m-0 text-justify w-100 border-top cols-sm-2 p-2 pl-5 pr-5 control-label d-flex justify-content-center pt-3">
										<font size="8">${listOne.t_title }</font>
									</label>
								<c:if test="${(user.m_user_id).equals(listOne.t_userId) }">	
	<!--  내용 수정 -->				<a href="teacherModi?t_no=${listOne.t_no}" ><input type="submit" id="infoModi" class="infoModi align-self-end d-inline-block justify-content-center mt-2 mb-2" value="수정"/></a>			
	<!--  내용 삭제 -->				<a href="teacherDelete?t_no=${listOne.t_no}" ><input type="submit" id="infoModi" class="infoModi align-self-end d-inline-block justify-content-center mt-2 mb-2" value="삭제"/></a>			
								</c:if>
							</div>	
							<div class="h-75 container d-inline-block border-top">
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center">
								</div>		
							</div>
							
							

							<div class="h-75 row d-flex  p-2  m-0 container d-inline-block">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-3 pb-4 m-0 text-justify   control-label justify-content-center">
										<font size="6">강사 소개</font>
									</label>
									<div class="cols-sm-5 pb-5 pr-2 pl-2">
						              <div class="input-group d-flex justify-content-center ">
						                <img id="img_btn_0" src="../resources/imgs/김혜련_증명.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
						              </div>
           						    </div>
								</div>
							
	
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-2  pl-5 pr-5 justify-content-center container-fluid ">
									<div  style=" word-break:break-all; height:100%;"class="row h-50 d-block d-flex pt-2 "  scroll="no" >
										
										<pre style="height:250px;" ><font size="4"><c:out value="${listOne.t_intro }" /></font></pre>
									</div>
								</div>
							</div>
							
							<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block ">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
										<font color="#787878" size="4">상세 내용</font>
									</label>
								</div>
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-5  pl-5 pr-5 justify-content-center container-fluid border-top">
									<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-5" >
										
										<table style="width:600px;">
											<tr>
												<th id="t_level"><font color="#a0a0a0" > <label class=" d-flex p-2 pr-0 control-label ">난이도 : </label></font></th>
												<td>${listOne.t_level }</td>
												<th id="t_people"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">인원수 : </label></font></th>
												<td> ${listOne.t_people }</td>
											</tr>	
											<tr>
												<th id="t_price"><font color="#a0a0a0" > <label class="d-flex p-2  pr-0 control-label">참여비 : </label></font></th>
												<td>${listOne.t_price }</td>
											</tr>	
											<tr>
												<th id="t_people"><font color="#a0a0a0" > <label class="d-flex p-2 pr-0 control-label">장소 : </label></font></th>
												<td colspan="3">${listOne.t_place }</td>
											</tr>	
										</table>
									</div>
								</div>
							</div>
			
							
							
							<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block">
								<div class=" h-100 w-25 d-inline-block">
									<label for="name" class="row d-flex  pt-5 m-0 text-justify   control-label justify-content-center">
										<font size="5">강의 내용</font>
									</label>
								</div>
								
								<div  class="cols-sm-5 d-inline-block w-75 mb-1 pb-3 pl-5 pr-5 pt-3 container-fluid justify-content-center  border-top">
									<div  style=" word-break:break-all;"class="row h-50 d-block d-flex pt-3" >
										<pre><font size="4"><c:out value="${listOne.t_content }" /></font></pre>
									</div>
								</div>
							</div>
							
	<!-- @@@@@@@@ //// 댓글 ( Q & A ) 작성  /// @@@@@@@@ -->	
							<c:forEach var="reply" items="${reply}">
								<c:choose>
									<c:when test="${(listOne.t_userId).equals(reply.r_userid)}">
										<form class="updateform" action="./modireply"> 
										<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top " style="background: #f1dfe955;">
											<div  class="cols-sm-5 d-inline-block w-100 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
												<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 " >
							 <font size="4"><span id="cnttxt1" class="d-flex justify-content-end"></span></font> 
														<table class="justify-content-center ml-2 d-inline-block w-100">
															<tr>
																<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">리더</font></td>
																<td colspan="5" >
																	<textarea name="r_content" class="r_content"  onkeydown="resize(this)" onkeyup="resize(this)" cols="100" readonly style="overflow-x:hidden; overflow-y:hidden;  ">${reply.r_content}</textarea>
																<td> 
															</tr>  
															<tr>
																<td>
																<c:if test="${(listOne.t_userId).equals(user.m_user_id) }">
																	<input type="button"id="modiReButton" value="수정하기" class="modiReButton d-inline-block" onclick="updatefun(this)" />
																	<a href="./DeleteReply/${listOne.t_no}/${reply.r_no}">삭제하기</a>
																</c:if>	
																</td>
																<td>
																	<input type="hidden" name="t_no" value="${listOne.t_no}" />
																	<input type="hidden" name="r_no" value="${reply.r_no}" /> 
																</td>
															</tr> 
														</table> 
												</div> 
											</div>		
										</div>
										</form>
									</c:when>
									<c:otherwise>
										<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top "> 
											<div  class="cols-sm-5 d-inline-block w-100 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
												<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 " >
													<form class="updateform" action="./modireply"> 
													
			 			<font size="4"><span class="d-flex justify-content-end">     </span></font> 
														
														<table class="justify-content-center d-inline-block w-100">
															<tr>
																<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">${reply.r_userid }</font><font size="4"> 님</font></td>
																<td colspan="5" > 
																	<textarea name="r_content" class="r_content"  onkeydown="resize(this)" onkeyup="resize(this)" cols="100" readonly>${reply.r_content}</textarea>
																<td> 
															</tr>
															<tr>
																<td> 
																<c:if test="${(reply.r_userid).equals(user.m_user_id) }">
																	<input type="button"class="modiReButton d-inline-block"  value="수정하기" onclick="updatefun(this)" />
																	<a href="./DeleteReply/${listOne.t_no}/${reply.r_no}">삭제하기</a>
																</c:if>	
																<c:if test="${(listOne.t_userId).equals(user.m_user_id) }">
																	<div style="background:#e0e0e0; " class="d-flex d-block justify-content-end w-100">
																		<textarea name="r_content" class="r_content d-flex justify-content-end"  onkeydown="resize(this)" style="border:1px;" onkeyup="resize(this)" cols="100" readonly>dgdgggd</textarea>
																	</div>
																	<input type="button"class="leaderBtn d-inline-block"  value="답변하기" onclick="leaderfun(this)" />
																</c:if>
																</td>
																<td>
																	<input type="hidden" name="t_no" value="${listOne.t_no}" />
																	<input type="hidden" name="r_no" value="${reply.r_no}" />  
																</td>
															</tr> 
														</table>
													</form>
												</div>
											</div>		
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach> 
							<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top ">
								<div  class="cols-sm-5 d-inline-block w-100 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
									<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 "  >
										<form role="from" method="post" action="./t_detailReply.do"> 
										<font size="4"><span id="cnttxt2" class="d-flex justify-content-end"></span></font>
											<table class="ml-2 justify-content-center d-inline-block w-100">
												<tr>
													<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="7">Q &amp; A</font></td>
													<td colspan="5" >
														<%-- <pre style="width:700px; height: 200px;"><font size="4">${reply.r_content}
														</font></pre> --%>  
														<textarea id="r_content2" name="r_content" rows="10" cols="100" placeholder="현재 스터디에 대한 궁금한 점이 있으십니까??물어봐 주세요~!!"></textarea>
													<td>    
												</tr>   
												<tr>
													<td>
														<input type="submit" id="qnaButton" class="qnaButton" value="질문하기"/>
													</td> 
												</tr>
											</table>
											<input type="hidden" name="t_no" value="${listOne.t_no}" />
											<input type="hidden" name="r_userid" value="${user.m_user_id }"/>
										</form>
									</div>
								</div>		
							</div>
							</div> 
							
					</div>    
					<!-- @@@@@@@@ 메인 끝 @@@@@@@@ -->  
						
	<!-- @@@@@@@@ //// 참여신청 시작 /// @@@@@@@@ -->	 
				<aside class="d-inline-block rounded-sm" >     
					<div  class="form-group container-fluid" style="height: auto;">
							<div class="cols-sm-1 d-inline-block d-flex justify-content-center"> 
								<div class="card-body">
									<div class="input-group d-flex justify-content-center font-weight-bold ">
										<font size="5">${listOne.t_title }</font>
									</div>
								</div> 
							</div> 
							<div class=" border-top border-bottom h-100 w-100 d-inline-block">
									<div class="level-mark2 d-inline-block">
										<div class="label2">LEVEL</div>
										<div class="level2">${listOne.t_level }</div>
									</div>
									<label for="name" class="font-weight-bold text-center row p-2 d-inline-block m-0 mt-2 text-justify w-50  control-label justify-content-center">
										<font size="5">기간</font>
									</label>
								<div class="w-100 d-inline-block row d-flex m-0 justify-content-center ">
									<div id="t_startdate" class="form-group d-flex pt-2  d-inline-block  justify-content-center">
										<font size="5"><fmt:formatDate value="${listOne.t_startDate }"  pattern="yyyy-MM-dd"/></font>
									</div>	
									<div class="form-group d-flex pt-2 d-inline-block  justify-content-center"> &nbsp; ~ &nbsp;</div>
									<div id="t_endDate" class="form-group d-flex pt-2  d-inline-block  justify-content-center">
										<font size="5"><fmt:formatDate value="${listOne.t_endDate }"  pattern="yyyy-MM-dd"/></font>
									</div>
								</div>		
								<div id="t_day" class="form-group d-flex pt-2 d-block  justify-content-center">
									<font size="5">${listOne.t_day }</font> 
								</div>	
							</div>
							<div class=" border-top border-bottom h-100 w-100 d-inline-block">
								<label for="t_price" class="font-weight-bold text-center row p-2 d-inline-block m-0 mt-2 text-justify w-100  control-label justify-content-center">
								 참가비 &nbsp;&nbsp;&nbsp;<font size="6">${listOne.t_price }</font>
								</label>
							</div>
						<c:choose>
								<c:when test="${(listOne.t_parti) == (listOne.t_people) }">
									<div class="goButton">마감되었습니다</div>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${(partiOne.p_userid).equals(user.m_user_id)}">    
											<div class="successBtn"id="success" >참여신청완료</div> 
											<input type="button" class="goButton mt-4"id="partiBnt"  data-toggle="modal" data-target="#t_cancle-modal"  value="참여신청취소하기"/> 
										</c:when> 
										<c:otherwise>
											<input type="button" class="goButton"id="partiBnt"  data-toggle="modal" data-target="#Form-modal"  value="참여신청"/> 
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
					</div>  
				</aside>
				 <%@include file="../include/teaher_participation.jsp" %>
				 <%@include file="../include/t_cancleForm.jsp" %>
				<!-- @@@@@@@@ //// 참여신청 끝 /// @@@@@@@@ -->
				 	
<!--*** FOOTER ***______________-->
			<div class="box text-center container mx-auto mb-3 " id="footer">
			    <div class="container ">
			        <div class="row ">
			            <div class="col-lg-3 col-md-6">
			                <h4 class="mb-3">페이지 정보</h4>
			                <ul class="list-unstyled">
			                    <li><a href="text.html">회사소개</a></li>
			                    <li><a href="text.html">이용약관</a></li>
			                    <li><a href="faq.jsp">FAQ</a></li>
			                    <li><a href="contact.jsp">문의하기</a></li>
			                </ul>
			                <hr>
			                <h4 class="mb-3">회원</h4>
			                <ul class="list-unstyled">
			                    <li><a href="#" data-toggle="modal" data-target="#login-modal">로그인</a></li>
			                    <li><a href="register.jsp">회원가입</a></li>
			                </ul>
			            </div>
			            <!-- /.col-lg-3-->
			            <div class="col-lg-3 col-md-6">
			                <h4 class="mb-3">상위 카테고리</h4>
			                <h5>학생</h5>
			                <ul class="list-unstyled">
			                    <li><a href="category.jsp">스터디</a></li>
			                    <li><a href="category.jsp">과외</a></li>
			                    <li><a href="category.jsp">C언어</a></li>
			                </ul>
			                <h5>그룹장</h5>
			                <ul class="list-unstyled">
			                    <li><a href="category.jsp">스터디</a></li>
			                    <li><a href="category.jsp">그룹장 등록</a></li>
			                    <li><a href="category.jsp">광고 문의</a></li>
			                </ul>
			            </div>
			            <!-- /.col-lg-3-->
			            <div class="col-lg-3 col-md-6">
			                <h4 class="mb-3">찾아오는길</h4>
			                <p><strong>강동센터</strong><br><a class="text-muted">서울특별시</a><br><a class="text-muted">강동구</a><br><a class="text-muted">천호대로 1095</a>
			                    <br><a class="text-muted">2층</a><br><strong>미래능력개발교육원</strong></p><a href="contact.jsp">Go to contact page</a>
			                <hr class="d-block d-md-none">
			            </div>
			            <!-- /.col-lg-3-->
			            <div class="col-lg-3 col-md-6">
			                <h4 class="mb-3">새로운 소식</h4>
			                <p class="text-muted">대학생들의 핫플레이스 '미래 스터디카페 강동역점'오픈 !</p>
			                <form>
			                    <div class="input-group">
			                        <input type="text" class="form-control"><span class="input-group-append">
			                  <button type="button" class="btn btn-outline-secondary">구독하기</button></span>
			                    </div>
			                    <!-- /input-group--> 
			                </form>
			                <hr>
			                <h4 class="mb-3">더보기 사이트</h4>
			                <p class="social"><a href="#" class="facebook external"><i class="fa fa-facebook"></i></a><a href="#" class="twitter external"><i class="fa fa-twitter"></i></a><a href="#" class="instagram external"><i class="fa fa-instagram"></i></a><a href="#" class="gplus external"><i class="fa fa-google-plus"></i></a><a href="#" class="email external"><i class="fa fa-envelope"></i></a></p>
			            </div>
			            <!-- /.col-lg-3-->
			        </div> 
			        <!-- /.row-->  
			    </div>
			    <!-- /.container-->  
			<!--*** FOOTER ***-->
			</div>
			</div><!-- @@@@@@@@ 메인 끝 @@@@@@@@ -->
<!-- @@@@@@@@ //// 본론 진입 /// @@@@@@@@ -->
		
<!-- *** BLOG HOMEPAGE END ***-->


<!-- /#footer-->
<!-- *** FOOTER END ***-->
<!-- JavaScript files--> 
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../resource/js/front.js"></script> 
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>  
<!--////// ***** 혜련 js 활용 ****  //////-->
<script src="../resource/js/hr/teacher_detailRead.js"></script> 

</body>
</html>		