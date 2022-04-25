<%@page import="com.stone.simple.board.common.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Board 게시물내용 = (Board) request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width" , initial-scale="1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/litera/bootstrap.min.css"
	integrity="sha384-enpDwFISL6M3ZGZ50Tjo8m65q06uLVnyvkFO3rsoW0UC15ATBFz3QEhr3hmxpYsn"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

.header {
	background-color: #f1f1f1;
	padding: 20px;
	text-align: center;
}

.topnav {
	overflow: hidden;
}

/* Style the topnav links */
.topnav a {
	float: right;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.column.middle {
	width: 60%;
}

.footer {
	background-color: #f1f1f1;
	padding: 10px;
	text-align: center;
}

#footercontent {
	padding: 10px;
	font-family: Jeju Gothic;
}

.lolo {
	margin: 70px;
	margin-left: 230px;
	width: 70%;
	border: silver solid 1px;
	border-radius: 30px;
	padding: 40px;
}

.form-group {
	margin-left: 120px;
}

#but {
	margin-left: 540px;
}
</style>
<title>게시물상세창</title>

</head>
<body>

	<div class="header">
		<h1>Board</h1>
	</div>

	<div class="topnav">
		<span><a class="nav-link" href="/logout">로그아웃</a></span> <span><a
			class="nav-link" href="/member/<%=session.getAttribute("writerNo")%>">
				<%=session.getAttribute("name")%> 님
		</a></span> <span><a class="nav-link" href="/preparewrite">게시물작성</a></span>
		<li class="nav-item"><a class="nav-link" href="/board">게시판</a></li>
	</div>


	<div class="lolo">

		<h2 class="text-muted" style="text-align: center;">게시물</h2>

		<div class="form-group">
			<label for="title" class="col-sm-2 control-label">제목</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="title"
					readonly="readonly" value="<%=게시물내용.getTitle()%>" />
			</div>
		</div>

		<div class="form-group">
			<label for="writer" class="col-sm-2 control-label">작성자</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="writer"
					readonly="readonly" value="<%=게시물내용.getWriterName()%>" />
			</div>
		</div>

		<div class="form-group">
			<label for="regdate" class="col-sm-2 control-label">작성일자</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="regdate"
					readonly="readonly" value="<%=게시물내용.getRegdate()%>" />
			</div>
		</div>

		<div class="form-group">
			<label for="contents" class="col-sm-2 control-label">내용</label>
			<div class="col-sm-10">
				<textarea class="form-control" id="contents" rows="9"
					style="height: 500px; width: 100%;" readonly="readonly"><%=게시물내용.getContents()%></textarea>
			</div>
		</div>


		<div class="form-group" id=but>
			<button class="btn btn-outline-secondary"
				onclick="location.href='/prepareUpdate?no=<%=게시물내용.getNo()%>'"
				id="modify">수정</button>
			<button class="btn btn-outline-secondary"
				onclick="location.href='/delete?no=<%=게시물내용.getNo()%>'">삭제</button>
			<button class="btn btn-secondary" onclick="location.href='/board'">게시판으로
				가기</button>
		</div>


	</div>

	<div class="footer">
		<div>© Secret Compony</div>
		<p>
			<span id="footercontent">이용약관</span> <span id="footercontent">개인정보
				처리방침</span> <span id="footercontent">사업자정보확인</span>
		</p>
	</div>






</body>
</html>