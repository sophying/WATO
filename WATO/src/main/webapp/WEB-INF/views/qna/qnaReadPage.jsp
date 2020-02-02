<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-16
  Time: PM 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../../resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../../resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../../resource/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="../../resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../../resource/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../../resource/css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <link rel="icon" type="image/png" href="../../resource/images/icons/favicon.ico"/>
    <script src="../../resource/vendor/jquery/jquery.min.js"></script>
    <script src="../../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="../../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="../../resource/js/front.js"></script>
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <!-- include summernote-ko-KR -->
    <script src="../../resource/js/summernote-ko-KR.js"></script>
    <title>Title</title>
    <style>
        #table{
            position: static;
            margin-left: auto;
            margin-right: auto;
            width: 53.8%;
            margin-bottom: 0;
            margin-top: 0;
        }
        .card-header{
            display: none;
        }

    </style>
</head>
<body>
<%@include file="include/header.jsp"%>
<div id="table" class="container box">
<section>
    <form role="form" name="readForm" method="post" autocomplete="off">
        <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
        <div class="form-group">
            <label for="bno" class="col-sm-2 control-label">글 번호</label>
            <div class="col-sm-12">
                <input type="text" id="bno" name="QNA_BNO" class="form-control" value="${getQnaRead.QNA_BNO}" readonly="readonly" />
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">글 제목</label>
            <div class="col-sm-12">
                <input type="text" id="title" name="QNA_TITLE" class="form-control" value="${getQnaRead.QNA_TITLE}" readonly="readonly"  />
            </div>
        </div>
        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">글 내용</label>
            <div class="col-sm-12">
                <textarea id="content" name="QNA_CONTENT" class="summernote" readonly="readonly">${getQnaRead.QNA_CONTENT}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="writer" class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-12">
                <c:if test="${std != null}">
                    <p>${std.user_Id}</p>
                </c:if>
                <c:if test="${teach != null}">
                    <p>${teach.user_Id}</p>
                </c:if>
                <input type="hidden" id="writer" name="QNA_WRITER" class="form-control" value="${getQnaRead.QNA_WRITER}" readonly="readonly" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">작성 날짜</label>
            <div class="col-sm-12">
                <span><fmt:formatDate value="${getQnaRead.QNA_REGDATE}" pattern="yyyy-MM-dd" /></span>
            </div>
        </div>

        <div class="form-group">
            <button type="button" id="list_btn" class="btn btn-primary">
                <a style="color: white;" href="/qna/getQnaList">목록</a></button>
           <a href="#" onclick="modify_btn()" class="btn btn-warning" style="color: white;">수정</a>
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
</section>
<div id="reply">
    <form method="post" action="/qna/replyUpdate/${getQnaRead.QNA_BNO}" id="replyform">
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
                                 관리자
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
                        <a style="color: white;" href="/qna/replyDelete/${getQnaRead.QNA_BNO}/${repList.QNA_RNO}" onclick="replyDelete_btn()">삭제</a></button>
                </div>
            </li>
        </c:forEach>
    </ol>
    </form>

       <section class="replyForm">
           <form role="form" method="post" autocomplete="off" action="/qna/replyWrite">
              <%-- <input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
               <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
               <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
               <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />--%>
               <div class="form-group">
                   <label for="writer" class="col-sm-2 control-label">작성자</label>
                   <div class="col-sm-10">
                       <c:if test="${std != null}">
                           <p>${std.user_Id}</p>
                       </c:if>
                       <c:if test="${teach != null}">
                           <p>${teach.user_Id}</p>
                       </c:if>
                       <input type="hidden" id="writer1" name="QNA_WRITE"  class="form-control" />
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


</div>
<%@include file="include/footer.jsp"%>
</body>
<script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']");
    function modify_btn(){
       location.href="/qna/getQnaModify/${getQnaRead.QNA_BNO}";
    };
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
            location.href="/qna/QnaDelete/${getQnaRead.QNA_BNO}";
        }
    }

    $("#replyWrite_btn").click(function() {

        //널 검사
        if ($("#writer1").val().trim() == "") {
            alert("작성자를 입력하세요.");
            $("#writer1").focus();
            return false;
        }

        else if ($("#content1").val().trim() == "") {
            alert("내용을 입력하세요.");
            $("#content1").focus();
            return false;
        }
        else{
            formObj.attr("action", "/qna/replyWrite/${getQnaRead.QNA_BNO}");
            formObj.submit();
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
