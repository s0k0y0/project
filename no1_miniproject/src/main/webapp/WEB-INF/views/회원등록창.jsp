<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width" , initial-scale="1">
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

.lolo {
	border: silver solid 1px;
	border-radius: 30px;
	width: 60%;
}

.lolocontent {
	width: 1500px; 
	margin: 0 auto;
	
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

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: gray !important;
	text-decoration: underline;
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

<title>Project</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/litera/bootstrap.min.css"
	integrity="sha384-enpDwFISL6M3ZGZ50Tjo8m65q06uLVnyvkFO3rsoW0UC15ATBFz3QEhr3hmxpYsn"
	crossorigin="anonymous">
<title>????????????</title>



<style type="text/css">
.lolo {
	margin: 70px;
	width: 90%;
	border: silver solid 1px;
	border-radius: 30px;
	padding: 50px;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function ????????????????????????() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.querySelector("#post").value = data.zonecode;
				document.querySelector("#address").value = data.roadAddress;

				document.querySelector("#detailAddress").focus();
			}
		}).open();
	}

	function id?????????????????????() {
		document.querySelector("#id").value = "";
		window.open("/id", "", "width=500,height=300");
	}

	function id?????????(id) {
		document.querySelector("#id").value = id;
	}

	function ??????????????????() {

		let password = document.querySelector("#password").value;
		let password2 = document.querySelector("#password2").value;

		if (password != password2) {
			alert("??????????????? ???????????? ?????????.");
			return false;
		}

		let email1 = document.querySelector("#email1").value;
		let email2 = document.querySelector("#email2").value;
		let email = document.querySelector("#email");
		email.value = email1 + "@" + email2;

		return true;
	}
</script>



</head>
<body>

	<div class="header">
		<h1>
			<a href="main.jsp">Board</a>
		</h1>
	</div>



	<div class="lolo">
		<form class="lolocontent" onsubmit="return ??????????????????()" action="/join"
			method="post">
			<fieldset>
				<legend>?????? ??????</legend>

				<div class="form-group">
					<label for="name" class="col-sm-4 col-form-label">?????????*</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="name" id="name"
							required="required" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6">
						<img id="profile1" name="profile1" src="/img/default_image.jpg"
							class="img-thumbnail" width="200" height="100" />
					</div>
				</div>

				<div class="form-group">
					<label for="profile2" class="col-sm-4 col-form-label">?????????</label>
					<div class="col-sm-6">
						<input type="file" class="form-control" name="profile2"
							id="profile2" readonly="readonly">
					</div>
				</div>


				<div class="form-group">
					<label for="post" class="col-sm-4 col-form-label">????????????</label>
					<div class="input-group col-sm-6">
						<input type="text" readonly="readonly" class="form-control"
							name="post" id="post" /> <input type="button"
							class="btn btn-outline-secondary" onclick="????????????????????????()"
							value="????????????" />
					</div>
				</div>

				<div class="form-group">
					<label for="address" class="col-sm-4 col-form-label">??????</label>
					<div class="col-sm-6">
						<input type="text" readonly="readonly" class="form-control"
							name="address" id="address" />
					</div>
				</div>


				<div class="form-group">
					<label for="detailAddress" class="col-sm-4 col-form-label">??????
						??????</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="detailAddress"
							id="detailAddress" />
					</div>
				</div>


				<div class="form-group">
					<label for="id" class="col-sm-4 col-form-label">ID*</label>
					<div class="input-group col-sm-6">
						<input type="text" class="form-control" name="id" id="id"
							required="required" readonly="readonly" /> <input type="button"
							class="btn btn-outline-secondary" onclick="id?????????????????????()"
							value="????????????" />
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
						<input type="text" class="form-control" id="email1" name="email1"
							required="required" />
						<p style="font-size: 20px">@</p>
						<select class="form-control" name="email2" id="email2">
							<option value="naver.com">navar.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="??????">????????????</option>
						</select> <input type="hidden" name="email" id="email" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6">
						<button type="submit" class="btn btn-secondary">??????</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>



	<div class="footer">
		<div>?? Secret Compony</div>
		<p>
			<span id="footercontent">????????????</span> <span id="footercontent">????????????
				????????????</span> <span id="footercontent">?????????????????????</span>
		</p>
	</div>







</body>
<script type="text/javascript">
	function ??????????????????????????????(?????????) {
		var fileInput = ?????????.target;
		var ????????????????????????????????? = fileInput.files[0];
		var ???????????????size = ?????????????????????????????????.size;

		if (!?????????????????????????????????.type.match('image.*')) {
			alert("?????????????????? ????????????");
			fileInput.value = "";
			return;
		}

		var ???????????? = new FileReader();
		????????????.onload = function(?????????????????????????????????) {
			var imgProfile = document.getElementById("profile1");
			imgProfile.src = ?????????????????????????????????.currentTarget.result;
		};
		????????????.readAsDataURL(?????????????????????????????????);
		return;
	}
	document.querySelector("#profile2").addEventListener("change", ??????????????????????????????,
			false);
</script>
</html>