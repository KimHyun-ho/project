<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>로그인</title>
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

<!-- Tables - SB Admin -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
  <%@ include file="/WEB-INF/includes/header.jsp" %>
  <main id="main">
    <!-- ======= Breadcrumbs Section ======= -->
	    <section class="breadcrumbs">
	      <div class="container">
		<br />
			<div class="section-title">
	          <h2 style="font-weight: bold; font-size: 30px;">로그인</h2>
	        </div>
	      </div>
	    </section><!-- End Breadcrumbs Section -->
	    <section class="inner-page">
	      <div class="container">
	         <form action="forms/appointment.php" method="post" role="form" class="php-email-form">
	          <div class="row">
	            <div class="col-md-4 form-group">
	              <div class="validate"></div>
	            </div>
	            <div class="col-md-4 form-group mt-3 mt-md-0">
	              <input type="email" class="form-control" name="idEmail" id="idEmail" placeholder="이메일주소를 입력해주세요." style="margin:auto;width: 300px;" data-rule="email" data-msg="아이디는 필수입력 항목입니다.">
	              <div class="validate"></div>
	            </div>
	          </div>
	          <div class="row">
	            <div class="col-md-4 form-group mt-3">
	              <div class="validate"></div>
	            </div>
	            <div class="col-md-4 form-group mt-3">
	              <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요" style="margin:auto;width: 300px;" data-msg="비밀번호는 필수입력 항목입니다.">
	              <div class="validate"></div>
	            </div>
	          </div>
	          <br />
	          <button type="submit" id="anihospital_login" class="w-40 btn btn-lg btn-primary" style="margin:auto;display:block;width:300px;border-radius: 50px; font-size: 12pt;height:50px;">email 로그인</button>
	          <button type="button" id="kakao_login" class="w-40 btn kakao_login_btn" style="margin:auto;display:block;"><img src="img/kakao_login_btn.png" style="border-radius: 50px; width:300px;height:50px;"></button>
	          <button type="button" id="naver_login" class="w-40 btn naver_login_btn" style="margin:auto;display:block;"><img src="img/naver_login_btn.png" style="border-radius: 50px; width:300px;height:50px;"></button>
	          <button type="button" id="google_login" class="w-40 btn google_login_btn" style="margin:auto;display:block;"><img src="img/google_login_btn.png" style="border-radius: 50px; width:300px;height:50px;"></button>
	        </form>
	      <br />
	      	<div class="col-md-3 form-group" style="margin: auto;">
				<a href="/" class="btn btn-secondary" style="border-radius:50px;width: 110px;text-align: center;color: white;">이전페이지</a>
				<a href="/roleCheck" class="btn btn-primary" style="border-radius:50px;width: 110px;text-align: center;float: right;color: white;">회원가입</a>
			</div>
	      </div>
	    </section>
  </main><!-- End #main -->
  <!-- Template Main JS File -->
	<%@ include file="/WEB-INF/includes/footer.jsp" %>
</body>
<script type="text/javascript">
$(function(){
    $('#anihospital_login').on('click', function() {
       var idEmail = $('#idEmail').val();
       var password = $('#password').val();
       if(idEmail.length==0||idEmail.trim().length==0||idEmail.includes(' ')){
            $('#idEmail').focus();
            $('#idEmail').attr('style','border-color:#dc3545;margin:auto;width:300px;');
        	   $('#idEmail').val('');
        	   $('#idEmail').after('<div id="warning"><b style="color:red;margin-left:60px;">올바른 이메일을 입력해주세요.</b></div>');
       }else if(password==null||password.trim().length==0){
            $('#password').focus();
            $('#password').attr('style','border-color:#dc3545;margin:auto;width:300px;');
        	   $('#password').val('');
        	   $('#password').after('<div id="warning"><b style="color:red;margin-left:60px;">올바른 비밀번호를 입력해주세요.</b></div>');
       }else{
    	   $('#anihospital_login').attr('onclick',"location='/'");
       }
    });
});
$('#idEmail').on('input',function(){
	if($('#idEmail').val() !=''){
		$('#idEmail').attr('style','margin:auto;width:300px;');
		$('#warning').remove();
	}
})
$('#password').on('input',function(){
	if($('#password').val() !=''){
		$('#password').attr('style','margin:auto;width:300px;');
		$('#warning').remove();
	}
})
</script>
</html>