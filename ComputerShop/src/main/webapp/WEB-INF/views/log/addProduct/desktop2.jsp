<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	
</script>
<script>
	$(document)
			.ready(
					function() {
						var imgByte;
						$("#case").change(function() {
							if ($(this).val() === '게임용') {
								$("#gameDisplaySection").fadeIn(300);
								return;
							}
							$("#gameDisplaySection").hide();
						});

						$("#mainImg").change(
								function() {
									const fileFilter = $(this).val();
									if (fileFilter === '') {
										return;
									}
									const extension = fileFilter.substring(
											fileFilter.indexOf('.'),
											fileFilter.length).toLowerCase();
									if (extension === '.jpg'
											|| extension === '.jpeg'
											|| extension === '.png') {
										readURL(this, 'mainImgSection');
									} else {
										alert("이미지 파일만 업로드 가능합니다.");
										$(this).val(null);
									}
								});

						$("#detailImg").change(
								function() {
									const fileFilter = $(this).val();
									if (fileFilter === '') {
										return;
									}
									const extension = fileFilter.substring(
											fileFilter.indexOf('.'),
											fileFilter.length).toLowerCase();
									if (extension === '.jpg'
											|| extension === '.jpeg'
											|| extension === '.png') {
										readURL(this, 'detailImgSection');
									} else {
										alert("이미지 파일만 업로드 가능합니다.");
										$(this).val(null);
									}
								});

						$("#mainImgSection, #detailImgSection")
								.click(
										function() {
											$("#modalSection")
													.html(
															"<img src='"
																	+ imgByte
																	+ "' style='width:100%;height:800px'/>");
										});

						function readURL(input, sction) {
							if (input.files && input.files[0]) {
								var reader = new FileReader();
								reader.onload = function(e) {
									imgByte = e.target.result;
									$('#' + sction)
											.attr('src', e.target.result);
								}
								reader.readAsDataURL(input.files[0]);
							}
						}
					});

	//----------------------부품

	function getCpu() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getCpu",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var CpuSection = '';
				if (data.length > 0) {
					CpuSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						CpuSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					CpuSection += '<option>데이터가 없습니다.</option>'
				}
				$(".cpu").html(CpuSection);
			}
		})
	}

	function getRam() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getRam",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var RamSection = '';
				if (data.length > 0) {
					RamSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						RamSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					RamSection += '<option>데이터가 없습니다.</option>'
				}
				$(".ram").html(RamSection);
			}
		})
	}

	function getMain() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getMain",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var MainSection = '';
				if (data.length > 0) {
					MainSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						MainSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					MainSection += '<option>데이터가 없습니다.</option>'
				}
				$(".mainboard").html(MainSection);
			}
		})
	}

	function getVga() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getVga",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var VgaSection = '';
				if (data.length > 0) {
					VgaSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						VgaSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					VgaSection += '<option>데이터가 없습니다.</option>'
				}
				$(".vga").html(VgaSection);
			}
		})
	}

	function getHdd() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getHdd",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var HddSection = '';
				if (data.length > 0) {
					HddSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						HddSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					HddSection += '<option>데이터가 없습니다.</option>'
				}
				$(".hdd").html(HddSection);
			}
		})
	}

	function getSsd() {
		$('html').scrollTop();
		$.ajax({
			url : "./product/getSsd",
			data : {},
			method : "GET",
			success : function(res) {
				console.log(res);
				var data = res['data'];
				var SsdSection = '';
				if (data.length > 0) {
					SsdSection += '<option></option>';
					for (var i = 0; i < data.length; i++) {
						SsdSection += '<option>' + data[i]['p_name']
								+ '</option>';
					}
				} else {
					SsdSection += '<option>데이터가 없습니다.</option>'
				}
				$(".ssd").html(SsdSection);
			}
		})
	}
	window.onload = getCpu();
	window.onload = getRam();
	window.onload = getMain();
	window.onload = getVga();
	window.onload = getHdd();
	window.onload = getSsd();
</script>
<form method="post" action="./product/add" enctype="multipart/form-data">
	<div style="margin-top: 30px" class="container">
		<div class="row">

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">상품 용도</label> <select
					class="form-control" id="case" name="p_use">
					<option></option>
					<option>데스크탑</option>
					<option>노트북</option>
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">상품 용도</label> <select
					class="form-control" id="case" name="p_category">
					<option></option>
					<option>사무용</option>
					<option>게임용</option>
				</select>
			</div>
			<div class="form-group col-lg-10" style="display: none"
				id="gameDisplaySection">
				<label for="exampleSelect1">게임 장르</label> <select
					class="form-control" id="exampleSelect2">
					<option></option>
					<option>LOL</option>
					<option>MapleStory</option>
					<option>Dungeon & Fighter</option>
					<option>OverWatch</option>
					<option>BattleGrounds</option>
					<option>SuddenAttack</option>
					<option>FiFaOnline</option>
					<option>LostArk</option>
					<option>????????</option>
				</select>
			</div>
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
				<label for="exampleSelect1">CPU</label> <select
					class="form-control cpu" id="case" name="ps_cpu">

				</select>
			</div>



			<div class="form-group col-lg-10">
				<label for="exampleSelect1">RAM</label> <select
					class="form-control ram" id="case" name="ps_ram">
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">MAINBOARD</label> <select
					class="form-control mainboard" id="case" name="ps_mainboard">
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">GRAPHICS CARD</label> <select
					class="form-control vga" id="case" name="ps_graphic">
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">HDD</label> <select
					class="form-control hdd" id="case" name="ps_hdd">
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">SSD</label> <select
					class="form-control ssd" id="case" name="ps_ssd">
				</select>
			</div>



			<div class="form-group col-lg-10">
				<label for="exampleInputPassword1">상품 수량</label> <input
					type="number" min="1" class="form-control" max="1000" step="1"
					value="1" id="case" name="p_stock" />
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleSelect1">상품 판매 상태</label> <select
					class="form-control" id="case" name="p_state">
					<option></option>
					<option>판매 중</option>
					<option>판매 중단</option>
				</select>
			</div>

			<div class="form-group col-lg-10">
				<label>상품 메인 이미지 업로드</label> <input type="file"
					class="form-control-file" id="mainImg" aria-describedby="fileHelp"
					name="files"> <small id="fileHelp"
					class="form-text text-muted">이미지 미리 보기</small>
				<div class="row">
					<img id="mainImgSection" class="col-lg-10" style="cursor: pointer"
						data-toggle="modal" name="f1Img" data-target="#myModal" />
				</div>
			</div>

<!-- 			<div class="form-group col-lg-10">
				<label for="exampleInputFile">상품 상세 이미지 업로드</label> <input
					type="file" class="form-control-file" id="detailImg"
					aria-describedby="fileHelp"> <small id="fileHelp2"
					class="form-text text-muted">이미지 미리 보기</small>
				<div class="row">
					<img id="detailImgSection" class="col-lg-10"
						style="cursor: pointer" name="f2Img" data-toggle="modal"
						data-target="#myModal" />
				</div>
			</div> -->

			<div class="form-group col-lg-10">
				<label for="comment">상품 코멘트</label>
				<textarea class="form-control" name="p_etc" id="exampleTextarea"
					rows="5"></textarea>
			</div>
			<div class="form-group col-lg-10">
				<button type="submit" class="btn btn-primary btn-block">등
					록</button>
				<button type="button" class="btn btn-secondary btn-block">초기화</button>
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