<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>나의 예약 정보(보호자)</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!-- Tables - SB Admin -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	HTMLElement.prototype.change=function(){
		  const e = document.createEvent("HTMLEvents");
		  e.initEvent('change', true, true );
		  return this.dispatchEvent(e);
	};
	window.addEventListener('DOMContentLoaded', ()=>{
		  const f=document.querySelector('#file');
		  const b=document.querySelector('#btn1');
		  f.addEventListener('change',e=>{
		    const n=e.target.files[0]?.name||null;
		    document.querySelector('.fileSelectArea p').textContent=n?n:"선택된 파일이 없습니다";
		  });
		  	b.addEventListener('click',()=>{
		    	f.value="";
		    	f.change();
		  });
	});

	function handleOnChange1(e) {
		  const text = e.options[e.selectedIndex].text;
		  document.getElementById('selectedPatient').innerText
		    = text;
		}
	function handleOnChange2(e) {
		  const text = e.options[e.selectedIndex].text;
		  document.getElementById('selectedHospital').innerText
		    = text;
		}
		
	function clickBtn() {
	    const ta = document.getElementById('textarea').value;
	    document.getElementById('textResult').textContent = ta;
	  }
  
	window.onload = function () {
		var cancel = document.getElementById('cancel');
		cancel.addEventListener('click', function () {
			var result = window.confirm('정말로 예약을 취소하시겠습니까?');
			
			if(result) {
				alert('정상적으로 처리되었습니다.');
				location.href='/scheduleProtector';
			}
		});
	}
</script>
<style type="text/css">
	#gridContainer {
		display: grid;
		grid-auto-rows: minmax(100px, auto);
		grid-template-columns: 75% 25%;
		position: static;
	}
	::placeholder {
		font-size: 12px;
	}
	#file {
		display: none;
	}
	label {
		width: 150px;
		color: #ffffff;
		background-color: #136FFF;
		cursor: pointer;
		border-radius: 50px;
		padding: 5px;
		font-size: 10.5pt;
		margin: auto;
		text-align: center;
	}
	label:hover {
		background-color: #005FFF;
	}
	#fileName {
		display: inline;
		font-size: 10pt;
	}
	#btn1 {
		float: right;
	}
	#selectedPatient, #selectedHospital, #textResult {
		display: inline;
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
					<h2 style="font-weight: bold; font-size: 30px;">나의 예약 정보</h2>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs Section -->
		<section class="inner-page">
			<div class="container">
				<div id="gridContainer">
					<div id="mainContainer">
						<p>병원을 선택한 후 날짜를 선택하면 진료 예약을 할 수 있습니다.</p>
						<select onchange="handleOnChange2(this)" id="selectHospital">
							<option value="myCalendar">나의 달력</option>
							<option value="" selected="selected">병원선택하기</option>
							<option value="a">A동물병원</option>
							<option value="b">B동물병원</option>
							<option value="c">C동물병원</option>
							<option value="d">D동물병원</option>
						</select> <a onclick="location.href='/map'" class="btn btn-primary btn-sm"
							style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">병원찾기</a>
						<br />
						<iframe
							src="https://calendar.google.com/calendar/embed?src=75e1efd2c444b0e1d243b7fe83e3e542f03f13b5b91f3b49d8aef1660d7b819d%40group.calendar.google.com&ctz=Asia%2FSeoul"
							style="border: 0" width="95%" height="100%" frameborder="0"
							scrolling="no"></iframe>
					</div>
					<div id="rightContainer">
						<div id="reservation">
							<h5>
								<b>예약 확인</b>
							</h5>
							<div align="right">
								<select name="patient">
									<option value="" selected="selected">환자선택하기</option>
									<option value="patient1">두둥</option>
									<option value="patient2">나비</option>
									<option value="patient3">초코</option>
								</select>
							</div>
						</div>
						<hr style="border: none; border-top: 1px dashed gray;" />
						<div>
							<table>
								<tr>
									<td>A동물 병원</td>
								</tr>
								<tr>
									<td>2023년 3월 2일 15:00</td>
								</tr>
								<tr>
									<td>내원이유 : 건강검진</td>
								</tr>
							</table>
							<div align="right">
								<input type="button" class="btn btn-primary btn-sm" value="예약수정"
									style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
								<input type="button" class="btn btn-primary btn-sm" value="예약취소" onclick="clickEvent()" id="cancel"
									style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white;">
							</div>
							<hr style="border: none; border-top: 1px dashed gray;" />
						</div>
						<hr
							style="border: none; height: 30px; box-shadow: 0 30px 30px -30px inset;" />
						<%-- 여기까지가 예약 확인 --%>
						<div>
							<form action="">
								<h5>
									<b>예약하기</b>
								</h5>
								<select onchange="handleOnChange1(this)" id="selectPatient">
									<option value="" selected="selected">환자선택하기</option>
									<option value="patient1">두둥</option>
									<option value="patient2">나비</option>
									<option value="patient3">초코</option>
								</select> <input type="button" class="btn btn-primary btn-sm"
									onclick="location.href='/patientAdd'" value="환자추가"
									style="border-radius: 50px; width: 90px; margin: auto; text-align: center; color: white; float: right;" />
								<br /> <br />
								<textarea style="width: 100%" rows="5" cols="30" id="textarea"
									placeholder="증상 혹은 내원 이유를 입력한 후 입력 버튼을 눌러주세요"></textarea>
								<div class="fileSelectArea">
									<div align="right">
										<div>
											<input type="button" class="btn btn-outline-primary btn-sm"
												value="입력" id="preview" onclick="clickBtn()"
												style="border-radius: 50px; width:75px; margin: auto;">
										</div>
										<br/>
										<div align="left" id="app">
											<label> <input type="file" class="form-control"
												accept=".jpg,.jpeg,.png,.gif,.bmp,.tif,.m4v,.mp4,.avi"
												name="file" id="file">&nbsp;사진/동영상 추가&nbsp;
											</label> <input type="button" class="btn btn-primary btn-sm" id="btn1" value="파일취소" style="border-radius: 50px; width: 90px; margin: auto;"/>
										</div>
									</div>
									<hr style="border: none; border-top: 1px dashed gray;" />
									<h6 style="text-align: center;">
										<b>예약내역 확인</b>
									</h6>
									<table>
										<tr>
											<td>선택 병원 : <div id="selectedHospital"></div></td>
										</tr>
										<tr>
											<td>선택 환자 : <div id="selectedPatient"></div></td>
										</tr>
										<tr>
											<td>선택 일자 : 2023년 3월 4일</td>
											<%-- 자동입력 필요  --%>
										</tr>
										<tr>
											<td>선택 시간 : 15:00</td>
											<%-- 자동입력 필요  --%>
										</tr>
										<tr>
											<td>내원 이유 : <div id="textResult"></div></td>
										</tr>
										<tr>
											<td>사진 및 동영상 : <p id="fileName">선택된 파일이 없습니다</p>
											</td>
										</tr>
									</table>
									<div align="right">
										<input type="submit" class="btn btn-primary btn-sm"
											value="예약하기"
											style="border-radius: 50px; width: 90px; margin: auto;">
									</div>
								</div>
							</form>
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