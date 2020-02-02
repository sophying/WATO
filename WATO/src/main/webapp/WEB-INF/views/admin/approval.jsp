<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>          
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../resource/admin/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="../resource/admin/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/admin/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../resource/admin/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../resource/admin/img/favicon.png?3">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
            <script src="../resource/admin/vendor/jquery/jquery.min.js"></script>
  </head>
  <style>
     img {
      border:0px; 
      width: 50px;
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
   input.gh {
      border:0px; 
      width: 30px; 
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
   input.email {
      border:0px; 
      width: 150px; 
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
   input.addr1 {
      border:0px; 
      width: 50px; 
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
   input.addr2 {
      border:0px; 
      width: 150px; 
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
   input.addr3 {
      border:0px; 
      width: 70px; 
      height: 30px; 
      padding: 0px; 
      text-align: center; 
      font-size: 12px;
   }
     th {
        text-align: center;
     }
     
     th.ph1 {
        margin-left: 10px;
     }
     
     td {
        text-align: center;
     }
     .bigPictureWrapper {
         position: absolute;
         display: none;
         justify-content: center;
         align-items: center;
         top:0%;
         width:100%;
         height:100%;
         background-color: gray; 
         z-index: 100;
         background:rgba(255,255,255,0.5);
      }
      .bigPicture {
         position: relative;
         display:flex;
         justify-content: center;
         align-items: center;
      }
      
      .bigPicture img {
         width: 300px;
         height: 400px;
      }
  </style>
  <body>

  <%--admin_navbar.jsp--%>
  <%@ include file="../include_admin/admin_navbar.jsp"%>
  <%--admin_navbar.jsp--%>

  <%--admin_sidebar.jsp--%>
  <div class="d-flex align-items-stretch">
  <%@ include file="../include_admin/admin_sidebar.jsp"%>
  <%--admin_sidebar.jsp--%>


      <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
          <section class="py-5">
            <div class="row">
              <div class="col-lg-12 mb-4">
                <div class="card">
                  <div class="card-header">
                    <h6 class="text-uppercase mb-0">APPROVAL</h6>
                  </div>
                  <div class="card-body">
                    <table class="table card-text">
                        <tr>
                            <th>Profile</th>
                           <th>Resume</th>
                           <th>Gender</th>
                           <th class="ph1">P.H-1</th>
                           <th>P.H-2</th>
                           <th>P.H-3</th>
                           <th>Email</th>
                           <th>Addr-1</th>
                           <th>Addr-2</th>
                           <th>Addr-3</th>
                           <th>Approval</th>
                        </tr>
                  </table>
                        <c:forEach var="AppVO" items="${list}">
                        <div class='bigPictureWrapper'>
                     <div class='bigPicture'>
                     </div>
                  </div>
                        <form id="approvalform" role="form" method="post" action="">
                          <table class="table card-text">
                          <tr>
                              <%-- <td><img id="Teach_Profile" name="Teach_Prifile" src="../resource/images/${AppVO.app_Orgname}"></td> --%>
                              <td><img id="Teach_Profile" name="Teach_Profile" src="../resource/images/${AppVO.app_Newname}"></td>
                              <%-- <td><img id="Teach_Resume" name="Teach_Resume" src="../resource/images/${AppVO.app_Orgname2}"></td> --%>
                              <td><a id="Teach_Resume" name="Teach_Resume" href="../resource/images/${AppVO.app_Newname2}" download>이력서 다운로드</a></td>
                              <%-- <td><img id="Teach_Resume" name="Teach_Resume" src="../resource/images/${AppVO.app_Newname2}"></td> --%>
                              <td><input type="text" class="gh" id="Teach_Gender" name="Teach_Gender" value="${AppVO.app_Gender}" readonly="readonly"></td>
                              <td><input type="text" class="gh" id="Teach_Phone1" name="Teach_Phone1" value="${AppVO.app_Phone1}" readonly="readonly"></td>
                              <td><input type="text" class="gh" id="Teach_Phone2" name="Teach_Phone2" value="${AppVO.app_Phone2}" readonly="readonly"></td>
                              <td><input type="text" class="gh" id="Teach_Phone3" name="Teach_Phone3" value="${AppVO.app_Phone3}" readonly="readonly"></td>
                              <td><input type="text" class="email" id="User_Email" name="User_Email" value="${AppVO.user_Email}" readonly="readonly"></td>
                              <td><input type="text" class="addr1" id="Teach_Addr1" name="Teach_Addr1" value="${AppVO.app_Addr1}" readonly="readonly"></td>
                              <td><input type="text" class="addr2" id="Teach_Addr2" name="Teach_Addr2" value="${AppVO.app_Addr2}" readonly="readonly"></td>
                              <td><input type="text" class="addr3" id="Teach_Addr3" name="Teach_Addr3" value="${AppVO.app_Addr3}" readonly="readonly"></td>
                              <td><button type="button" onclick="approvalfunction(this)" class="btn btn-primary">승인</button></td>
                          </tr>
                       </table>
                     </form>  
                    </c:forEach>
                    <script type="text/javascript"> 
                       function approvalfunction(event) { 
                           $(event).parent().parent().parent().parent().parent().submit();
                        }
                    </script>
                    <script type="text/javascript">
                  $(document).ready(function (e){
                     
                     $(document).on("click","img",function(){
                        var path = $(this).attr('src')
                        showImage(path);
                     });//end click event
                     
                     function showImage(fileCallPath){
                         
                         $(".bigPictureWrapper").css("display","flex").show();
                         
                         $(".bigPicture")
                         .html("<img src='"+fileCallPath+"' >")
                         .animate({width:'150%', height: '250%'}, 1000);
                         
                       }//end fileCallPath
                       
                     $(".bigPictureWrapper").on("click", function(e){
                         $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
                         setTimeout(function(){
                           $('.bigPictureWrapper').hide();
                         }, 1000);
                       });//end bigWrapperClick event
                  });
               </script>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>

        <%--admin_footer.jsp--%>
        <%@ include file="../include_admin/admin_footer.jsp"%>
        <%--admin_footer.jsp--%>

      </div>
    </div>
    <!-- JavaScript files-->
    <script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js?v=<%=System.currentTimeMillis() %>"> </script>
    <script src="../resource/admin/vendor/chart.js/Chart.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/js.cookie.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/front.js?v=<%=System.currentTimeMillis() %>"></script>
  </body>
</html>