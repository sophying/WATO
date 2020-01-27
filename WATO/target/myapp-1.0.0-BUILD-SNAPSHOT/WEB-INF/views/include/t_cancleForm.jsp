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
					<div  class="modal fade" id="t_cancle-modal" role="dialog">
					  <div class="modal-dialog  mt-5">
					    
	<!--  form -->	 	 <form id="cancleForm"action="/study/t_partiCancle" method="post" role="form"> 
						      <!-- Modal content-->
						      <div id="container" class="modal-content">
						        <div class="modal-header">
						          <h3 class="modal-title">아쉬워요! 다음 스터디에는 함께해요!</h3>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>
						        <div class="modal-body d-flex  justify-content-center">
						          <font size="7"><input type="button" id="cancleSubmit" class="btn btn-default d-flex justify-content-center" style="background:#5a7fa2;width:250px; height:60px; color:#fff; font-size:10pt;" value="참여취소하기"></font>
						        </div>
						          <input type="hidden" name="t_no" id="t_no" value="${listOne.t_no }"/>    
						          <input type="hidden" name="p_userid" id="p_userid" value="${user.m_user_id }"/>  
						      </div>
					      </form>
						</div>
					</div>	
										      

</body>
</html>