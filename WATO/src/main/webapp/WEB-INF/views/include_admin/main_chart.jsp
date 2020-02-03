<%--
  Created by IntelliJ IDEA.
  User: alfo3-14
  Date: 2020-01-20
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>메인 중앙 차트 영역 (<div class="row mb-4">)</title>
</head>
<body>
<section>
    <div class="row mb-4">
        <div class="col-lg-7 mb-4 mb-lg-0">
            <div class="card">
<<<<<<< HEAD
            <div class="card-header">
                <h2 class="h6 mb-0 text-uppercase">Bar chart Example</h2>
            </div>
            <div class="card-body">
                <p class="mb-5 text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                <div class="chart-holder mt-5 mb-5">
                    <canvas id="barChartExample1"></canvas>
=======
                <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">월별 스터디 게시글 등록 건</h2>
                </div>
                <div class="card-body">
                    <p class="text-gray">단위 : 개</p>
                    <div class="chart-holder">
                    	<canvas id="barChartExample1" style="max-height: 14rem !important;"></canvas>
                    </div>
>>>>>>> branch 'master' of https://github.com/sophying/WATO.git
                </div>
            </div>
        </div>
        </div>
        <div class="col-lg-5 mb-4 mb-lg-0 pl-lg-0">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="row align-items-center flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>QNA</span><span class="dot bg-green d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">월별 QNA 등록 건수</span>
                            <hr><small class="text-muted"></small>
                        </div>
                        <div class="col-lg-7">
                            <canvas id="barChartExample"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row align-items-center flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>회원유형</span><span class="dot bg-violet d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">회원가입한 회원의 유형</span>
                            <!-- <hr><small class="text-muted">학생 / 강사</small> -->
                        </div>
                        <div class="col-lg-7">
                            <canvas id="pieChartExample"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- <div class="row">
        <div class="col-lg-5 mb-4 mb-lg-0">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="row align-items-center mb-3 flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>86%</span><span class="dot bg-violet d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Monthly Usage</span>
                            <hr><small class="text-muted">Lorem ipsum dolor sit</small>
                        </div>
                        <div class="col-lg-7">
                            <canvas id="pieChartHome3"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row align-items-center flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>$126,41</span><span class="dot bg-green d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">All Income</span>
                            <hr><small class="text-muted">Lorem ipsum dolor sit</small>
                        </div>
                        <div class="col-lg-7">
                            <canvas id="pieChartHome4"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-7">
            <div class="card">
                <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Total Overdue</h2>
                </div>
                <div class="card-body">
                    <p class="text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    <div class="chart-holder">
                        <canvas id="lineChart2" style="max-height: 14rem !important;" class="w-100"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
</section>

   <!-- JavaScript files-->
    <script src="../resource/admin/vendor/jquery/jquery.min.js"></script>
    <script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js?v=<%=System.currentTimeMillis() %>"> </script>
    <script src="../resource/admin/vendor/chart.js/Chart.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/js.cookie.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/charts-custom.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/front.js?v=<%=System.currentTimeMillis() %>"></script>
</body>
 <!-- JavaScript files-->
    <script src="../resource/admin/vendor/jquery/jquery.min.js"></script>
    <script src="../resource/admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../resource/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../resource/admin/vendor/jquery.cookie/jquery.cookie.js?v=<%=System.currentTimeMillis() %>"> </script>
    <script src="../resource/admin/vendor/chart.js/Chart.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/js.cookie.min.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/charts-custom.js?v=<%=System.currentTimeMillis() %>"></script>
    <script src="../resource/admin/js/front.js?v=<%=System.currentTimeMillis() %>"></script>
</html>
