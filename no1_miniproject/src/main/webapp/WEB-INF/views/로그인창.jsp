<%@page import="com.stone.simple.member.common.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.lolo {
	margin: 70px;
	width: 90%;
	border: silver solid 1px;
	border-radius: 30px;
	padding: 50px;
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
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.jsp">Project</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor03"
				aria-controls="navbarColor03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="/join">회원가입
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">로그인</a>
				</ul>
			</div>
		</div>
	</nav>

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

</body>
</html>