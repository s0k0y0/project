<%@page import="com.stone.simple.member.common.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

#footercontent{
padding: 10px;
font-family: Jeju Gothic;
}
</style>

<style type="text/css">
.lolo {
	margin: 70px;
	margin-left: 305px;
	width: 60%;
	border: silver solid 1px;
	border-radius: 30px;
	padding: 110px;
}
</style>
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

<title>Home</title>
</head>
<body>
	<div class="header">
		<h1>Board</h1>
	</div>

	<div class="topnav">
		<a href="/join">회원가입</a>
	</div>


	<div class="lolo">
		<form action="/login" method="post">

			<fieldset>


				<div class="form-group row">
					<label for="id" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="id" id="id"
							required="required" placeholder="아이디를 입력하세요" />
					</div>
				</div>

				<div class="form-group row">
					<label for="password" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="password"
							id="password" required="required" placeholder="비밀번호를 입력하세요" />
					</div>
				</div>

				<div class="col-sm-6">
					<button type="submit" class="btn btn-secondary">로그인</button>
				</div>

			</fieldset>

		</form>
	</div>



	<div class="footer">
		<div>© Secret Compony</div>
		<p>
		<span id="footercontent">이용약관</span>
		<span id="footercontent">개인정보 처리방침</span>
		<span id="footercontent">사업자정보확인</span>
		</p>
	</div>

</body>
</html>