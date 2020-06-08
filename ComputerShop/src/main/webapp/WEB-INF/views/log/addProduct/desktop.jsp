<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document)
.ready(
    function() {
        var imgByte;
        $("#exampleSelect1").change(function() {
            if ($(this).val() === '게임 분류') {
                $("#gameDisplaySection").fadeIn(300);
                return;
            }
            $("#gameDisplaySection").hide();
        });

        $("#mainImg").change(
            function() {
            	const fileFilter = $(this).val();
				if(fileFilter === ''){
					return;
				}
            	const extension = fileFilter.substring(
                      fileFilter.indexOf('.'),
                      fileFilter.length).toLowerCase();
                if (extension === '.jpg' ||
                    extension === '.jpeg' ||
                    extension === '.png') {
                    readURL(this,'mainImgSection');
                } else {
                    alert("이미지 파일만 업로드 가능합니다.");
                    $(this).val(null);
                }
            });
        
        $("#detailImg").change(
                function() {
                    const fileFilter = $(this).val();
    				if(fileFilter === ''){
    					return;
    				}
                    const extension = fileFilter.substring(
                        fileFilter.indexOf('.'),
                        fileFilter.length).toLowerCase();
                    if (extension === '.jpg' ||
                        extension === '.jpeg' ||
                        extension === '.png') {
                        readURL(this,'detailImgSection');
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
                            "<img src='" +
                            imgByte +
                            "' style='width:100%;height:800px'/>");
                });
  

        function readURL(input,sction) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    imgByte = e.target.result;
                    $('#' + sction).attr('src',
                        e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    });
</script>
<form>
	<div style="margin-top: 30px" class="container">
		<div class="row">
			<div class="form-group col-lg-10">
				<label for="exampleSelect1">상품 세부 분류</label> <select
					class="form-control" id="exampleSelect1">
					<option>분류 선택</option>
					<option>사무 분류</option>
					<option>게임 분류</option>
				</select>
			</div>
			<div class="form-group col-lg-10" style="display: none"
				id="gameDisplaySection">
				<label for="exampleSelect1">게임 분류</label> <select
					class="form-control" id="exampleSelect2">
					<option>게임 분류 선택</option>
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
				<label for="exampleInputPassword1">제품 명</label> <input
					name="productname" type="password" class="form-control" id="exampleInputPassword1"
					placeholder="제품 명 입력">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">제품 가격</label> <input name="productprice" type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="제품 가격 입력">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">제품 제조사</label> <input name="
manufacturer" type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="제품 제조사">
			</div>
			<div class="form-group col-lg-10">
				<label for="exampleInputEmail1">RAM</label> <input name="ram" type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="RAM 입력">
			</div>

			<div class="form-group col-lg-10">

				<label for="exampleInputEmail1">MAINBOARD</label> <input
					name="mainboard" type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="MAINBOARD 입력">
			</div>

			<div class="form-group col-lg-10">

				<label for="exampleInputEmail1">GRAPHICS CARD</label> <input
					name="graphicscard" type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="GRAPHICS CARD 입력">
			</div>

			<div class="form-group col-lg-10">

				<label for="exampleInputEmail1">HDD</label> <input type="email"
					name="hdd" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="HDD 입력">
			</div>

			<div class="form-group col-lg-10">

				<label for="exampleInputEmail1">SSD</label> <input type="email"
					name="ssd" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="SSD 입력">
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleInputFile">썸네일 이미지 업로드</label> <input type="file"
					class="form-control-file" id="mainImg" aria-describedby="fileHelp">
				<small id="fileHelp" class="form-text text-muted">파일선택칸</small>
				<div class="row">
					<img id="mainImgSection" class="col-lg-10" style="cursor: pointer"
						data-toggle="modal" name="f1Img" data-target="#myModal" />
				</div>
			</div>

			<div class="form-group col-lg-10">
				<label for="exampleInputFile">상세 이미지 업로드</label> <input type="file"
					class="form-control-file" id="detailImg"
					aria-describedby="fileHelp"> <small id="fileHelp"
					class="form-text text-muted">파일선택칸</small>
				<div class="row">
					<img id="detailImgSection" class="col-lg-10"
						style="cursor: pointer" name="f2Img" data-toggle="modal" data-target="#myModal" />
				</div>
			</div>

			<div class="form-group col-lg-10">
				<textarea class="form-control" name="Explanation" id="exampleTextarea" rows="5">제품 상세 설명</textarea>
			</div>
			<div class="form-group col-lg-10">
				<button type="button" class="btn btn-primary btn-block">등 록</button>
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