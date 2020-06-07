<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노트북 등록</title>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body>
<form role="form">
	  <div class=" col-lg-4">
  <fieldset>
    <legend>제품 등록</legend>
    
            <div class="form-group">
      <label for="exampleSelect1">상품 세부 분류</label>
      <select class="form-control" id="exampleSelect1">
      	<option>분류 선택</option>
        <option>사무 분류</option>
        <option>게임 분류</option>
      </select>
    </div>
    
    <div class="form-group">
      <label for="exampleSelect1">게임 분류 (상품 세부 분류에서 게임 분류 선택 시에 활성화)</label>
      <select class="form-control" id="exampleSelect1">
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
    

    <div class="form-group">
        
      <label for="exampleInputEmail1">제품 코드</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="코드 입력">
    </div>
    
    
    <div class="form-group">
    	
      <label for="exampleInputPassword1">제품 명</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="제품 명 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">제품 가격</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="제품 가격 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">제품 제조사</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="제품 제조사">
    </div>
    
    <!-- 여기부터 사양 -->
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">CPU</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="CPU 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">RAM</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="RAM 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">MAINBOARD</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="MAINBOARD 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">GRAPHICS CARD</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="GRAPHICS CARD 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">HDD</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="HDD 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">SSD</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="SSD 입력">
    </div>
    
    <div class="form-group">
        
      <label for="exampleInputEmail1">POWER</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="POWER 입력">
    </div>
    
    <!-- 제품 끝 -->
    
    
    
    <div class="form-group">
    
      <label for="exampleInputFile">이미지 업로드</label>
      <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
      <small id="fileHelp" class="form-text text-muted">파일선택칸</small>
    </div>
    
    	
		<label for="exampleTextarea">제품 설명</label>
		<div class="form-group">
		<textarea class="form-control" id="exampleTextarea" rows="5"></textarea>
		</div>

		<div align="right">
			<a class="btn btn-lg10  btn btn-secondary" href="#">등록</a>
 			<a class="btn btn-lg10  btn btn-secondary" href="#">취소</a>
 			<a class="btn btn-lg10  btn btn-secondary" href="#">값 초기화</a>
 		</div>
    </fieldset>
    </div>

</form>
</body>
</html>