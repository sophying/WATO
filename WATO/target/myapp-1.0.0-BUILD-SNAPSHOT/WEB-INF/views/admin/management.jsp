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
  </head>
  <style>
  	input.no {
  		border:0px; 
  		width: 30px; 
  		height: 30px; 
  		padding: 0px; 
  		text-align: center; 
  		font-size: 12px;  		
  	}
  	input.id {
  		border:0px; 
  		width: 100px; 
  		height: 30px; 
  		padding: 0px; 
  		text-align: center; 
  		font-size: 12px;
  	}
  	input.gender {
  		border:0px; 
  		width: 50px; 
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
  	
  	th{
  		text-align: center;
  	}
  	
  	td {
  		text-align: center;
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
                    <h6 class="text-uppercase mb-0">MANAGEMENT</h6>
                  </div>
                  <div class="card-body">
                  <form role="form" method="post" action="">
                    <table class="table card-text">
                        <tr>
	                        <th>No</th>
				            <th>ID</th>
				            <th>Gender</th>
				            <th>Email</th>
                        </tr>
                        <c:forEach var="AdVO" items="${manageList}">
				        <tr>
				            <td><input type="text" class="no" id="Teach_Gender" name="Teach_Gender" value="${AdVO.no}" readonly="readonly"></td>
				            <td><input type="text" class="id" id="Teach_Phone1" name="Teach_Phone1" value="${AdVO.user_Id}" readonly="readonly"></td>
				            <td><input type="text" class="gender" id="Teach_Phone2" name="Teach_Phone2" value="${AdVO.user_Gender}" readonly="readonly"></td>
				            <td><input type="text" class="email" id="Teach_Phone3" name="Teach_Phone3" value="${AdVO.user_Email}" readonly="readonly"></td>
				        </tr>
				        </c:forEach>
                    </table>
                    </form>
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
    <script src="../resource/admin/vendor/jquery/jquery.min.js"></script>
    <script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../resource/admin/vendor/chart.js/Chart.min.js"></script>
    <script src="../resource/admin/js/js.cookie.min.js"></script>
    <script src="../resource/admin/js/front.js"></script>
  </body>
</html>