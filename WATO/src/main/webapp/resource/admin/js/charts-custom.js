$(function () {


    var violet = '#DF99CA',
        red    = '#F0404C',
        green  = '#7CF29C';

    // ------------------------------------------------------- //
    // Charts Gradients
    // ------------------------------------------------------ //
    var ctx1 = $("canvas").get(0).getContext("2d");
    var gradient1 = ctx1.createLinearGradient(150, 0, 150, 300);
    gradient1.addColorStop(0, 'rgba(210, 114, 181, 0.91)');
    gradient1.addColorStop(1, 'rgba(177, 62, 162, 0)');

    var gradient2 = ctx1.createLinearGradient(10, 0, 150, 300);
    gradient2.addColorStop(0, 'rgba(252, 117, 176, 0.84)');
    gradient2.addColorStop(1, 'rgba(250, 199, 106, 0.92)');


    
    // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChartExample1');
    
    //학생
    var s_apply_month = {};
    s_apply_month = $('#s_apply_month').val();
    var s_apply = s_apply_month.substring(1,s_apply_month.length-1);
    var s =s_apply.split(',');
    
    
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: true,
                    ticks: {
                        max: 10,
                        min: 0
                    },
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
            legend: false
        },
        data: {
            labels: ["Jnu", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [
                {
                    label: "건수",
                    backgroundColor: [
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1
                    ],
                    hoverBackgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderWidth: 1,
                    data: s,
                }
            ]
        }
    });
    
    
