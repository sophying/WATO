<%--
  Created by IntelliJ IDEA.
  User: alfo3-14
  Date: 2020-01-16
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    // 인코딩
    request.setCharacterEncoding("UTF-8");
%>

<!-- JavaScript files-->
<script src="../resource/admin/vendor/jquery/jquery.min.js"></script>
<script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
<script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js?v=<%=System.currentTimeMillis() %>"> </script>
<script src="../resource/admin/vendor/chart.js/Chart.min.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="../resource/admin/js/js.cookie.min.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="../resource/admin/js/charts-home.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="../resource/admin/js/front.js?v=<%=System.currentTimeMillis() %>"></script>

<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>StudyUs</title>

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
    <link rel="stylesheet" href="../resource/admin/css/custom.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/admin/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../resource/admin/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../resource/admin/admin/img/favicon.png?3">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<body>

<%--admin_navbar.jsp--%>
<%@ include file="../include_admin/admin_navbar.jsp"%>
<%--admin_navbar.jsp--%>

<%--admin_sidebar.jsp--%>
<div class="d-flex align-items-stretch">
<%@ include file="../include_admin/admin_sidebar.jsp"%>
<%--admin_sidebar.jsp--%>

    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="메인화면">메인화면 중앙시작</a></div>
    <div class="page-holder w-100 d-flex flex-wrap">

        <div class="container-fluid px-xl-5">

            <%--메인 상단 종합 정보 요약 영역 (<section class="py-5">) --%>
             <%@ include file="../include_admin/main_info.jsp"%>
            <%--메인 상단 종합 정보 요약 영역 (<section class="py-5">) --%>

            <%--메인 중앙 차트 영역 <div class="row mb-4">--%>
             <%@ include file="../include_admin/main_chart.jsp"%>
            <%--메인 중앙 차트 영역 <div class="row mb-4">--%>

            <%--메인 결제 영역 (<section class="py-5">) --%>
            <%@include file="../include_admin/main_pay.jsp"%>
            <%--메인 결제 영역 (<section class="py-5">) --%>

            <%--메인 트렌젝션 히스토리 영역 --%>
            <section>
                <div class="row">
                    <%-- main_transaction_up 영역(<div class="col-lg-8">) --%>
                    <%@include file="../include_admin/main_transaction_up.jsp"%>
                    <%-- main_transaction_ 영역(<div class="col-lg-8">) --%>

                    <%-- main_transaction_middle 영역(<div class="col-lg-4"> --%>
                    <%@ include file="../include_admin/main_transaction_middle.jsp"%>
                    <%-- main_transaction_middle 영역(<div class="col-lg-4"> --%>

                    <%--main_transaction_row 영역(<div class="card px-5 py-4">)--%>
                    <%@ include file="../include_admin/main_transaction_row.jsp"%>
                    <%--main_transaction_row 영역(<div class="card px-5 py-4">)--%>
                </div>
            </section>
        <%--메인 트렌젝션 히스토리 영역 --%>

        <%--담당자 영역 (<section class="py-5">)--%>
        <%@include file="../include_admin/main_member.jsp"%>
        <%--담당자 영역 (<section class="py-5">)--%>

    </div>

<%--admin_footer.jsp--%>
<%@ include file="../include_admin/admin_footer.jsp"%>
<%--admin_footer.jsp--%>
    </div>
</div>


</body>
</html>