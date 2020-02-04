<%--
  Created by IntelliJ IDEA.
  User: alfo3-14
  Date: 2020-01-20
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>         
<html>
<head>
    <title>메인 상단 종합 정보 요약 영역 (<section class="py-5">)</title>
</head>
<body>

    <section class="py-5">
        <div class="row">
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                    <div class="flex-grow-1 d-flex align-items-center">
                        <div class="dot mr-3 bg-violet"></div>
                        <div class="text">
                            <h6 class="mb-0">회원 가입자</h6><span class="text-gray">전체 : ${sum_member} (학생 : ${Std_count}/강사 : ${Tech_count})</span>
                        </div>
                    </div>
                    <div class="icon text-white bg-violet"><i class="fas fa-server"></i></div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                    <div class="flex-grow-1 d-flex align-items-center">
                        <div class="dot mr-3 bg-green"></div>
                        <div class="text">
                            <h6 class="mb-0">접속 중 회원</h6><span class="text-gray">${Session_count}</span>
                        </div>
                    </div>
                    <div class="icon text-white bg-green"><i class="far fa-clipboard"></i></div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                    <div class="flex-grow-1 d-flex align-items-center">
                        <div class="dot mr-3 bg-blue"></div>
                        <div class="text">
                            <h6 class="mb-0">등록된 스터디</h6><span class="text-gray">전체 : ${sum_enroll_count} (학생 : ${s_enroll_count}/강사 : ${t_enroll_count})</span>
                        </div>
                    </div>
                    <div class="icon text-white bg-blue"><i class="fa fa-dolly-flatbed"></i></div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-6 mb-4 mb-xl-0">
                <div class="bg-white shadow roundy p-4 h-100 d-flex align-items-center justify-content-between">
                    <div class="flex-grow-1 d-flex align-items-center">
                        <div class="dot mr-3 bg-red"></div>
                        <div class="text">
                            <h6 class="mb-0">총 문의 내역</h6><span class="text-gray">${qna_count}</span>
                            <h6 class="mb-0">최근 30일 문의 내역</h6><span class="text-gray">${board_this_month_Count}</span>
                        </div>
                    </div>
                    <div class="icon text-white bg-red"><i class="fas fa-receipt"></i></div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>
