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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
      integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
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
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<!-- include summernote-ko-KR -->
<script src="../../../resource/js/summernote-ko-KR.js"></script>
<title>StudyUs</title>
    <title>Title</title>
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
                                <h3 class="h6 text-uppercase mb-0">All form elements</h3>
                            </div>
                            <div class="card-body">
                                <form class="form-horizontal">
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Normal</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Help text</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control"><small class="form-text text-muted ml-3">A block of help text that breaks onto a new line and may extend beyond one line.</small>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Password</label>
                                        <div class="col-md-9">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Placeholder</label>
                                        <div class="col-md-9">
                                            <input type="text" placeholder="placeholder" class="form-control">
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Ranges</label>
                                        <div class="col-md-9">
                                            <div>
                                                <label for="formControlRange">Example Range</label>
                                                <input id="formControlRange" type="range" class="form-control-range">
                                            </div>
                                            <div>
                                                <label for="customRange1">Custom Range</label>
                                                <input id="customRange1" type="range" class="custom-range">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Disabled</label>
                                        <div class="col-md-9">
                                            <input type="text" disabled="" placeholder="Disabled input here..." class="form-control">
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Checkboxes and radios <br><small class="text-primary">Standard HTML elements</small></label>
                                        <div class="col-md-9">
                                            <div>
                                                <input id="option" type="checkbox" value="">
                                                <label for="option">Option one is this and that—be sure to include why it's great</label>
                                            </div>
                                            <div>
                                                <input id="optionsRadios1" type="radio" checked="" value="option1" name="optionsRadios">
                                                <label for="optionsRadios1">Option one is this and that be sure to include why it's great</label>
                                            </div>
                                            <div>
                                                <input id="optionsRadios2" type="radio" value="option2" name="optionsRadios">
                                                <label for="optionsRadios2">Option two can be something else and selecting it will deselect option one</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Inline checkboxes</label>
                                        <div class="col-md-9">
                                            <label class="checkbox-inline">
                                                <input id="inlineCheckbox1" type="checkbox" value="option1"> a
                                            </label>
                                            <label class="checkbox-inline">
                                                <input id="inlineCheckbox2" type="checkbox" value="option2"> b
                                            </label>
                                            <label class="checkbox-inline">
                                                <input id="inlineCheckbox3" type="checkbox" value="option3"> c
                                            </label>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Checkboxes &amp; radios <br><small class="text-primary">Bootstrap4 custom controls</small></label>
                                        <div class="col-md-9">
                                            <div class="custom-control custom-checkbox">
                                                <input id="customCheck1" type="checkbox" class="custom-control-input">
                                                <label for="customCheck1" class="custom-control-label">Check this custom checkbox</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input id="customRadioInline1" type="radio" name="customRadioInline1" class="custom-control-input">
                                                <label for="customRadioInline1" class="custom-control-label">Toggle this custom radio</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input id="customRadioInline2" type="radio" name="customRadioInline1" class="custom-control-input">
                                                <label for="customRadioInline2" class="custom-control-label">Or toggle this other custom radio</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Select</label>
                                        <div class="col-md-9 select mb-3">
                                            <select name="account" class="form-control">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                            </select>
                                        </div>
                                        <div class="col-md-9 ml-auto select">
                                            <select multiple="" class="form-control rounded">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row has-success">
                                        <label class="col-sm-3 form-control-label">Input with success</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control is-valid">
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row has-danger">
                                        <label class="col-sm-3 form-control-label">Input with error</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control is-invalid">
                                            <div class="invalid-feedback ml-3">Please provide your name.</div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Control sizing</label>
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <input type="text" placeholder=".input-lg" class="form-control form-control-lg">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" placeholder="Default input" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" placeholder=".input-sm" class="form-control form-control-sm">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Column sizing</label>
                                        <div class="col-md-9">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <input type="text" placeholder=".col-md-3" class="form-control">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" placeholder=".col-md-4" class="form-control">
                                                </div>
                                                <div class="col-md-5">
                                                    <input type="text" placeholder=".col-md-5" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Input groups</label>
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend"><span class="input-group-text">$</span></div>
                                                    <input type="text" aria-label="Dollar amount (with dot and two decimal places)" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" aria-label="Dollar amount (with dot and two decimal places)" class="form-control">
                                                    <div class="input-group-append"><span class="input-group-text">$</span></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend"><span class="input-group-text">$</span></div>
                                                    <input type="text" aria-label="Amount (to the nearest dollar)" class="form-control">
                                                    <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" aria-label="Checkbox for following text input">
                                                        </div>
                                                    </div>
                                                    <input type="text" aria-label="Text input with checkbox" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="radio" aria-label="Radio button for following text input">
                                                        </div>
                                                    </div>
                                                    <input type="text" aria-label="Text input with radio button" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Button addons</label>
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <button id="button-addon1" type="button" class="btn btn-primary">Button</button>
                                                    </div>
                                                    <input type="text" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group mb-3">
                                                    <input type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" class="form-control">
                                                    <div class="input-group-append">
                                                        <button id="button-addon2" type="button" class="btn btn-primary">Button</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">With dropdowns</label>
                                        <div class="col-md-9">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-outline-primary dropdown-toggle">Dropdown</button>
                                                    <div class="dropdown-menu"><a href="#" class="dropdown-item">Action</a><a href="#" class="dropdown-item">Another action</a><a href="#" class="dropdown-item">Something else here</a>
                                                        <div role="separator" class="dropdown-divider"></div><a href="#" class="dropdown-item">Separated link</a>
                                                    </div>
                                                </div>
                                                <input type="text" aria-label="Text input with dropdown button" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <div class="col-md-9 ml-auto">
                                            <button type="submit" class="btn btn-secondary">Cancel</button>
                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

