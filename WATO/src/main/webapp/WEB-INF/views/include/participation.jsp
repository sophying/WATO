<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

				<!-- Modal -->
					<div  class="modal fade" id="Form-modal" role="dialog">
					  <div class="modal-dialog  mt-5">
					    
	<!--  form -->	 	 <form id="participationForm"action="/study/study_DetailRead" method="post" role="form"> 
						      <!-- Modal content-->
						      <div id="container" class="modal-content">
						        <div class="modal-header">
						          <h4 class="modal-title">참여를 위한 정보를 제공해주세요!</h4>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>
						        <div class="modal-body">
						         <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
						        	<label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-50" >자기소개</label> 
	<!-- p_intro --> 	      		<input type="text" class="form-control" name="p_intro" id="p_intro" style="height: 40px;" placeholder="1줄 자기소개" />
						        </div>
						         <div class="form-group d-inline-block m-0 mt-3 p-0 d-flex justify-content-between ">
						        	<label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-50">연락가능한 번호</label>
	<!-- p_tell --> 	      		<input type="text" class="form-control" name="p_tell" id="p_tell" style="height: 40px;"placeholder="01012345678" />
						        </div>
						          <p class="text-center text-muted pt-4">본인의 <strong>아이디</strong> 및 <strong>이메일</strong> 정보가 리더에게 제공됩니다.</p>
						          <p class="text-center text-muted">스터디 상황에 따른  <strong>참여 비용</strong>이 발생될 수 있습니다.</p>
						        </div>  
						        <div class="modal-footer"style="background: #5a7fa2;">     
						          <input type="hidden" name="s_no" id="s_no" value="${listOne.s_no }"/>    
						         <c:choose>
						           		<c:when test="${std != null }">
								          <input type="hidden" name="p_userid" id="p_userid" value="${std.user_Id}"/>  
								          <font size="4"><input type="button" id="modalSubmit" class="btn btn-default" style="color:#fff;" value="참여완료하기"></font>
						           		</c:when>
						           		<c:otherwise>
						           			<span>강사님은 스터디에 참여 하실 수 없습니다.</span>
						           		</c:otherwise>
						           </c:choose>
						        </div>
						      </div>
					      </form>
						</div>
					</div>	
										      

</body>
</html>