<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-31
  Time: AM 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<meta charset="UTF-8">
<%
    // 인코딩
    request.setCharacterEncoding("UTF-8");
%>

<!-- Bootstrap CSS-->
<link rel="stylesheet" href="../resource/admin/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> -->
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
<script src="../../../resource/vendor/jquery/jquery.min.js"></script>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="../../../resource/js/summernote-ko-KR.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<title>StudyUs</title>
    <title>Title</title>
<style>
    .note-toolbar
    {
        display: none;
    }
</style>
</head>
<body>
<%--
<%@include file="../include_admin/admin_navbar.jsp"%>
--%>
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
                    <!-- Form Elements -->
                    <div class="col-lg-12 mb-5">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="h6 text-uppercase mb-0">게시글 읽기</h3>
                            </div>
                            <div class="card-body">
                                <form class="form-horizontal">
        <form role="form" name="readForm" method="post" autocomplete="off">
            <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
            <div class="form-group">
                <label for="bno" class="col-sm-2 control-label">글 번호</label>
                <div class="col-sm-12">
                    <input type="text" id="bno" name="QNA_BNO" class="form-control" value="${admin_qna_read.QNA_BNO}" readonly="readonly" />
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-2 control-label">글 제목</label>
                <div class="col-sm-12">
                    <input type="text" id="title" name="QNA_TITLE" class="form-control" value="${admin_qna_read.QNA_TITLE}" readonly="readonly"  />
                </div>
            </div>
            <div class="form-group">
                <label for="summernote" class="col-sm-2 control-label">글 내용</label>
                <div class="col-sm-12">
                    <textarea id="summernote" name="QNA_CONTENT" class="summernote" readonly="readonly">${admin_qna_read.QNA_CONTENT}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="writer" class="col-sm-2 control-label">작성자</label>
                <div class="col-sm-12">
                    <input type="text" id="writer" name="QNA_WRITER" class="form-control" value="${admin_qna_read.QNA_WRITER}" readonly="readonly" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">작성 날짜</label>
                <div class="col-sm-12">
                    <span><fmt:formatDate value="${admin_qna_read.QNA_REGDATE}" pattern="yyyy-MM-dd" /></span>
                </div>
            </div>

            <div class="form-group">
                <button type="button" id="list_btn" class="btn btn-primary">
                    <a style="color: white;" href="/admin/admin_qna_list">목록</a></button>
                <a href="#" onclick="Deletefunct()" class="btn btn-danger" style="color: white;">삭제</a>
            </div>
            <span>파일 목록</span>
            <div class="form-group" style="border: 1px solid #dbdbdb;">
                <form method="post" role="form" name="fileForm">
                    <c:forEach var="file" items="${file}">
                        <a href="#" id="FILE_DOWN" onclick="fn_fileDown('${file.FILE_NO}');
                                return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
                    </c:forEach>
                </form>
            </div>
        </form>

    <div id="reply">
        <form method="post" id="replyform">
            <ol class="repList">
                <c:forEach items="${repList}" var="repList">
                    <li>
                        <p>
                    <c:if test="${!repList.QNA_WRITER.equals('admin')}">
                         <span id="repList_QNA_WRITER" class="glyphicon glyphicon-user">
                                 ${repList.QNA_WRITER}
                         </span>
                    </c:if>
                    <c:if test="${repList.QNA_WRITER.equals('admin')}">
                         <span id="repList_QNA_WRITER" class="glyphicon glyphicon-user">
                                 ■ 관리자 ■
                         </span>
                    </c:if>
                            (<fmt:formatDate value="${repList.QNA_REGDATE}" pattern="yyyy-MM-dd" />)
                        </p>
                        <textarea name="QNA_CONTENT" class="form-control" readonly >${repList.QNA_CONTENT}</textarea>
                        <div class="form-group">
                            <input type="hidden" name="QNA_BNO" value="${repList.QNA_BNO}">
                            <input type="hidden" name="QNA_RNO" value="${repList.QNA_RNO}">
                            <button type="button" style="color: white;" onclick="replyUpdate_btn(this)" class="btn btn-warning">수정</button>
                            <button type="button"  class="btn btn-danger">
                                <a style="color: white;" href="/admin/admin_qna_reply_delete/${admin_qna_read.QNA_BNO}/${repList.QNA_RNO}" onclick="replyDelete_btn()">삭제</a></button>
                        </div>
                    </li>
                </c:forEach>
            </ol>
        </form>

        <section class="replyForm">
            <form method="post" autocomplete="off" id="replyWrite">
                <input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
                 <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
                 <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
                 <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />
                <div class="form-group">
                    <label for="writer" class="col-sm-2 control-label">작성자</label>
                    <div class="col-sm-10">
                        <c:if test="${std != null}">
                            <p>${std.user_Id}</p>
                            <input type="hidden" name="QNA_WRITER" value="${std.user_Id}" class="form-control">
                        </c:if>
                        <c:if test="${teach != null}">
                            <p>${teach.user_Id}</p>
                            <input type="hidden" name="QNA_WRITER" value="${teach.user_Id}" class="form-control">
                        </c:if>
                    </div>
                </div>

                <div class="form-group">
                    <label for="content1" class="col-sm-2 control-label">댓글 내용</label>
                    <div class="col-sm-10">
                        <textarea id="content1" name="QNA_CONTENT" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" id="replyWrite_btn" class="btn-success btn">작성</button>
                    </div>
                </div>
            </form>
        </section>
    </div>
