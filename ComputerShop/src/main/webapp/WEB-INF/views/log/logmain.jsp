<%@page import="com.hardCarry.shopping.entity.UsersEntity"%>
<%@page
	import="com.hardCarry.shopping.entity.join.AdminOrderslookupViewEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script>
function loginHandle() {
	if ($("#AdminId").val().trim() === '') {
		alert('아이디를 입력해주세요.');
		$("#AdminId").focus();
		return;
	}
	if ($("#AdminPw").val().trim() === '') {
		alert('비밀번호를 입력해주세요.');
		$("#AdminPw").focus();
		return;
	}
	$.ajax({
		url : "./Adminlogin",
		method : "POST",
		data : {
			id : $("#AdminId").val(),
			pw : $("#AdminPw").val()
		},
		success : function(res) {
			alert("*로그인 완료");
			location.href = './logmain.do';
		},
		error : function(res) {
			alert('아이디 혹은 비밀번호가 일치하지 않거나 존재하지 않습니다.');
		}
	});
}

function logout() {
	alert('로그아웃 완료');
	location.href = "./Adminlogout";
}

$(document).ready(function() {
	$("#logoutBtn").click(function() {
		logout();
	})
});

$(document).ready(function() {
	$("#loginBtn").click(function() {
		loginHandle();
	})
});
</script>
<!-- jquery latest version -->
<script src="js/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="js/metisMenu.min.js"></script>
<script src="js/pageSection.js"></script>
<script src="js/commonFunc.js"></script>
</head>
<%
	UsersEntity user = (UsersEntity) session.getAttribute("admin");
%>
<body>
	<%@include file="./logcategory.jsp"%>
	<div class="container-fluid top-container">
		<div class="jumbotron">
			<h1>관리자 메인</h1>
			<p>관리자 메인 페이지</p>
		</div>
		<div class="card shadow mb-5 col-12" style="margin-top: 50px;">
		<br/>
		<%
			if(user==null){
		%>
		<h3>로그인</h3>
			<div class="col-lg-4">
				<div class="form-group">
					<label for="AdminId">아이디:</label> <input type="text"
						class="form-control" id="AdminId" name="AdminId">
				</div>
				<div class="form-group">
					<label for="AdminPw">비밀번호:</label> <input type="password"
						class="form-control" id="AdminPw" name="AdminPw">
				</div>
				<button type="submit" class="btn btn-primary" id="loginBtn">로그인</button>
			</div>
		<%
			} else {
		%>
			<div class="col-lg-4">
				<button type="submit" class="btn btn-primary" id="logoutBtn">로그아웃</button>
			</div>
		<%
			}
		%>
			<br>
		</div>

	</div>
</body>
</html>