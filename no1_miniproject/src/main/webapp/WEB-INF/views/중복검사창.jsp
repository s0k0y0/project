<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Boolean 아이디중복 = (Boolean) request.getAttribute("아이디중복");
String id = (String) request.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	margin: 20px;
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
<script>
	function id사용하다() {
		var id = document.querySelector("#id").value;
		opener.id를받다(id);
		close();
	}
	function 창닫기() {
		window.close();
	}
</script>



<meta charset="UTF-8">
<title>중복 검사</title>
</head>
<body>


	<form action="/id" method="post">
		<div class="form-group ">

			<div class="input-group col-sm-4">
				<p style="font-size: 20px">ID</p>
				<input type="text" class="form-control" name="id" id="id"
					value="<%=(id == null) ? "" : id%>" required="required" />
				<button type="submit" class="btn btn-secondary">확인</button>
			</div>






		</div>


		<%
			if (아이디중복 != null) {
			if (아이디중복 == false) {
		%>
		<div class="input-group col-sm-4">
			<strong>사용 가능한 id입니다.</strong> <input type="button"
				onclick="id사용하다()" class="btn btn-secondary" value="사용" />

			<%
				}
			if (아이디중복 == true) {
			%>

			<strong>이미 사용 중 입니다.</strong>

			<%
				}
			}
			%>


			<button type="submit" onclick="창닫기()" class="btn btn-secondary">취소</button>
		</div>

	</form>

</body>
</html>