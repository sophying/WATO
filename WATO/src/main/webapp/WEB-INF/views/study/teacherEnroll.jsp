<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

<!-- kakao map api key (최성웅 appkey)-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6576765d075a8eced9a1dab97cad004a&libraries=services"></script>




<style media="screen">
	body{
	 background-color: #e0e0e0;
	 }
.btn-circle.btn-xl {
  width: 60px;
  height: 60px; 
  padding: 5px 5px 5px 5px;
  border-radius: 35px;
  font-size: 24px;
  line-height: 1.33;
}

.btn-circle {
  width: 30px;
  height: 30px;
  padding: 0px 0px;
  border-radius: 15px;
  text-align: center;
  font-size: 12px;
  line-height: 1.42857;
}
#input_img{
  width:200px;;
  height: 200px;

}

#text{
 display: none;
}

.card-header{
background:#5a7fa2;
}
/* .content{
    outline: 2px dashed #92b0b3 ;
    outline-offset:-10px;  
    text-align: center;
    transition: all .15s ease-in-out;
    width: 300px;
    height: 300px;
    background-color: gray;
} */
</style>
</head> 
<body>

<div class="container  mx-auto">
<form  name="classForm"class="form-horizontal" role="form" method="post" action="/study/teacherEnroll.do">
<!-- <1> image Enroll -->
  <div class="row mt-3 justify-content-md-center">
    <div class="col-sm-5 d-inline-block"> <!-- 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
        <div class="form-group container-fluid">
          <div class="card">
            <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="5">사진등록</font></label>
            <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
              <div class="card-body">
                <div class="input-group d-flex justify-content-center">
<!-- photo -->     <img id="input_img" src="../resources/imgs/studyUs.png" alt="이미지">
                </div>
              </div>
            </div>
            
<!-- button Enroll -->
            <!-- <div class="cols-sm-5">
            <div class="form-group"> -->
            <div class="cols-sm-5 pb-5 pr-2 pl-2">
              <div class="input-group d-flex justify-content-center ">
                <img id="img_btn_0" src="../resources/imgs/studyUs.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
                <img id="img_btn_1" src="../resources/imgs/java1.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_2" src="../resources/imgs/js1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_3" src="../resources/imgs/cplus.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_4" src="../resources/imgs/php1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_5" src="../resources/imgs/android.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <!-- <button type="button" class="btn btn-primary btn-circle btn-xl"><i class="fa fa-list"></i></button>&nbsp;&nbsp;
                <button type="button" class="btn btn-success btn-circle btn-xl"><i class="fa fa-link"></i></button> -->
              </div>
            </div>
            <!-- </div>
          </div> -->
          </div>
        </div>
<!-- // button Enroll -->
<!-- 스터디 기간 설정  -->


<div class="form-group container-fluid d-inline-block">
    <div class="card">
    <label for="name" class="pb-1 row m-0 card-header cols-sm-3 control-label d-flex justify-content-center"><font size="5">강의 기간</font></label>
    <div class="card-body">
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	          <label for="start" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">시작</label>&nbsp;&nbsp;
	          <input type="date" name="t_startDate" class="form-control col-sm-8" id="start" value="" />
	    </div>
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	          <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">&nbsp;&nbsp;&nbsp;끝&nbsp;</label>&nbsp;&nbsp;
	          <input type="date" name="t_endDate"  class="form-control col-sm-8 " id="end" value="" />
	    </div>
    <div class="form-group">
           <div class="cols-sm-10">
              <div class="input-group d-flex justify-content-center ">
                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                	<!-- 월요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                      <input type="checkbox" class="form-check-input" id="mon" name="mon" value="월">
                      <label class="form-check-label" for="mon">월</label>
                    </div>

                    <!-- 화요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="tue"name="tue" value="화" >
                        <label class="form-check-label" for="tue">화</label>
                    </div>

                    <!-- 수요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="wed"name="wed" value="수">
                        <label class="form-check-label" for="wed">수</label>
                    </div>
                    
                    <!-- 목요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="thu" name="thu"value="목">
                        <label class="form-check-label" for="thu">목</label>
                    </div>
                    
                    <!-- 금요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="fri" name="fri"value="금">
                        <label class="form-check-label" for="fri">금</label>
                    </div>
                    
                    <!--  토요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sat"name="sat" value="토">
                        <label class="form-check-label" for="sat">토</label>
                    </div>
                    
                    <!-- 일요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sun" name="sun"value="일">
                        <label class="form-check-label" for="sun">일</label>
                    </div>
                  </div>
             
                  <label id="nullText" class="cols-sm-2 pt-2 control-label d-flex justify-content-center font-weight-bold"></label>
                  <!-- <div id="nullText" class=" d-flex pt-2 d-flex justify-content-center"></div> -->
                  
                  
              </div>
           </div>
        </div>
      </div>
    </div>
        <div class="form-group container-fluid">
      <div class="card">
        <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><font size="5">자격증 정보</font></label>
          <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
           <div class="card-body">
             <div class="input-group d-flex justify-content-center">
				<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	          	<label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">자격증 </label>&nbsp;&nbsp;
					<select name="t_license" class="selectpicker form-control">
					  <option value="ocjp" selected="selected">OCJP</option>
					  <option value="리눅스마스터">리눅스마스터</option>
					  <option value="네트워크관리사">네트워크 관리사</option>
					  <option value="정보보안기사">정보 보안 기사</option>
					  <option value="정보보안산업기사">정보 보안 산업기사</option>
					  <option value="정보처리기사">정보처리기사</option>
					  <option value="정보처리산업기사">정보처리 산업기사</option>
					</select>
             </div> 
           </div>
         </div>
      </div>
  	</div>
  </div>       
