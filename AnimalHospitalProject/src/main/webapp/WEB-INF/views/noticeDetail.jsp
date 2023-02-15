<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>공지사항 상세</title>
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
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
	#noticeForm{
	margin-bottom : 60px;
	margin-left : 15%;
	margin-right: 10%;
	width: 20%;
	}
	
	input{
	margin-bottom: 10px;
	border-radius: 5px;
	border: 1px solid gray;
	}
	
	textarea {
	border-radius: 5px;
	border: 1px solid gray;
	resize: none
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">
	<form method="post" action="noticeDetail" id="noticeDetailSubmit">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
		<br />
		<div class="section-title">
          <h2 style="font-weight: bold; font-size: 30px;">공지사항 상세</h2>
        </div>
      </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="inner-page">
      <div class="container">
        <div id="noticeForm">       
         <div class="col-md-4 form-group" style="margin: auto;">  
	          작성자 <br />
	          <input type="hidden" name="seq_notice" value="43">
	          <input id="username" class="form-control"  type="text" name="username" value="김아무개" disabled="disabled" style="width: 700px;"/> <br />
	          진료병원 <br />
	          <input id="animalHospital" class="form-control"  type="text" name="animalHospital" value="A동물병원" disabled="disabled" style="width: 700px;"/> <br />
	          작성일 <br />
	          <input type="date" class="form-control"  id="writeDate" value="2023-01-30" disabled="disabled" style="width: 700px;"/> <br />
	          제목 <br />
	          <textarea id="subject" class="form-control" name="subject" rows="1" cols="100" maxlength="50" disabled="disabled" style="width: 700px;"> 01월 30일 휴무 안내</textarea> <br />
	          내용 <br />
	          <textarea id="content" class="form-control" name="content" rows="20" cols="100" maxlength="500" disabled="disabled" style="width: 700px;"> 01월 30일 휴무 안내드립니다.</textarea> <br />
	      </div>
		</div>
        <div>
        <%-- 보호자로 로그인했을 때는 이전페이지 버튼만 보인다. --%>
        <div style="position: relative;">
        <button type="button" id="move_pre_page" name="move_pre_page" class="btn btn-secondary" style="border-radius:50px;width: 110px; float:left; margin-left: 22%;" onclick="history.go(-1)">이전페이지</button>
        <button type="submit" id="modify_btn" name="modify_btn" class="btn btn-primary bt-sm" style="border-radius:50px;width: 110px; display:inline; margin-left: 180px;" onclick="location='/noticeEdit'">수정</button>
        <button type="submit" id="delete_btn" name="delete_btn" class="btn btn-danger bt-sm" style="border-radius:50px; width: 110px; display:inline; float: right; margin-right: 15%;">삭제</button> <br />
        </div>
        </div>
      </div>
    </section>
	</form>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$('#delete_btn').on('click', function(){
		var result = window.confirm('정말로 삭제하시겠습니까?');
		if (result) {
			alert('정상적으로 삭제되었습니다.');
			$("#noticeDetailSubmit").submit();
		} else if (!result) {
			alert('취소 되었습니다.');
		}
	});
});
</script>
</html>