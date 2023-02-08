<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Medilab Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">


<!-- Vendor CSS Files -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Tables - SB Admin -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<style type="text/css">
#gridContainer {
	display: grid;
	grid-auto-rows: minmax(100px, auto);
	grid-template-columns: 75% 25%;
	position: static;
}


</style>
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<%@ include file="/WEB-INF/includes/header.jsp"%>

	<main id="main">

		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">스케줄 관리</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->

		<section class="inner-page">
			<div class="container">
				<div id="gridContainer">
					<div id="mainContainer">
						<h4><b>나의 스케줄</b></h4>
						<iframe src="https://calendar.google.com/calendar/embed?src=75e1efd2c444b0e1d243b7fe83e3e542f03f13b5b91f3b49d8aef1660d7b819d%40group.calendar.google.com&ctz=Asia%2FSeoul" style="border: 0" width="95%" height="600" frameborder="0" scrolling="no"></iframe>
					</div>
					<div id="rightContainer">
						<div id="toDoList">
							<h4 style="text-align: center;"><b>to do list</b></h4>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->


	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>

</body>

</html>