var BARCHARTEXMPLE    = $('#barChartExample2');
    //강사
    var t_apply_month = {};
    t_apply_month = $('#t_apply_month').val();
    var t_apply = t_apply_month.substring(1,t_apply_month.length-1);
    var t =t_apply.split(',');
   	
    
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: true,
                    ticks: {
                        max: 10,
                        min: 0
                    },
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
            legend: false
        },
        data: {
            labels: ["Jnu", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [
                {
                    label: "건수",
                    backgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    hoverBackgroundColor: [
                    	gradient1,
                    	gradient1,
                    	gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1
                    ],
                    borderColor: [
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                    	gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1,
                        gradient1
                    ],
                    borderWidth: 1,
                    data: t,
                }
            ]
        }
    }); 
    
 // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChartExample');
    
  //qna
    
    var qna_month = {};
    qna_month = $('#qna_month').val();
    var q_apply = qna_month.substring(1,qna_month.length-1);
    var q =q_apply.split(',');
    
    //alert(q);
    
    
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
            legend: false
        },
        data: {
            labels: ["Jnu", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [
                {
                    label: "건수",
                    backgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    hoverBackgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderWidth: 1,
                    data: t,
                }
            ]
        }
    });
    
    
    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHARTEXMPLE    = $('#pieChartExample');
    
    //학생 가입자 변수
    var std_count = {};
    std_count = $('#std_count').val();
    
    //alert(std_count);
    
    
    //강사 가입자 변수
    var Tech_count = {};
    Tech_count = $('#Tech_count').val();
    
    var pieChartExample = new Chart(PIECHARTEXMPLE, {
        type: 'pie',
        data: {
            labels: [
                "학생",
                "강사",
            ],
            datasets: [
                {
                    data: [std_count,Tech_count],
                    borderWidth: 0,
                    backgroundColor: [
                        green,red,
                        "#6adf8a",
                        "#50c670",
                        "#3fac5c",
                        "#2a9346"
                    ],
                    hoverBackgroundColor: [
                        green,red,
                        "#6adf8a",
                        "#50c670",
                        "#3fac5c",
                        "#2a9346"
                    ]
                }]
            }
    });

    var pieChartExample = {
        responsive: true
    };
    
    
    
    
    
    
    
    
    
    
    // ------------------------------------------------------- //
   // Pie Chart
   // ------------------------------------------------------ //
   var PIECHART = $('#pieChart1');
   var myPieChart = new Chart(PIECHART, {
       type: 'doughnut',
       options: {
           cutoutPercentage: 90,
           legend: {
               display: false
           }
       },
       data: {
           labels: [
               "First",
               "Second",
               "Third"
           ],
           datasets: [
               {
                   data: [250, 200],
                   borderWidth: [0, 0],
                   backgroundColor: [
                       green,
                       "#eee",
                   ],
                   hoverBackgroundColor: [
                       green,
                       "#eee",
                   ]
               }]
       }
   });


    // ------------------------------------------------------- //
   // Pie Chart
   // ------------------------------------------------------ //
   var PIECHART = $('#pieChart2');
   var myPieChart = new Chart(PIECHART, {
       type: 'doughnut',
       options: {
           cutoutPercentage: 90,
           legend: {
               display: false
           }
       },
       data: {
           labels: [
               "First",
               "Second"
           ],
           datasets: [
               {
                   data: [300, 50],
                   borderWidth: [0, 0],
                   backgroundColor: [
                       violet,
                       "#eee"
                   ],
                   hoverBackgroundColor: [
                       violet,
                       "#eee"
                   ]
               }]
       }
   });


    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //
    var LINECHARTEXMPLE   = $('#lineChartExample');
    var lineChartExample = new Chart(LINECHARTEXMPLE, {
        type: 'line',
        options: {
            legend: {labels:{fontColor:"#777", fontSize: 12}},
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: true,
                    ticks: {
                        max: 100,
                        min: 20
                    },
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
        },
        data: {
            labels: ["Jnu", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [
                {
                    label: "Data Set One",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: gradient1,
                    borderColor: 'rgba(210, 114, 181, 0.91)',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 2,
                    pointBorderColor: gradient1,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 2,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: gradient1,
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: [0, 50, 33, 71, 49, 55, 35, 40, 30, 50, 25, 40],
                    spanGaps: false
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //

    var LINECHART = $('#lineCahrtsm1');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    ticks: {
                        max: 50,
                        min: 0
                    },
                    display: false
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [
                {
                    label: "Page Visitors",
                    fill: true,
                    lineTension: 0.4,
                    backgroundColor: "transparent",
                    borderColor: green,
                    pointBorderColor: green,
                    pointHoverBackgroundColor: green,
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 3,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 5,
                    pointHoverRadius: 5,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 1,
                    pointRadius: 0,
                    pointHitRadius: 1,
                    data: [20, 14, 21, 15, 22, 8, 18, 13, 21, 13, 17, 13, 20, 15],
                    spanGaps: false
                }
            ]
        }
    });



    



   



    // ------------------------------------------------------- //
    // Doughnut Chart
    // ------------------------------------------------------ //
    
    var DOUGHNUTCHARTEXMPLE  = $('#doughnutChartExample');
    var pieChartExample = new Chart(DOUGHNUTCHARTEXMPLE, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 80,
        },
        data: {
            labels: [
                "a",
                "b",
            ],
            datasets: [
                {
                    data: [250, 50, 100, 40],
                    borderWidth: 0,
                    backgroundColor: [
                        '#df99ca',
                        '#c374ab',
                        "#a44e8a",
                        "#81376a"
                    ],
                    hoverBackgroundColor: [
                        '#df99ca',
                        '#c374ab',
                        "#a44e8a",
                        "#81376a"
                    ]
                }]
            }
    });

    var pieChartExample = {
        responsive: true
    };



    // ------------------------------------------------------- //
    // Polar Chart
    // ------------------------------------------------------ //
    var POLARCHARTEXMPLE  = $('#polarChartExample');
    var polarChartExample = new Chart(POLARCHARTEXMPLE, {
        type: 'polarArea',
        options: {
            elements: {
                arc: {
                    borderWidth: 0,
                    borderColor: '#aaa'
                }
            }
        },
        data: {
            datasets: [{
                data: [
                    7,
                    16,
                    12,
                    11
                ],
                backgroundColor: [
                    green,
                    "#6adf8a",
                    "#50c670",
                    "#3fac5c"
                ],
                label: 'My dataset' // for legend
            }],
            labels: [
                "A",
                "B",
                "C",
                "D"
            ]
        }
    });

    var polarChartExample = {
        responsive: true
    };


    // ------------------------------------------------------- //
    // Radar Chart
    // ------------------------------------------------------ //
    var RADARCHARTEXMPLE  = $('#radarChartExample');
    var radarChartExample = new Chart(RADARCHARTEXMPLE, {
        type: 'radar',
        data: {
            labels: ["A", "B", "C", "D", "E", "C"],
            datasets: [
                {
                    label: "First dataset",
                    backgroundColor: "rgba(252, 117, 176, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(252, 117, 176, 0.84)",
                    pointBackgroundColor: "rgba(252, 117, 176, 0.84)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(252, 117, 176, 0.84)",
                    data: [65, 59, 90, 81, 56, 55]
                },
                {
                    label: "Second dataset",
                    backgroundColor: "rgba(250, 199, 106, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(250, 199, 106, 0.92)",
                    pointBackgroundColor: "rgba(250, 199, 106, 0.92)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(250, 199, 106, 0.92)",
                    data: [50, 60, 80, 45, 96, 70]
                }
            ]
        }
    });
    var radarChartExample = {
        responsive: true
    };

});

