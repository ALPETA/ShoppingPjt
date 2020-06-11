<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8" />
<title>Bootstrap FAQ Template | PrepBootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style>
.faqHeader {
	font-size: 27px;
	margin: 20px;
}

.panel-heading [data-toggle="collapse"]:after {
	font-family: 'Glyphicons Halflings';
	content: "e072";
	float: right;
	color: #F58723;
	font-size: 18px;
	line-height: 22px;
	-webkit-transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	transform: rotate(-90deg);
}

.panel-heading [data-toggle="collapse"].collapsed:after {
	-webkit-transform: rotate(90deg);
	-moz-transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	-o-transform: rotate(90deg);
	transform: rotate(90deg);
	color: #454444;
}
</style>
</head>
<body>
	<div class="container">
		<br /> <br /> <br />
		<div id="accordion">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-header">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion" href="#collapseOne">Is account
							registration required?</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="card-block">
						Account registration at <strong>PrepBootstrap</strong> is only
						required if you will be selling or buying themes. This ensures a
						valid communication channel for all parties involved in any
						transactions.
					</div>
				</div>
			</div>
			<div class="card ">
				<div class="card-header">
					<h4 class="card-header">
						<a class="accordion-toggle collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#collapseSeven">Is this the
							latest version of an item</a>
					</h4>
				</div>
				<div id="collapseSeven" class="panel-collapse collapse">
					<div class="card-block">
						Each item in <strong>PrepBootstrap</strong> is maintained to its
						latest version. This ensures its smooth operation.
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
