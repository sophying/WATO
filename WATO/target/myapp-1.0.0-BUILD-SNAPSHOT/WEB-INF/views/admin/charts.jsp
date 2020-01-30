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
            <div class="row mb-4">
              <div class="col-lg-8 mb-4 mb-lg-0">
                <div class="card">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Line chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-5 text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    <div class="chart-holder mt-5 mb-5">
                      <canvas id="lineChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Line chart Example</h2>
                  </div>
                  <div class="card-body">
                    <div class="chart-holder">
                      <canvas id="lineCahrtsm1"></canvas>
                    </div>
                  </div>
                </div>
                <div class="card mb-3">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Bar chart Example</h2>
                  </div>
                  <div class="card-body">
                    <div class="chart-holder">
                      <canvas id="barChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mb-4">
              <div class="col-lg-4">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                  </div>
                  <div class="card-body">
                    <div class="chart-holder">
                      <canvas id="pieChart1"></canvas>
                    </div>
                  </div>
                </div>
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                  </div>
                  <div class="card-body">
                    <div class="chart-holder">
                      <canvas id="pieChart2"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="card">
                  <div class="card-header">
                    <h2 class="h6 mb-0 text-uppercase">Bar chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-5 text-gray">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    <div class="chart-holder mt-5 mb-5">
                      <canvas id="barChartExample1"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Doughnut chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                    <div class="chart-holder">
                      <canvas id="doughnutChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Pie chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                    <div class="chart-holder">
                      <canvas id="pieChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Polar chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                    <div class="chart-holder">
                      <canvas id="polarChartExample"></canvas>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card mb-4">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">Radar chart Example</h2>
                  </div>
                  <div class="card-body">
                    <p class="mb-3 text-gray">Lorem ipsum dolor sit amet.</p>
                    <div class="chart-holder">
                      <canvas id="radarChartExample"></canvas>
                    </div>
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
    <script src="../resource/admin/js/charts-custom.js"></script>
    <script src="../resource/admin/js/front.js"></script>
  </body>
</html>