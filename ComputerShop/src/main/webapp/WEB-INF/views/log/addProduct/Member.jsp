<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<form method="post" action="./product/add" enctype="multipart/form-data">
	<div style="margin-top: 30px" class="container">
		<div class="row">
			<div class="form-group col-lg-10">
				<label for="exampleInputPassword1">회원 이름</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder=""
					name="p_name">
			</div>
			
			<div class="form-group col-lg-10">
				<label for="exampleInputPassword1">회원 아이디</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder=""
					name="p_name">
			</div>
		
			<div class="form-group col-lg-10">
				<label for="exampleInputPassword1">회원 전화번호</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder=""
					name="p_name">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">회원 이메일</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="" name="p_price">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">회원 주소</label> <input
					name="p_manufacture" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">회원 가입 날짜</label> <input
					name="p_manufacture" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
			</div>



			<div class="form-group col-lg-10">
				<button type="submit" class="btn btn-primary btn-block"
					onclick="test.jsp">목록으로</button>
				<button type="submit" class="btn btn-primary btn-block"
					onclick="test.jsp">삭제</button>
				
			</div>
		</div>
	</div>
</form>
<br />
<div class="modal fade" id="myModal">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-body" id="modalSection"></div>
		</div>
	</div>
</div>