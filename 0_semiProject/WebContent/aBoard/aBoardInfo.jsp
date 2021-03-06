<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<style>
	* {
    	margin: 0;
    	padding: 0;
    	float:none;
	}
	.board_view_subject {
    	border-top: 1px solid #222;
   		border-bottom: 1px solid #dae0e9;
    	height: 70px;
    	padding: 0 20px;
    	line-height: 70px;
	}
	.board_view_subject_left{
		padding: 20px 0 20px 0;
		font-size: 15px;
		float: left;
    	color: #222;
    	font-size: 15px;
	}
	.board_view_subject_right {
    	padding: 20px 0 20px 0;
    	float: right;
   		color: #222;
	}
	.board_view_content{
		text-align: left;
		width: 100%;
		padding: 40px 0 40px 0;
		border-bottom: 1px solid #dae0e9;
	}
	.board_title{
		padding: 40px 0 40px 0;
	}
	.btnGroup{
		padding: 20px 0 40px 0;
		margin-left: 75%;
	}
	.text{
		color:  #b0c364;
		text-align: center;
    }
	#btn1{
		background-color:  #b0c364;
    	border-color:  #b0c364;
	}
	#btn2{
		background-color:  #b0c364;
    	border-color:  #b0c364;
	}
	#btn3{
		background-color:  #b0c364;
    	border-color:  #b0c364;
	}
	#btn4{
		background-color:  #b0c364;
    	border-color:  #b0c364;
	}
</style>
<title>cook Q&A 상세 페이지</title>
</head>

<body>
<header id="top_section">
		<%@ include file="/template/top.jsp" %>
</header>


<div class="container">
<h2 class="board_title" align="center" style="margin: 30px 0 0 0; padding-bottom: 0px;">Cook Q&A</h2>
<p class="text" style="margin-bottom: 30px">Cook Q&A 게시판 입니다</p> 
	<div id="board_View" style="width:100%">
		<div class="board_view_subject" style="border-top: 1px solid #222;">
			<p class="board_view_subject_left">${vo.boardTitle}</p>
			<p class="board_view_subject_right">${vo.boardDate}</p>
			<p class="board_view_subject_right">조회수 ${vo.readCount}&nbsp;&nbsp;|&nbsp;&nbsp;</p>
		</div>
		<div class="board_view_content pl-3">
				<p>${vo.boardContent}</p>
		</div>
	</div>
	<div class="btnGroup">
		<input type="button" id="btn1" class="btn btn-success" value="답글쓰기" onclick="location.href='/aBoardReWriteRef.do?num=${vo.boardNum}&ref=${vo.ref}&reStep=${vo.reStep}&reLevel=${vo.reLevel}'">
		<input type="button" id="btn2"class="btn btn-success" value="수정" onclick="location.href='/aBoardUpdateNum.do?num=${vo.boardNum}'">
		<input type="button" id="btn3" class="btn btn-success" value="삭제" onclick="location.href='/aBoard/aBoardDeleteCheck.jsp?num=${vo.boardNum}'">
		<input type="button" id="btn4" class="btn btn-success" value="목록" onclick="location.href='aBoardListServlet.do'">
	</div>
</div>
<footer>
	<%@ include file="/template/bottom.jsp"%>
</footer>
</body>
</html>