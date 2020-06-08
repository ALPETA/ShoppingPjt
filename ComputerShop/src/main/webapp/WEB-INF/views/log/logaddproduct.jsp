<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

  <%@include file="./logMetadata.jsp"%>

</head>



<body id="page-top">

		<!-- 여기까지 왼쪽 카테고리 -->
		<%@include file="./logcategory.jsp"%>
		
		
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-secondary">상품 등록</h6> 
            </div>
            <br>
            
			<!-- button -->
 				
              	
				<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="제품 검색" aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                  <button type="button" class="btn btn-secondary">검색</button>
              </div>
            </div>
          </form>
				

			         
            
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>제품 코드</th>
                      <th>제품 명</th>
                      <th>제품 주문 횟수</th>
                      <th>제품 재고</th>
                      <th>제품 제조사</th>
                      <th>제품 이미지 </th>
                    </tr>
                  </thead>
                    <tr>
                      <th>#1df3f</th>
                      <th>CPU</th>
                      <th>5</th>
                      <th>150</th>
                      <th>HarrdCarry</th>
                      <th>이미지</th>
                    </tr>
                    <tr>
                      <th>#1df3f</th>
                      <th>CPU</th>
                      <th>5</th>
                      <th>150</th>
                      <th>HarrdCarry</th>
                      <th>이미지</th>
                    </tr>
				</table>
				</div>


				<div>
					<ul class="pagination pagination-lg">
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
						</li>
						<li class="page-item active"><a class="page-link" href="#">1</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">6</a></li>
						<li class="page-item"><a class="page-link" href="#">7</a></li>
						<li class="page-item"><a class="page-link" href="#">8</a></li>
						<li class="page-item"><a class="page-link" href="#">9</a></li>
						<li class="page-item"><a class="page-link" href="#">10</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a>
						</li>
					</ul>
				</div>
				
				<div align="right">
					<a class="btn btn-lg1  btn btn-secondary" href="logadddesktop.do">상품 등록</a>
					<a class="btn btn-lg1  btn btn-secondary" href="#">상품 수정</a>
					<a class="btn btn-lg1  btn btn-secondary" href="#">상품 삭제</a>
 				</div>
				
			</div>
          </div>
        </div>
        </body>
        </html>