<!-- // 스터디 기간 설정  -->
<!-- // 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->


<!-- <2> Study Info Enroll -->
    <div class="col-md-7 d-inline-block">
      <div class="card">
        <div class="pb-1 row m-0 card-header font-weight-bold d-flex justify-content-center"><h4>강의 등록</h4></div>
          <div class="card-body">
                    <div class="form-group">
                        <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
                          		<label for="level" class="pt-1 mt-1 control-label font-weight-bold w-25">난이도</label>
	                                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	 <!-- t_level -->               	<select name="t_level" class="selectpicker form-control w-50" >
										  <option value="입문"selected="selected">입문</option>
										  <option value="초급">초급</option>
										  <option value="중급">중급</option>
										  <option value="고급">고급</option>
										</select>
										
                          		<label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-25">인원수</label>
	                                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
<!-- t_people --> 	       			<input type="text" class="form-control" name="t_people" id="t_people" placeholder="인원을 정해주세요!" />
	               	
                      	 </div>
                      </div>
                      <div class="form-group">
                          <label for="t_category" class="cols-sm-2 control-label font-weight-bold">카테고리</label>
                          <label id="t_category" class="cols-sm-2 control-label font-weight-bold"></label>
                          <div class="cols-sm-10">
                            <div class="input-group">
	                           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
 <!-- category 주제 -->	       <input type="text" class="form-control" name="t_category" id="category" placeholder="과목 카테고리를 알려주세요!" />
                        </div>
                      </div>
                      </div>
 
                      <div class="form-group">
                          <label for="t_title" class="cols-sm-2 control-label font-weight-bold">강의 주제</label>
                          <label id="t_title" class="cols-sm-2 control-label font-weight-bold"></label>
                          
                             <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
 <!-- title 주제 -->               <input type="text" class="form-control" name="t_title" id="stitle" placeholder="그룹의 스터디 주제를 알려주세요!" />
                                </div>
                             </div>
                      </div>


                   <!-- 우편번호 찾기 API -->
                   <div class="form-group">
                       <label for="sPlace" class="cols-sm-2 control-label font-weight-bold">강의 장소
                       		&nbsp;&nbsp;&nbsp;&nbsp;<small>강의장소는 확실하게 정해주신 뒤 등록 바랍니다.</small>
                       </label>
                       
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                       <div class="d-inline row mx-md-n6">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                               <!--  <input type="text" class="form-control" name="schedule" id="schedule" placeholder="함께 모일 장소를 알려주세요!" /> -->
                              
                                <input type="button" class="btn btn-primary box " value="주소 검색" onclick="sample3_execDaumPostcode()">
                         </div>
                          
                          
                          <!--  post 우편번호 --> 
                          <div class="cols-sm-10">
                            <div class="input-group mt-1 mb-1">
                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
					            <input type="text" class="form-control" id="sample3_postcode" name="t_postnum" placeholder="우편번호" required>
                            </div>
                          </div>
                          
                          <!-- 주소 (주소 검색 후 사용자 선택에 따라 지번 or 도로명 주소가 입력됨)-->
                          <div class="cols-sm-10 mb-1 ">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <input type="text"  class="form-control" id="sample3_address" placeholder="도로명/지번주소" required>
                            </div>
                          </div>
                          
                          <!-- 상세주소 (주소 검색 후 focus이동하여 사용자가 직접 입력하게 함)-->
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" id="sample3_detailAddress" placeholder="상세주소" required>
                           </div>
                          </div>
                          
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" id="sample3_extraAddress" placeholder="참고항목" required>
                           </div>
                          </div>
                        
                        <%--주소 검색 iframe wrap 공간--%>
                          <div class="cols-sm-10 mb-1">
                       	 	<div class="input-group">
								<div id="wrap" style="display:none;
											border:1px solid;
											width:500px;
											height:300px;
											margin:5px 0;
											position:relative">
    						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap"
    					style="cursor:pointer;
    					position:absolute;
    					right:0px;
    					top:-1px;
    					z-index:1" 
    					onclick="foldDaumPostcode()" alt="접기 버튼">
    							</div>
							</div>
                          </div>
                        
                    <!-- 우편번호 찾기 API -->
                    
                    <%--kakao map API (카카오 지도)--%>
                    	<div class="cols-sm-10 mb-1">
                    		<div class="input-group">
								<div id="map" style="width:500px;height:400px;"></div>
							</div>
						</div>  
                          
                    </div>
                    
             
					
					
                    <div class="form-group">
                        <label for="info" class="cols-sm-2 control-label font-weight-bold">강사님을 소개해주세요!</label>
                           <div class="cols-sm-10 " >
                             <div class="md-form" id="inputHtml">
	 <!-- t_intro -->               <textarea name="t_intro" class="md-textarea form-control" rows="10" placeholder="편하게 나를 어필해주세요!"></textarea>
                             </div>
                           </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">상세내용</label>
                           <div class="cols-sm-10">
                             <div class="md-form">
	 <!-- t_content -->               <textarea id="form7" onkeydown="if(event.keyCode===9){var v=this.value,s=this.selectionStart,e=this.selectionEnd;this.value=v.substring(0, s)+'\t'+v.substring(e);this.selectionStart=this.selectionEnd=s+1;return false;}" name="t_content" class="md-textarea form-control" rows="10" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
                             </div>
                           </div>
                    </div>
                    
                    <div class="form-group">
 <!-- t_price -->      <label for="t_price" class="cols-sm-2 control-label font-weight-bold">수강 참여비</label>
 					   <label id="price-Text" class="cols-sm-2 control-label font-weight-bold"></label>
                        <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
	                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	                            <input type="text" class="form-control mr-3" name="t_price" id="t_price" placeholder="합리적인 참여비를 작성해주세요" />     
                          		<label class="pt-1 mt-1 control-label font-weight-bold w-25">&nbsp;&nbsp;&nbsp;원</label>
	                                 
                      	 </div>
                      </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">영상  URL 등록 </label>
                           <div class="cols-sm-10">
                                <div class="input-group">
                                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
 <!-- t_url 주제 -->               <input type="text" class="form-control" name="t_URL" id="t_URL" placeholder="강사님을 어필해주세요~!" />
                                </div>
                           </div>
                    </div>
  
                      <div class="form-group ">
 <!-- t_userId -->          <input type="hidden" name="t_userId" id="t_userId" value="sophy">
 <!-- t_photo -->           <input type="hidden" name="t_photo" id="photoval" value="">
 <!-- t_place -->           <input type="hidden" name="t_place" id="Place" value="" >
 <!-- day -->               <!-- <input type="hidden" class="form-control" name="t_day" id="schedule" /> -->
                          <button type="button" id="enroll_btn" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                      </div>
          </div> 
        </div> 
      </div>
    </div> <!-- 2-->
    </form>
