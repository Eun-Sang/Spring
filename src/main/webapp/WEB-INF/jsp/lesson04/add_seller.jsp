<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 추가</title>
</head>
<body>
	<div class="container">
		<h1>판매자 추가</h1>
		<form method="post" action="/lesson04/quiz01/add_seller">
		<div class="form-group">
		<div><b>닉네임</b></div>
		<input type="text" id="nickname" name="nickname" class="form-control col-3" placeholder="다팔아">
		</div>
		<div class="form-group">
		<div><b>프로필 사진 URL</b></div>
		<input type="text" id="profileImgUrl" name="profileImgUrl" class="form-control col-5" placeholder="http://">
		</div>
		<div class="form-group">
		<div><b>매너온도</b></div>
		<input type="text" id="temperature" name="temperature" class="form-control col-3" placeholder="36.5">
		</div>
		
		<input type="submit" class="btn btn-primary" value="추가">
		</form>
	</div>
</body>
</html>