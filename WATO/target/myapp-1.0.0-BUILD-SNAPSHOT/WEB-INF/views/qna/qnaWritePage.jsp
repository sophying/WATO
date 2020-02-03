<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: klear
  Date: 2020-01-17
  Time: PM 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


    <title>Title</title>
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
        <form role="form" action="/qna/postQnaWrite" method="post" enctype="multipart/form-data">

            <p style="margin-bottom: 5px; margin-top: 10px; margin-left: 20px;">이름</p>
            <div class="col-sm-12">
                <c:if test="${std != null}">
                    <p>${std.user_Id}</p>
                    <input type="hidden" name="QNA_WRITER" value="${std.user_Id}" class="form-control">
                </c:if>
                <c:if test="${teach != null}">
                    <p>${teach.user_Id}</p>
                    <input type="hidden" name="QNA_WRITER" value="${teach.user_Id}" class="form-control">
                </c:if>
            </div>
            <p style="margin-bottom: 5px; margin-left: 20px;">제목</p>
            <div class="col-sm-12">
                <input type="text" id="title" name="QNA_TITLE" class="form-control" placeholder="제목을 입력하세요" />
            </div>
            <p style="margin-bottom: 5px; margin-top: 10px; margin-left: 20px;">내용</p>
            <div class="col-sm-12">
                <textarea name="QNA_CONTENT" class="summernote" placeholder="내용을 입력하세요"></textarea>
            </div>
            <div class="form-group mt-3">
                파일 : <input type="file" name="file" multiple="multiple">
                <button id="fileAdd_btn" type="button">파일추가</button>
            </div>
            <div class="form-group mt-1">
                <button type="button" style="margin-left: 14px;" id="list_btn" class="btn btn-primary">
                    <a style="color: white;" href="/qna/getQnaList">목록</a></button>
                <button type="submit" value="전송" style="float: right; margin-right: 14px;" class="btn btn-success">작성</button>
            </div>
        </form>
    </section>
</div>
<%@include file="include/footer.jsp"%>
</body>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.summernote').summernote({
                height: 300,
                minHeight: null,
                maxHeight: null,
                focus: true,
                callbacks: {
                    onImageUpload: function(files, editor, welEditable) {
                        for (var i = files.length - 1; i >= 0; i--) {
                            sendFile(files[i], this);
                        }
                    }
                }
            });
        });

    function sendFile(file, el) {
        var form_data = new FormData();
        form_data.append('file', file);
        $.ajax({
            data: form_data,
            type: "POST",
            url: '/image',
            cache: false,
            contentType: false,
            enctype: 'multipart/form-data',
            processData: false,
            success: function(url) {
                $(el).summernote('editor.insertImage', url);
                $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
            }
        });
    }
</script>

</html>