</div><!--  1 -->

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>   
<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 기존 혜련씨 다음우편번호 api script -->

<!-- kakao 우편번호 검색 api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

/* kakao map + 우편번호 검색 (작성자 : 최성웅) 시작 
혜련씨 우편번호 검색은 아래의 혜련씨 코드로 주석처리함.*/

//kakao map컨테이너 생성 : 위의 div태그 (id='map')
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });
    
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    
    /* 주소 검색 버튼 클릭 시 실행할 메소드 */
    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = data.address; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height ='300px';
                //element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);
        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }

    /* kakao map + 우편번호 검색 (작성자 : 최성웅) 끝~~~~~~~~~~~~*/

    
    
    
    
    
$(document).ready(function($){

// 조건_____________  

/*
  $('#toggle-info').click(function () {
	
  var inputHtml = '<textarea id="form7" name="t_content" class="md-textarea form-control" rows="10" placeholder="강의 내용을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>';	
  $("#inputHtml").html(inputHtml);
  
  if (true) {
	  $('#toggle-info').click(function () {
		  $("#inputHtml").hide();
	  });
	  
	  if ($("#inputHtml").hide()) {
		  
		  $('#toggle-info').click(function () {
			  $("#inputHtml").show();
		  });
	}
}
	  
  
});
*/

// 금액 천단위 
$(function() {
  var $t_price = $("#t_price");
  $t_price.on('blur', function() {
    // 입력 값 알아내기
    var _$self = $(this);
    var value = _$self.val();

    // 원단위로 변경하기
    var result = AddComma(value);

    _$self.val(result);
  })

});

function AddComma(dataValue) {
  isNumber(dataValue);
  var separateValue = Number(dataValue).toLocaleString('en');
  if (separateValue == 'NaN') {
    return '';
  }
  return separateValue;
}

function isNumber(checkValue) {
    checkValue = '' + checkValue;
    if (isNaN(checkValue) || checkValue == "") {
      alert('숫자만 입력해 주세요!!!');
      return;
    }}





// 등록 버튼  					
 $('#enroll_btn').click(function(){
	  var road =  document.getElementById('roadAddress').value; 
	  var jibun =  document.getElementById('jibunAddress').value;
	  
	  var Place = road+"/"+jibun;
	  document.getElementById('Place').value = Place; 
 

/* null 확인  */
	 var t_category = document.getElementById('category');
	 var t_title = document.getElementById('stitle');
	 var t_day = document.getElementById('nullText');
	 var t_price = document.getElementById('t_price');
	 
	 
	 if ((t_category.value == null || t_category.value == "")) {
		
		 $('#t_category').css('color','red');
		 $('#t_category').text("카테고리를 작성하십시오.");
		 
		 
		 /* t_category.value ="카테고리를 작성하십시오.";
		 
		 $('#category').focus(function(){ 
			 
			 if ( t_category.value=="카테고리를 작성하십시오.") {
				 t_category.value="";
			}
				$('#category').css('color','black');
				
			 });
		 
		 $('#category').blur(function(){ 
			 
			 if (t_category.value == null || t_category.value == "") {
				t_category.value = "카테고리를 작성하십시오";
				$('#category').css('color','red');
				 
			}
				
			 }); */
		 
		 
	}

	 if ( t_title.value == null || t_title.value =="") {
			$('#t_title').css('color','red');
			$('#t_title').text("강의주제를 작성하십시오.");
			
			
			/*
			
			t_title.value ="강의주제를 작성하십시오.";
			
			  $('#stitle').focus(function(){ 
				 
				 if ( t_title.value=="강의주제를 작성하십시오.") {
					 t_title.value="";
				}
					$('#stitle').css('color','black');
					
				 });
			 
			 $('#stitle').blur(function(){ 
				 
				 if (t_title.value == null || t_title.value == "") {
					 t_title.value = "강의주제를 작성하십시오";
					$('#stitle').css('color','red');
					 
				}
					
				 }); */
	}
	 
	 if (t_day.value == null || t_day.value == "") {
		 $('#nullText').css('color','red');
		$('#nullText').text("구체적인 날짜를 정해주십시오.");
		
	}
	 
	 if (t_price.value == null || t_price.value =="") {
		$('#price-Text').css('color','red');
		$('#price-Text').text('합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])');
		
	}

	 if (t_price.value != null && t_price.value != "합리적인 가격을 작성해주세요. (작성시 숫자만 입력 [ , 쉽표 사용 불가 ])" &&t_category.value != null && t_category.value != "카테고리를 작성하십시오." && t_category.value != "" && t_title.value != "강의주제를 작성하십시오."&& t_title.value != null && t_title.value !="" ) {
		document.classForm.submit();
	}
 
 });


  
// 우편번호 검색 ___________________________________________________________

/*혜련씨 코드 
	  $("#execDaumPostcode").click(function sample4_execDaumPostcode() {
	      new daum.Postcode(
	              {
	                  oncomplete : function(data) {
	                	  
	                	  // 도로명 주소 변수 
	                      var fullRoadAddr = data.roadAddress;
	                      // 도로명 조합형 주소 변수 
	                      var extraRoadAddr = '';  
	
	                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                      if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
	                          extraRoadAddr += data.bname;
	                      }
	                      // 건물명이 있고, 공동주택일 경우 추가한다.
	                      if (data.buildingName !== ''
	                              && data.apartment === 'Y') {
	                          extraRoadAddr += (extraRoadAddr !== '' ? ', '
	                                  + data.buildingName : data.buildingName);
	                      }
	                      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                      if (extraRoadAddr !== '') {
	                          extraRoadAddr = ' (' + extraRoadAddr + ')';
	                      }
	                      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                      if (fullRoadAddr !== '') {
	                          fullRoadAddr += extraRoadAddr;
	                      }
	
	                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                      document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
	                      document.getElementById('roadAddress').value = fullRoadAddr;
	                      document.getElementById('jibunAddress').value = data.jibunAddress;
	
	                      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                      if (data.autoRoadAddress) {
	                          //예상되는 도로명 주소에 조합형 주소를 추가한다.
	                          var expRoadAddr = data.autoRoadAddress
	                                  + extraRoadAddr;
	                          document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
	                                  + expRoadAddr + ')';
	
	                      } else if (data.autoJibunAddress) {
	                          var expJibunAddr = data.autoJibunAddress;
	                          document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
	                                  + expJibunAddr + ')';
	
	                      } else {
	                          document.getElementById('guide').innerHTML = '';
	                      }
	                  }
	              }).open();
	  }); */

	  
	  
	  
	  
	  
/*   우편번호 검색 콜백함수.. 추후 쓸모가 있을것 같아 추석처리하였음
우편번호 찾기 화면을 팝업으로 띄운 후, 검색 결과를 선택하거나, 브라우저의 닫기버튼을 통해 닫았을 때 발생하는 콜백 함수를 정의하는 부분입니다. 이 중 검색결과를 선택한 경우에는 onComplete콜백함수가 완료된 후에 실행되게 됩니다.
이 함수를 정의할때 넣는 인자에는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수가 들어가게 됩니다.
(embed() 함수를 이용한 레이어모드에서는 "검색결과를 선택하여 닫힌 경우"에만 실행됩니다.)	  

	  new daum.Postcode({
		    onclose: function(state) {
		        //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
		        if(state === 'FORCE_CLOSE'){
		            //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.
			System.out.print("hello11");

		        } else if(state === 'COMPLETE_CLOSE'){
		        	
			System.out.print("hello22");
		        	//사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
		            //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
		        }
		    }
		});  
	   */

// 요일 선택___________________________________________________________

		$(".form-check-input").click(function(){
			var str = "";  
			$(".form-check-input").each(function(){ 
				if($(this).is(":checked")) 
					str += $(this).next().text() + " "; 
			});
			
		/* 			document.getElementById("schedule").value= str;   */
					$('#nullText').css("color","green");
					$('#nullText').text(str);
		});
		 
// 이미지 버튼___________________________________________________________

	  var photo = document.getElementById("input_img");
	  var photoSrc = photo.getAttribute('src');  
	  document.getElementById('photoval').value = photoSrc;
	 
	
	  var img0 = $('#img_btn_0').attr('src');
	  var img1 = $('#img_btn_1').attr('src');
	  var img2 = $('#img_btn_2').attr('src');
	  var img3 = $('#img_btn_3').attr('src');
	  var img4 = $('#img_btn_4').attr('src');
	  var img5 = $('#img_btn_5').attr('src');
	
	  $('#img_btn_0').on({'click': function(){
	        $('#input_img').attr('src',img0);
	        document.getElementById("category").value = "직접입력";
	        $('input #category').text("기타");
	     }
	 });
	  $('#img_btn_1').on({'click': function(){
	        $('#input_img').attr('src',img1);
	        document.getElementById("category").value = "자바";
	     }
	 });
	
	 $('#img_btn_2').on({'click': function(){
	        $('#input_img').attr('src',img2);
	        document.getElementById("category").value = "자바스크립트";
	        alert(document.getElementById("category").value);
	    }
	});
	
	$('#img_btn_3').on({'click': function(){
	       $('#input_img').attr('src',img3);
	       document.getElementById("category").value = "C언어";
	   }
	});
	
	$('#img_btn_4').on({'click': function(){
	       $('#input_img').attr('src',img4);
	       document.getElementById("category").value = "파이썬";
	   }
	 });
	
	$('#img_btn_5').on({'click': function(){
	       $('#input_img').attr('src',img5);
	       document.getElementById("category").value = "안드로이드";
	   }
	});

});
</script>
</body>
</html>
