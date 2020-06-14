<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./commons/header/metaHeader.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>회원 가입</title>
<script>
	$(document).ready(function() {	
		$("#inputId").change(function() {
			if($(this).val().trim() !== ''){
				dupId($(this).val());
			}else{
				$("#dupChk").html('');
			}
		});
	})

	function dupId(id) {
		$.ajax({
			url : "./dupId",
			method : "GET",
			data : {
				id : id
			},
			success : function(res) {
				var text = res ? "<span style='color:blue'>사용 가능한 아이디입니다.</span>" : "<span style='color:red'>중복된 아이디가 존재합니다.</span>";
				$("#dupChk").html(text);
			}
		});
	}

	
</script>
</head>
<body class="main-layout">
	<%@include file="./commons/loader.jsp"%>
	<%@include file="./commons/header/header.jsp"%>
	<section class="banner_main">
		<div class="carousel-inner">
			<form method="post" action="./signUp">
				<br> <br> <br> <br> <br> <br>
				<div class="container">
					<div class="col-md-7" style="float: none; margin: 0 auto">
						<div class="page-header">
							<div>
								<h3>회원가입</h3>
							</div>
						</div>
						<div class="form-group">
							<h4>성명</h4>
							<input type="text" class="form-control" id="inputName"
								placeholder="이름을 입력해 주세요" name="name">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('name') }">
									<strong>${errors.getFieldError( 'name' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>아이디</h4>
							<input type="text" class="form-control" id="inputId"
								placeholder="아이디를 입력해 주세요" name="id"> <br> <span
								id="dupChk"></span><br/>
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('id') }">
									<strong>${errors.getFieldError( 'id' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>이메일 주소</h4>
							<input type="email" class="form-control" id="InputEmail"
								placeholder="이메일 주소를 입력해주세요" name="email">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('email') }">
									<strong>${errors.getFieldError( 'email' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>비밀번호</h4>
							<input type="password" class="form-control" id="inputPassword"
								placeholder="비밀번호를 입력해주세요" name="pw">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('pw') }">
									<strong>${errors.getFieldError( 'pw' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>비밀번호 확인</h4>
							<input type="password" class="form-control"
								id="inputPasswordCheck" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요"
								name=pwCh onkeyup="checkPwd()">
								<br> <span id="pwCheck"></span>
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('pwCh') }">
									<strong>${errors.getFieldError( 'pwCh' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>핸드폰 번호</h4>
							<input type="tel" class="form-control" id="inputMobile"
								placeholder="휴대폰번호를 입력해 주세요" name="phone">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('phone') }">
									<strong>${errors.getFieldError( 'phone' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>주소</h4>
							<input type="tel" class="form-control" id="inputMobile"
								placeholder="주소를 입력해 주세요" name="address">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('address') }">
									<strong>${errors.getFieldError( 'address' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h4>상세주소</h4>
							<input type="tel" class="form-control" id="inputMobile"
								placeholder="상세주소를 입력해 주세요" name="exaddress">
							<spring:hasBindErrors name="usersDTO">
								<c:if test="${errors.hasFieldErrors('exaddress') }">
									<strong>${errors.getFieldError( 'exaddress' ).defaultMessage }</strong>
								</c:if>
							</spring:hasBindErrors>
						</div>

						<div class="form-group">
							<h1>이용약관</h1>
							<h4 class="scheme-g">●이용약관1</h4>
							<textarea class="form-control" style="font-size: 1em;">
							the lend is clocked in deepest blue
							the shadow of egles across the moon
							indure the pain it's easy now
							what words can I say it? </textarea>
							<p style="color: white;">
								<input type="checkbox" id="check_1" name="" />위의 약관에 동의 합니다.
							</p>
							<br />

							<h4 class="scheme-g">●이용약관2</h4>
							<textarea class="form-control" style="font-size: 1em;">내용입니다. </textarea>
							<p style="color: white;">
								<input type="checkbox" id="check_2" name="" />위의 약관에 동의 합니다.
							</p>
							<br />

							<h4 class="scheme-g">●개인정보취급방침</h4>
							<textarea class="form-control" style="font-size: 1em;">내용입니다. </textarea>
							<p style="color: white;">
								<input type="checkbox" id="check_3" name="" />위의 약관에 동의 합니다.
							</p>
							<br />
						</div>

						<div class="form-group text-center">
							<button type="submit" id="join-submit" class="btn btn-primary">
								회원가입<i class="fa fa-check spaceLeft"></i>
							</button>
							<a class="btn btn-warning" href="index.do"> 가입취소<i
								class="fa fa-times spaceLeft"></i>
							</a>
						</div>
						<br> <br> <br> <br>
					</div>
				</div>
			</form>
		</div>
	</section>
	<%@include file="./commons/footer/footer.jsp"%>
	<!-- end footer -->
	<!-- Javascript files-->
	<%@include file="./commons/js/javascript.jsp"%>
	<!-- sidebar -->
	<%@include file="./commons/js/sidebar.jsp"%>
</body>
</html>