<%--<div class="pull-left" style="display: inline-block; width: 200px;">
    <%@include file="../include_admin/admin_sidebar.jsp"%>
</div>
<div id="table" class="container box" style="margin-left:5%; width:70%; display: inline-block;">
    <section style="position: absolute; top: 10%; width: 80%;">
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
                <label for="content" class="col-sm-2 control-label">글 내용</label>
                <div class="col-sm-12">
                    <textarea id="content" name="QNA_CONTENT" class="summernote" readonly="readonly">${admin_qna_read.QNA_CONTENT}</textarea>
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
        <form method="post" action="/qna/replyUpdate/${admin_qna_read.QNA_BNO}" id="replyform">
            <ol class="repList">
                <c:forEach items="${repList}" var="repList">
                    <li>
                        <p>
                            <span class="glyphicon glyphicon-user"></span>
                                ${repList.QNA_WRITER}
                            (<fmt:formatDate value="${repList.QNA_REGDATE}" pattern="yyyy-MM-dd" />)
                        </p>
                        <textarea name="QNA_CONTENT" class="form-control" readonly >${repList.QNA_CONTENT}</textarea>
                        <div class="form-group">
                            <input type="hidden" name="QNA_BNO" value="${repList.QNA_BNO}">
                            <input type="hidden" name="QNA_RNO" value="${repList.QNA_RNO}">
                            <button type="button" style="color: white;" onclick="replyUpdate_btn(this)" class="btn btn-warning">수정</button>
                            <button type="button"  class="btn btn-danger">
                                <a style="color: white;" href="/qna/replyDelete/${admin_qna_read.QNA_BNO}/${repList.QNA_RNO}" onclick="replyDelete_btn()">삭제</a></button>
                        </div>
                    </li>
                </c:forEach>
            </ol>
        </form>

        <section class="replyForm">
            <form role="form" method="post" autocomplete="off" action="/qna/">
                &lt;%&ndash; <input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
                 <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
                 <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
                 <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />&ndash;%&gt;
                <div class="form-group">
                    <label for="writer" class="col-sm-2 control-label">작성자</label>
                    <div class="col-sm-10">
                        <input type="text" id="writer1" name="QNA_WRITE"  class="form-control" />
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
<div style="position: fixed; bottom: 0px; width: 100%;">
    <%@include file="../include_admin/admin_footer.jsp"%>
</div>
</body>
<script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']");
 /*   function modify_btn(){
        location.href="/admin/getQnaModify/${getQnaRead.QNA_BNO}";
    };*/
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
            formObj.attr("action", "/admin/admin_qna_reply_write/${getQnaRead.QNA_BNO}");
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
</script>--%>
</html>
