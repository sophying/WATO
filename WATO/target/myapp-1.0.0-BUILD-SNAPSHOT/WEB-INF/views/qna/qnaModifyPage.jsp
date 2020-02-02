<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-16
  Time: PM 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
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
z    <script src="../../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="../../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="../../resource/js/front.js"></script>
    <!-- include summernote css/js-->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
    <!-- include summernote-ko-KR -->
    <script src="../../resource/js/summernote-ko-KR.js"></script>

    <style>
        #table{
            position: static;
            margin-left: auto;
            margin-right: auto;
            width: 53.8%;
            border: none;
            margin-bottom: 0;
        }

    </style>
</head>
<body>
<%@include file="include/header.jsp"%>
<div id="table" class="container box">
    <section>
        <form role="form" method="post" autocomplete="off" action="/qna/postQnaModify">
            <div class="form-group">
                <label for="bno" class="col-sm-2 control-label">글 번호</label>
                <div class="col-sm-12">
                    <input type="text" id="bno" name="QNA_BNO" class="form-control" value="${getQnaModify.QNA_BNO}" readonly="readonly" />
                </div>
            </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">글 제목</label>
            <div class="col-sm-12">
                <input type="text" id="title" name="QNA_TITLE" class="form-control" value="${getQnaModify.QNA_TITLE}"  />
            </div>
        </div>
        <div class="form-group">
            <label for="summernote" class="col-sm-2 control-label">글 내용</label>
            <div class="col-sm-12">
                <textarea id="summernote" name="QNA_CONTENT" class="summernote" >${getQnaModify.QNA_CONTENT}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="writer" class="col-sm-2 control-label">작성자</label>
            <div class="col-sm-12">
                <input type="text" id="writer" name="QNA_WRITER" class="form-control" value="${getQnaModify.QNA_WRITER}" readonly="readonly" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">작성 날짜</label>
            <div class="col-sm-12">
                <span><fmt:formatDate value="${getQnaModify.QNA_REGDATE}" pattern="yyyy-MM-dd" /></span>
            </div>
        </div>
        <div class="form-group">
            <button type="button" id="list_btn" style="margin-left: 14px;" class="btn btn-primary">
                <a style="color: white;" href="/qna/getQnaList">목록</a></button>
            <button type="button" style="float: right; margin-right: 14px;" id="modify_btn" class="btn btn-success">수정</button>
        </div>
            <script>
                var formObj = $("form[role='form']");
                $('#modify_btn').click(function(){
                    formObj.attr("action", "/qna/postQnaModify?QNA_BNO="+${getQnaModify.QNA_BNO});
                    formObj.submit();
                });
            </script>
        </form>
    </section>
</div>

<%@include file="include/footer.jsp"%>
</body>
<script type="text/javascript">
    $('.summernote').summernote({
        height: 500,
        minHeight: 400,
        disableDragAndDrop:false,
        maxHeight: null,
        lang : 'ko-KR',
        onImageUpload: function(files, editor, welEditable) {
            sendFile(files, editor, welEditable);

        }
    });
    function sendFile(file, editor, welEditable) {
        data = new FormData();
        data.append("uploadFile", file);
        ajax({
            data: data,
            type: "POST",
            url: "/imageUpload",
            cache: false,
            contentType: false,
            processData: false,
            success : function (data) {
                editor.insertImage(welEditable, data.url);
            }
        });
    }
</script>
</html>