</form>
</div>
</div>
</div>
</div>
</section>
</div>
</div>
</div>
</body>

<script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']");
 <%--   function modify_btn(){
        location.href="/admin/getQnaModify/${getQnaRead.QNA_BNO}";
    }; --%>
    // 삭제 버튼 클릭
    /*  $("#delete_btn").click(function(){
          if (confirm("정말로 게시글을 삭제하시겠어요?") == true) {
              formObj.attr("action", "/qna/QnaDelete");
              formObj.submit();
          } else {
          }
      });*/
    function Deletefunct() {
        if (confirm("정말로 게시글을 삭제하시겠어요?") == true) {
            location.href="/admin/admin_qna_delete/${admin_qna_read.QNA_BNO}";
        } else{

        }
    }
    var replywrite = $("form[id='replyWrite']");;
    $("#replyWrite_btn").click(function() {

        //널 검사
        if ($("#writer1").val()) {

        }
        else if ($("#content1").val().trim() == "") {
            alert("내용을 입력하세요.");
            $("#content1").focus();
            return false;
        }
        else{
            replywrite.attr("action", "/admin/admin_qna_reply_write/${admin_qna_read.QNA_BNO}");
            replywrite.submit();
        }
    })

    /* $("#replyUpdate_btn").click(function(){
         formObj.attr("action", "/qna/replyUpdate");
         formObj.submit();
     });*/
    function replyUpdate_btn(event) {
        if ($(event).text() == "수정"){
            $(event).parent().prev().attr("readOnly", false);
            $(event).text("수정완료");
        }else {
            $(event).parent().prev().attr("readOnly", true);
            $(event).text("수정");
            $('#replyform').submit();
        }

    }
    /*   $("#replyDelete_btn").click(function(){
        if (confirm("정말로 댓글을 삭제하시겠어요?") == true) {
            formObj.attr("action", "/qna/replyDelete");
            formObj.submit();
        } else {
        }
    });*/
    function replyDelete_btn() {
        if (confirm("정말로 댓글을 삭제하시겠어요?") == true) {
            formObj.submit();
            return window.location.reload();
        } else{

        }
    }
    function fn_fileDown(fileNo){
        var formObj = $("form[name='readForm']");
        $("#FILE_NO").attr("value", fileNo);
        formObj.attr("action", "/qna/fileDown");
        formObj.submit();
    }
</script>
<script type="text/javascript">


    $('.summernote').summernote({
        height: 500,
        minHeight: 400,
        maxHeight: null,
        lang : 'ko-KR',
        disableResizeEditor: true,
        onImageUpload: function(files, editor, welEditable) {
            sendFile(files[0], editor, welEditable);
        }
    });
    // 서머노트 쓰기 비활성화
    $('.summernote').summernote('disable');
</script>
</html>
