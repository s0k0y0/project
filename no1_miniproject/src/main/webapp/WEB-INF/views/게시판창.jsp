<%@page import="com.stone.simple.board.common.Board"%>
<%@page import="java.util.List"%>
<%@page import="com.stone.simple.member.common.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Board> 게시물들 = (List<Board>) request.getAttribute("게시물들");
int 끝페이지번호 = (Integer) request.getAttribute("끝페이지번호");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	width: 90%;
	border: silver solid 3px;
	padding: 50px;
}
</style>
<title>게시판</title>
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
	</div>

	<div class="lolo">

		<h4 class="text-muted">게시물 목록</h4>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">순서</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일자</th>
				</tr>
			</thead>
			<tbody>
				<%
					if (게시물들 != null) {
					for (int i = 0; i < 게시물들.size(); i++) {
						Board 게시물 = 게시물들.get(i);//zero base
				%>

				<tr>
					<th scope="row"><%=i + 1%></th>
					<td><a class="text-reset" href="/detail?no=<%=게시물.getNo()%>"><%=게시물.getTitle()%></a>
					</td>
					<td><%=게시물.getWriterName()%></td>
					<td><%=게시물.getRegdate()%></td>
				</tr>

				<%
					}
				}
				%>
			</tbody>
		</table>
	</div>

	<div>
		<ul class="pagination">
			<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>
			<%
				for (int 현재페이지번호 = 1; 현재페이지번호 <= 끝페이지번호; 현재페이지번호++) {
			%>
			<li class="page-item"><a class="page-link"
				href="/board?pageno=<%=현재페이지번호%>"> <%=현재페이지번호%></a></li> &nbsp;&nbsp;
			<%
				}
			%>
			<li class="page-item"><a class="page-link" href="#">&raquo;</a>
			</li>
		</ul>
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