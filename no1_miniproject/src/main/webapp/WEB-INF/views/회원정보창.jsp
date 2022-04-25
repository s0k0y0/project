<%@page import="com.stone.simple.member.common.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Member 회원정보 = (Member) request.getAttribute("회원정보");
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
	width: 90%;
	border: silver solid 1px;
	border-radius: 30px;
	padding: 50px;
}
</style>
<title>회원정보</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function 우편번호조회하다() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#post").value = data.zonecode;
				document.querySelector("#address").value = data.roadAddress;

				document.querySelector("#detailAddress").focus();
			}
		}).open();
	}
</script>
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
		<form action="/updateMember/<%=session.getAttribute("writerNo")%>"
			method="Post">
			<fieldset>
				<legend>회원 정보</legend>

				<div class="form-group">
					<label for="name" class="col-sm-4 col-form-label">닉네임*</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="name" id="name"
							required="required" value="<%=회원정보.getName()%>" />
					</div>
				</div>



				<div class="form-group">
					<div class="col-sm-6">
						<img id="profile1" name="profile1"
							src="/profile/<%=session.getAttribute("writerNo")%>"
							class="img-thumbnail" width="200" height="100" />
					</div>
				</div>

				<div class="form-group">
					<label for="profile2" class="col-sm-4 col-form-label">프로필</label>
					<div class="col-sm-6">
						<input type="file" class="form-control" name="profile2"
							id="profile2" readonly="readonly">
					</div>
				</div>

				<div class="form-group">
					<label for="id" class="col-sm-4 col-form-label">ID*</label>
					<div class="input-group col-sm-6">
						<input type="text" class="form-control" name="id" id="id"
							required="required" readonly="readonly" value="<%=회원정보.getId()%>" />
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="col-sm-4 col-form-label">PassWord*</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="password"
							id="password" required="required" />
					</div>
				</div>

				<div class="form-group">
					<label for="password2" class="col-sm-4 col-form-label">Confirm
						PassWord*</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="password2"
							id="password2" required="required" />
					</div>
				</div>



				<div class="form-group">
					<label for="email" class="col-sm-4 col-form-label">E-mail*</label>
					<div class="input-group col-sm-6">
						<input type="text" required="required" class="form-control"
							name="email" id="email" value="<%=회원정보.getEmail()%>" />
					</div>
				</div>


				<div class="form-group">
					<label for="post" class="col-sm-4 col-form-label">우편번호</label>
					<div class="input-group col-sm-6">
						<input type="text" readonly="readonly" class="form-control"
							name="post" id="post" value="<%=회원정보.getPost()%>" /> <input
							type="button" class="btn btn-outline-secondary"
							onclick="우편번호조회하다()" value="우편조회" />
					</div>
				</div>



				<div class="form-group">
					<label for="address" class="col-sm-4 col-form-label">주소</label>
					<div class="col-sm-6">
						<input type="text" readonly="readonly" class="form-control"
							name="address" id="address" value="<%=회원정보.getAddress()%>" />
					</div>
				</div>



				<div class="form-group">
					<label for="detailAddress" class="col-sm-4 col-form-label">상세
						주소</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="detailAddress"
							id="detailAddress" value="<%=회원정보.getDetailAddress()%>" />
					</div>
				</div>



				<div class="form-group">
					<div class="col-sm-6">
						<button type="submit" class="btn btn-secondary">등록</button>
					</div>
				</div>
			</fieldset>
		</form>

		<div class="form-group">
			<button class="btn btn-outline-secondary"
				onclick="location.href='/deleteMember/<%=session.getAttribute("writerNo")%>'">탈퇴</button>
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
<script type="text/javascript">
	function 그림파일읽어출력하기(이벤트) {
		var fileInput = 이벤트.target;
		var 선택된그림파일관리객체 = fileInput.files[0];
		var 선택된그림size = 선택된그림파일관리객체.size;

		if (!선택된그림파일관리객체.type.match('image.*')) {
			alert("이미지파일이 아닙니다");
			fileInput.value = "";
			return;
		}

		var 파일리더 = new FileReader();
		파일리더.onload = function(선택된그림파일관리객체) {
			var imgProfile = document.getElementById("profile1");
			imgProfile.src = 선택된그림파일관리객체.currentTarget.result;
		};
		파일리더.readAsDataURL(선택된그림파일관리객체);
		return;
	}
	document.querySelector("#profile2").addEventListener("change", 그림파일읽어출력하기,
			false);
</script>
</html>