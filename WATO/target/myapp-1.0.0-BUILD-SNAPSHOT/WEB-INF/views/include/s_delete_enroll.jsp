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
					<div  class="modal fade" id="delete-modal" role="dialog">
					  <div class="modal-dialog  mt-5">
					    
	<!--  form -->	 	 <form id="deleteForm"action="/study/studentDelete" method="get" role="form"> 
						      <!-- Modal content-->
						      <div id="container" class="modal-content">
						        <div class="modal-header">
						          <h3 class="modal-title">정말 스터디 모집글을 삭제하시겠습니까?</h3>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>
						        <div class="modal-body d-flex  justify-content-center">
						          <font size="7"><input type="button" id="deleteSubmit" class="btn btn-default d-flex justify-content-center" style="background:#5a7fa2;width:250px; height:60px; color:#fff; font-size:10pt;" value="모집글 삭제하기"></font>
						        </div>
						          <input type="hidden" name="s_no" id="s_no" value="${listOne.s_no }"/>    
						      </div>
					      </form>
						</div>
					</div>	
										      

</body>
</html>