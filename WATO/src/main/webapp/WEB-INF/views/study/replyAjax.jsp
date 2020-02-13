<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- @@@@@@@@ //// 댓글 ( Q & A ) 작성  /// @@@@@@@@ -->	
							<c:forEach var="reply" items="${reply}">
								<c:choose>
									<c:when test="${(listOne.t_userId).equals(reply.r_userid)}">
										<form class="updateform" method="get" action="./modireply"> 
										<div class="h-75 row d-flex p-2 pb-1 m-0 container d-inline-block border-top " style="background: #f1dfe955;">
											<div  class="cols-sm-5 d-inline-block w-100 mb-1 pb-5 pt-3 pl-5 pr-5 container-fluid justify-content-center ">
												<div  style=" word-break:break-all; width: 300px;"class="row h-50 w-100 d-block d-flex pt-3 " >
													 <font size="4"><span id="cnttxt1" class="d-flex justify-content-end"></span></font> 
														<table class="justify-content-center ml-2 d-inline-block w-100">
															<tr>
																<td rowspan="5" class="pr-5 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">리더</font></td>
																<td colspan="5" >
																	<textarea name="r_content" class="r_content"  onkeydown="resize(this)" onkeyup="resize(this)" cols="100" readonly style="overflow-x:hidden; overflow-y:hidden;  ">${reply.r_content}</textarea>
																<c:choose>
																	<c:when test="${(listOne.t_userId).equals(std.user_Id ) }">
																		<input type="button" id="modiReButton" onclick="clickEvnet2(this)" class="modiReButton d-inline-block" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe2(this)">
																		<input type="hidden" name="t_no" value="${reply.t_no }"/>
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																	</c:when>
																	<c:when test="${(listOne.t_userId).equals(teach.user_Id ) }">
																		<input type="button" id="modiReButton" onclick="clickEvnet2(this)" class="modiReButton d-inline-block" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe2(this)">
																		<input type="hidden" name="t_no" value="${reply.t_no }"/>
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>																	
																	</c:when>
																</c:choose>
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
													<form class="updateform" method="get" action="./modireply"> 
			 											<font size="4"><span class="d-flex justify-content-end"></span></font> 
														<table class="justify-content-center d-inline-block w-100">
															<tr>
																<td rowspan="5" class="pl-2 pr-4 w-25 text-center justify-content-center"><font class=" font-weight-bold " size="5">${reply.r_userid }</font><font size="4"> 님</font></td>
																<td class="text1" colspan="5" > 
																	<textarea name="r_content" class="r_content"  onkeydown="resize(this)" onkeyup="resize(this)" cols="90" readonly>${reply.r_content}</textarea>
																<td> 
																<td >
																	<c:choose>
																	<c:when test="${(reply.r_userid).equals(std.user_Id ) }">
																		<input type="button" id="modiReButton" class="modiReButton d-inline-block" onclick="clickEvnet(this)" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe(this)">
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																		<input type="hidden" name="t_no" value="${reply.t_no }"/>
																	</c:when>
																	<c:when test="${(reply.r_userid).equals(teach.user_Id ) }">
																		<input type="button" id="modiReButton" class="modiReButton d-inline-block" onclick="clickEvnet(this)" value="수정하기"/>
																		<input type="button" class="modiReButton d-inline-block" value="삭제하기" onclick="deleteRe(this)">
																		<input type="hidden" name="r_no" value="${reply.r_no }"/>
																		<input type="hidden" name="t_no" value="${reply.t_no }"/>																	
																	</c:when>
																	</c:choose>
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

</body>
</html>