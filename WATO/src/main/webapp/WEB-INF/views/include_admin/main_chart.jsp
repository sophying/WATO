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
                <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">실시간 코알라 수분 보충량</h2>
                </div>
                <div class="card-body">
                    <p class="text-gray">코알라가 수분이 부족하여 목이 마릅니다. 애미야 물좀 다오.</p>
                    <div class="chart-holder">
                        <canvas id="lineChart1" style="max-height: 14rem !important;" class="w-100"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5 mb-4 mb-lg-0 pl-lg-0">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="row align-items-center flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>86.4</span><span class="dot bg-green d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Work hours</span>
                            <hr><small class="text-muted">Lorem ipsum dolor sit</small>
                        </div>
                        <div class="col-lg-7">
                            <canvas id="pieChartHome1"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row align-items-center flex-row">
                        <div class="col-lg-5">
                            <h2 class="mb-0 d-flex align-items-center"><span>1.724</span><span class="dot bg-violet d-inline-block ml-3"></span></h2><span class="text-muted text-uppercase small">Server time</span>
                            <hr><small class="text-muted">Lorem ipsum dolor sit</small>
                        </div>
                        <div class="col-lg-7">
                            <canvas id="pieChartHome2"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
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
    </div>
</section>
</body>
</html>
