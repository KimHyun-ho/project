<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
.

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">

<style type="text/css">
table {
	border-collapse: collapse;
}

.pageInfo {
	margin-left: 25%;
	margin-right: 20%;
	list-style: none;
	text-align: center;
}

.pageInfo_btn {
	float: left;
	font-size: 15px;
	margin-left: 13px;
	padding: 3px;
	font-weight: 500;
	text-align: center;
	border: 1px solid #dee2e6;
	width: 30px;
	height: 30px;
	display: inline-block;
}

.pageInfo_btn.next {
	float: left;
	font-size: 15px;
	margin-left: 13px;
	padding: 3px;
	font-weight: 500;
	text-align: center;
	border: 1px solid #dee2e6;
	width: 45px;
	height: 30px;
}

.pagination {
	justify-content: center;
}
</style>

</head>

<%@ include file="/WEB-INF/includes/header.jsp"%>


<body class="sb-nav-fixed">

	<!-- ======= Breadcrumbs Section ======= -->
	<section class="breadcrumbs">
		<div class="container">

			<br />
			<div class="section-title">
				<h2 style="font-weight: bold; font-size: 30px;">
					<br />담당 환자 전체 조회
				</h2>
			</div>
		</div>
	</section>
	<!-- End Breadcrumbs Section -->

	<section class="inner-page">
		<main>
			<!-- table section -->
			<div class="col-md-9" style="margin-left: 200px">
				<div class="white_shd full margin_bottom_30">
					<div class="full graph_head"></div>
					<div class="table_section padding_infor_info">
						<div class="table-responsive-sm">
							<table class="table table-hover" style="text-align: center">
								<thead>
									<tr>
										<th style="width: 8%">진료번호</th>
										<th style="width: 8%">환자명</th>
										<th style="width: 50%">진료내용</th>
										<th style="width: 15%">보호자명</th>
										<th style="width: 8%">진료일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>751</td>
										<td>아리</td>
										<td style="text-align: left;">감기</td>
										<td>한사람</td>
										<td>2023.01.30</td>
									</tr>
									<tr>
										<td>667</td>
										<td>토리</td>
										<td style="text-align: left;">감기</td>
										<td>두사람</td>
										<td>2023.01.10</td>
									</tr>
									<tr>
										<td>666</td>
										<td>아리</td>
										<td style="text-align: left;">건강검진</td>
										<td>한사람</td>
										<td>2022.11.10</td>
									</tr>
									<tr>
										<td>466</td>
										<td>토리</td>
										<td style="text-align: left;">구토</td>
										<td>두사람</td>
										<td>2022.01.30</td>
									</tr>
									<tr>
										<td>335</td>
										<td>토리</td>
										<td style="text-align: left;">건강검진</td>
										<td>두사람</td>
										<td>2021.12.30</td>
									</tr>
									<tr>
										<td>229</td>
										<td>겨울</td>
										<td style="text-align: left;">건강검진</td>
										<td>세사람</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>228</td>
										<td>아리</td>
										<td style="text-align: left;">결막염</td>
										<td>네사람</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>227</td>
										<td>토리</td>
										<td style="text-align: left;">결막염</td>
										<td>두사람</td>
										<td>2021.09.30</td>
									</tr>
									<tr>
										<td>111</td>
										<td>아리</td>
										<td style="text-align: left;">소화불량</td>
										<td>한사람</td>
										<td>2021.08.30</td>
									</tr>
									<tr>
										<td>45</td>
										<td>토리</td>
										<td style="text-align: left;">진료내용 예시입니다</td>
										<td>두사람</td>
										<td>2021.07.10</td>
									</tr>
									<tr>
										<td>32</td>
										<td>토리</td>
										<td style="text-align: left;">진료내용 예시입니다</td>
										<td>두사람</td>
										<td>2021.04.05</td>
									</tr>
								</tbody>
							</table>
							<br/>
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">6</a></li>
									<li class="page-item"><a class="page-link" href="#">7</a></li>
									<li class="page-item"><a class="page-link" href="#">8</a></li>
									<li class="page-item"><a class="page-link" href="#">9</a></li>
									<li class="page-item"><a class="page-link" href="#">10</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
							<!-- 각 번호 페이지 버튼
							 <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
								 <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
							 </c:forEach>
							 -->
							<!--  다음페이지 버튼-->
							<!-- 
					        <c:if test="${pageMaker.next}">
					        	 <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
					        </c:if> 
					        -->
						</div>
					</div>
				</div>
			</div>
		</main>

	</section>


</body>
<!-- Template Main JS File -->
<%@ include file="/WEB-INF/includes/footer.jsp"%>



</html>