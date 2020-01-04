<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style media="screen">

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
#img_btn_0:hover{

}
#text{
 display: none;
}

</style>
</head>
<body>
<div class="container  mx-auto">
<!-- image Enroll -->
  <div class="row mt-3 justify-content-md-center">
    <div class="col-sm-5"> <!-- 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
      <form class="form-horizontal" enctype="multipart/form-data">
        <div class="form-group container-fluid">
          <div class="card">
            <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><h4>사진등록</h4></label>
            <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
              <div class="card-body">
                <div class="input-group d-flex justify-content-center">
                    <!-- <input type="file" class="form-control" name="name" id="name" placeholder="Enter your Name" /> -->
                    <img id="input_img"src="./imgs/studyUs.png" alt="">
                </div>
              </div>
            </div>  
      </form> <!--  폼데이터 필요한가??  -->
<!-- button Enroll -->
        <div class="cols-sm-5">
          <div class="form-group">
            <div class="cols-sm-5">
              <div class="input-group d-flex justify-content-center ">
                <img id="img_btn_0" src="./imgs/studyUs.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
                <img id="img_btn_1" src="./imgs/java1.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_2" src="./imgs/js1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_3" src="./imgs/cplus.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_4" src="./imgs/php1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_5" src="./imgs/android.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_6" src="./imgs/java1.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_7" src="./imgs/php1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <!-- <button type="button" class="btn btn-primary btn-circle btn-xl"><i class="fa fa-list"></i></button>&nbsp;&nbsp;
                <button type="button" class="btn btn-success btn-circle btn-xl"><i class="fa fa-link"></i></button> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<!-- // button Enroll -->
<!-- 스터디 기간 설정  -->
<div class="form-group container-fluid">
    <div class="card">
    <label for="name" class="pb-1 row m-0 card-header cols-sm-3 control-label d-flex justify-content-center"><h4>스터디 기간</h4></label>
    <div class="card-body">
    <div class="input-group d-flex justify-content-center">
       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
          <label for="start" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">시작</label>&nbsp;&nbsp;
          <input type="date" class="form-control col-sm-8" name="date" id="start" placeholder="그룹의 스터디 주제를 알려주세요!" />
    </div>
    <div class="input-group d-flex justify-content-center">
       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
          <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">&nbsp;&nbsp;&nbsp;끝&nbsp;</label>&nbsp;&nbsp;
          <input type="date" class="form-control col-sm-8 " name="date" id="end" placeholder="그룹의 스터디 주제를 알려주세요!" />
    </div>
    <div class="form-group">

           <div class="cols-sm-10">
              <div class="input-group d-flex justify-content-center ">
                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                 <!-- Material inline 1 -->
                    <div class="form-check form-check-inline cols-sm-2">
                      <input type="checkbox" class="form-check-input" id="mon" name="day">
                      <label class="form-check-label" for="mon">월</label>
                    </div>

                    <!-- Material inline 2 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="tue" name="day">
                        <label class="form-check-label" for="tue">화</label>
                    </div>

                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="wed" name="day">
                        <label class="form-check-label" for="wed">수</label>
                    </div>
                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="thu" name="day">
                        <label class="form-check-label" for="thu">목</label>
                    </div>
                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="fri" name="day">
                        <label class="form-check-label" for="fri">금</label>
                    </div>
                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sat" name="day">
                        <label class="form-check-label" for="sat">토</label>
                    </div>
                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sun" name="day">
                        <label class="form-check-label" for="sun">일</label>
                    </div>
                    <!-- Material inline 3 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="other" name="day">
                        <label class="form-check-label" for="other">추후결정</label>
                    </div>
                  </div>
              </div>
           </div>
  		</div>
  </div>
</div>
<!-- // 스터디 기간 설정  -->
    </div>
<!-- // 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
<!-- Study Info Enroll -->
    <div class="col-md-7">
      <div class="card">
        <div class="pb-1 row m-0 card-header font-weight-bold d-flex justify-content-center"><h4>스터디 모집 등록</h4></div>
          <div class="card-body">
                  <form class="form-horizontal" method="post" action="#">
                      <div class="form-group">
                          <label for="name" class="cols-sm-2 control-label font-weight-bold">아이디</label>
                              <div class="cols-sm-10">
                                  <div class="input-group">
                                      <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                          <input type="text" class="form-control" name="name" id="name" placeholder="Enter your Name" />
                                  </div>
                              </div>
                      </div>
                      <div class="form-group">
                          <label for="email" class="cols-sm-2 control-label font-weight-bold">이메일</label>
                              <div class="cols-sm-10">
                                  <div class="input-group">
                                      <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                          <input type="email" class="form-control" name="email" id="email" placeholder="이메일을 알려주세요!" />
                                  </div>
                              </div>
                      </div>
                      <div class="form-group">

                          <label for="username" class="cols-sm-2 control-label font-weight-bold">카테고리</label>
                          <div class="cols-sm-10">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                              <input type="text" class="form-control" name="category" id="category" placeholder="과목 카테고리를 알려주세요!" />
                        </div>
                      </div>
                             <!-- <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                       <input type="text" class="form-control" name="category" id="category" placeholder="Enter study category" />
                                </div>
                             </div> -->
                      </div>
                      <div class="form-group">
                          <label for="username" class="cols-sm-2 control-label font-weight-bold">스터디 주제</label>
                             <div class="cols-sm-10">
                                <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                      <input type="text" class="form-control" name="title" id="title" placeholder="그룹의 스터디 주제를 알려주세요!" />
                                </div>
                             </div>
                      </div>
                      <div class="form-group">
                          <label for="username" class="cols-sm-2 control-label font-weight-bold">스터디 기간</label>
                             <div class="cols-sm-10">
                                <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                   <input type="text" class="form-control" name="schedule" id="schedule" placeholder="그룹의 스터디 주제를 알려주세요!" />
                             </div>
                          </div>
                   </div>
                      <div class="form-group">
                          <label for="username" class="cols-sm-2 control-label font-weight-bold">스터디 상세내용</label>
                             <div class="cols-sm-10">
                               <div class="md-form">
                                 <textarea id="form7" class="md-textarea form-control" rows="3" placeholder="그룹을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
                               </div>
                             </div>
                      </div>
                      <div class="form-group">
                         <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                        <input type="password" class="form-control" name="confirm" id="confirm" placeholder="비밀번호 확인해주세요!" />
                                </div>
                            </div>
                      </div>
                      <div class="form-group ">
                          <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                      </div>
                 </form>
          </div>
        </div>
      </div>
    </div>
</div>

<script type="text/javascript">

$(document).ready(function($){


  $('input[type="checkbox"]').each(function(){

    if ($(this).attr('ckecked')) {
      var text = $(this).next('span').text();
      document.getElementById("schedule").value = text;
    }

  });

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

