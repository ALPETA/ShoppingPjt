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
				<label for="exampleInputPassword1">상품 명</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder=""
					name="p_name">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">상품 가격</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="" name="p_price">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">상품 제조사</label> <input
					name="p_manufacture" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">CPU</label> <select class="form-control"
					id="case" name="ps_cpu">
					<option></option>
					<option>cpu</option>
					<option>씨피유</option>
				</select>
			</div>



			<div class="form-group col-lg-10">
				<label for="exampleSelect1">RAM</label> <select class="form-control"
					id="case" name="ps_ram">
					<option></option>
					<option>4GB</option>
					<option>8GB</option>
					<option>16GB</option>
					
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">MAINBOARD</label> <select
					class="form-control" id="case" name="ps_mainboard">
					<option></option>
					<option>스카이레이크</option>
					<option>커피레이크</option>
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">GRAPHICS CARD</label> <select
					class="form-control" id="case" name="ps_graphic">
					<option></option>
					<option>지포스 GT</option>
					<option>지포스 GTX</option>
					<option>지포스 RTX</option>
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">HDD</label> <select class="form-control"
					id="case" name="ps_hdd">
					<option></option>
					<option>125GB</option>
					<option>256GB</option>
					<option>1TB</option>
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">SSD</label> <select class="form-control"
					id="case" name="ps_ssd">
					<option></option>
					<option>125GB</option>
					<option>256GB</option>
					<option>1TB</option>
				</select>
			</div>



			<div class="form-group col-lg-10">
				<label for="exampleInputPassword1">상품 수량</label><input type="number"
					min="1" class="form-control" max="10" step="1" value="1"
					id="exampleInputPassword1" />
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