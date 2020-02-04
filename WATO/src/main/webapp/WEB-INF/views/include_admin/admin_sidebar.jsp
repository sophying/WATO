<%--
  Created by IntelliJ IDEA.
  User: alfo3-14
  Date: 2020-01-20
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
             
         
    <div id="sidebar" class="sidebar py-3" >
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
        <ul class="sidebar-menu list-unstyled">
            <li class="sidebar-list-item"><a href="/admin/index_admin" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
            <li class="sidebar-list-item"><a href="/admin/approval" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>강사승인관리</span></a></li>
            <li class="sidebar-list-item"><a href="/admin/management" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>회원관리</span></a></li>
            <li class="sidebar-list-item"><a href="/admin/admin_qna_list" class="sidebar-link text-muted"><i class="o-sales-up-1 mr-3 text-gray"></i><span>QNA관리</span></a></li>
           </ul> 
    </div>

    <!-- JavaScript files-->
    <script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js?v=<%=System.currentTimeMillis() %>"> </script>
    <script src="../resource/admin/vendor/chart.js/Chart.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/js.cookie.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/charts-custom.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/front.js?v=<%=System.currentTimeMillis() %>"></script>
    