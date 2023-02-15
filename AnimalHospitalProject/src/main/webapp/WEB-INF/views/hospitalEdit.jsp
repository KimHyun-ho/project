<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>병원 정보 수정</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script type="text/javascript" src="js/jsp/hospitalEdit.js"></script>
<style type="text/css">
.wrap {
	display: flex;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/includes/header.jsp"%>
	<main id="main">
	<form method="post" action="hospitalEdit" id="hospitalEditSubmit">
		<!-- ======= Breadcrumbs Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<br />
				<div class="section-title">
					<h2 style="font-weight: bold; font-size: 30px;">병원 정보 수정</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="animalanimalHospitalName">병원 이름</label>
					<input type="text" class="form-control" name="animalHospitalName" id="animalHospitalName" data-rule="animalanimalHospitalName" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="nameWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="address">주소</label>
					<div class="wrap">
						<input type="text" class="form-control" name="animalHospitalAddress" id="animalHospitalAddress" placeholder="주소찾기 버튼을 눌러주세요." data-rule="address" data-msg="필수입력 항목입니다."
							onFocus="this.style.backgroundImage='url(none)';">
						&nbsp;
						<input type="button" name="address_kakao" id="address_kakao" onclick="sample4_execDaumPostcode()" class="btn btn-primary btn-sm" value="주소찾기"
							style="border-radius: 50px; width: 110px; margin: auto; text-align: center; float: right; color: white;">
					</div>
					<div class="validate" id="addrWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="addressDetail">상세주소</label>
					<input type="text" class="form-control" name="animalHospitalAddressDetail" id="animalHospitalAddressDetail" placeholder="나머지 상세주소를 입력해 주세요." data-rule="addressDetail" data-msg="필수입력 항목입니다."
						onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="addrDetailWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="phone">전화번호</label>
					<input type="text" class="form-control" name="animalHospitalPhoneNo" id="animalHospitalPhoneNo" placeholder="대표 전화번호를 '-'를 써서 입력해 주세요." data-rule="phone" data-msg="필수입력 항목입니다." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="telNoWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="hospitalLocationLatitude">위도</label>
					<input type="text" class="form-control" name="hospitalLocationLatitude" id="hospitalLocationLatitude" data-rule="hospital_location_latitude" data-msg="필수입력 항목입니다."
						placeholder="위도는 소수 9~10번째 자리까지 입력해주세요." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="latWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 form-group mt-3">
					<div class="validate"></div>
				</div>
				<div class="col-md-4 form-group mt-3">
					<label for="hospitalLocationLongitude">경도</label>
					<input type="text" class="form-control" name="hospitalLocationLongitude" id="hospitalLocationLongitude" data-rule="hospitalLocationLatitude" data-msg="필수입력 항목입니다."
						placeholder="경도는 소수 9~10번째 자리까지 입력해주세요." onFocus="this.style.backgroundImage='url(none)';">
					<div class="validate" id="longWarnDiv"></div>
				</div>
			</div>
			<div class="row">
				<p></p>
				<p></p>
				<div class="col-md-4 form-group" style="margin: auto;">
					<input type="button" class="btn btn-secondary" name="move_pre_page" id="move_pre_page" value="이전페이지" onclick="location='/hospitalMap'"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; color: white;">
					<input type="button" class="btn btn-primary" name="hospitalEdit" id="hospitalEdit" value="병원정보 수정"
						style="border-radius: 50px; width: 130px; margin: auto; text-align: center; float: right; color: white;">
				</div>
			</div>
		</section>
		</form>
	</main>
	<!-- End #main -->
	<!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp"%>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#hospitalEdit').on('click', function() {
			var animalanimalHospitalName = $('#animalHospitalName').val();
			var address = $('#animalHospitalAddress').val();
			var addressDetail = $('#animalHospitalAddressDetail').val();
			var phone = $('#animalHospitalPhoneNo').val();
			var hospitalLocationLatitude = $('#hospitalLocationLatitude').val();
			var hospitalLocationLongitude = $('#hospitalLocationLongitude').val();
			var locationRegEx = /^\d{2,3}\.\d{9,10}$/;
			var phoneRegEx = /^01[0-9]\-\d{3,4}\-\d{4}$/;
			if (animalanimalHospitalName.length == 0 || animalanimalHospitalName.trim().length == 0 || animalanimalHospitalName.includes(' ')) {
				$('#animalHospitalName').focus();
				$('#animalHospitalName').attr('style', 'border-color: #dc3545;');
				$('#animalHospitalName').val('');
				$('#nameWarnDiv').html('<div id="nameWarn"><b style="color: red;">올바른 병원 이름을 입력해주세요.</b></div>');
			} else if (address == null || address.trim().length == 0) {
				$('#animalHospitalAddress').focus();
				$('#animalHospitalAddress').attr('style', 'border-color: #dc3545;');
				$('#animalHospitalAddress').val('');
				$('#addrWarnDiv').html('<div id="addrWarn"><b style="color: red;">주소를 입력해주세요.</b></div>');
			} else if (addressDetail == null || addressDetail.trim().length == 0) {
				$('#animalHospitalAddressDetail').focus();
				$('#animalHospitalAddressDetail').attr('style', 'border-color: #dc3545;');
				$('#animalHospitalAddressDetail').val('');
				$('#addrDetailWarnDiv').html('<div id="addrDetailWarn"><b style="color: red;">유효한 상세주소를 입력해주세요.</b></div>');
			} else if (phone == null || phone.trim().length == 0 || !phoneRegEx.test(phone)) {
				$('#animalHospitalPhoneNo').focus();
				$('#animalHospitalPhoneNo').attr('style', 'border-color: #dc3545;');
				$('#telNoWarnDiv').html('<div id="telNoWarn"><b style="color: red;">전화번호를 입력해주세요.</b></div>');
			} else if (!locationRegEx.test(hospitalLocationLatitude)) {
				$('#hospitalLocationLatitude').focus();
				$('#hospitalLocationLatitude').attr('style', 'border-color: #dc3545;');
				$('#latWarnDiv').html('<div id="latWarn"><b style="color: red;">유효한 위도를 입력해주세요.</b></div>');
			} else if (!locationRegEx.test(hospitalLocationLongitude)) {
				$('#hospitalLocationLongitude').focus();
				$('#hospitalLocationLongitude').attr('style', 'border-color: #dc3545;');
				$('#longWarnDiv').html('<div id="longWarn"><b style="color: red;">유효한 경도를 입력해주세요.</b></div>');
			} else {
				var result = window.confirm('작성한 내용으로 수정하시겠습니까?');
				if (result) {
					alert('정상적으로 처리되었습니다.');
					$("#hospitalEditSubmit").submit();
				} else if (!result) {
					alert('취소되었습니다.');
				}
			}
		});
	});
	$('#animalHospitalName').on('input', function() {
		if ($('#animalHospitalName').val() != '') {
			$('#animalHospitalName').attr('style', 'border-color : #ced4da;');
			$('#nameWarn').remove();
		}
	})
	$('#animalHospitalAddressDetail').on('input', function() {
		if ($('#animalHospitalAddressDetail').val() != '') {
			$('#animalHospitalAddressDetail').attr('style', 'border-color : #ced4da;');
			$('#addrDetailWarn').remove();
		}
	})
	$('#animalHospitalPhoneNo').on('input', function() {
		if ($('#animalHospitalPhoneNo').val() != '') {
			$('#animalHospitalPhoneNo').attr('style', 'border-color : #ced4da;');
			$('#telNoWarn').remove();
		}
	})
	$('#hospitalLocationLatitude').on('input', function() {
		if ($('#hospitalLocationLatitude').val() != '') {
			$('#hospitalLocationLatitude').attr('style', 'border-color : #ced4da;');
			$('#latWarn').remove();
		}
	})
	$('#hospitalLocationLongitude').on('input', function() {
		if ($('#hospitalLocationLongitude').val() != '') {
			$('#hospitalLocationLongitude').attr('style', 'border-color : #ced4da;');
			$('#longWarn').remove();
		}
	})
</script>
</html>