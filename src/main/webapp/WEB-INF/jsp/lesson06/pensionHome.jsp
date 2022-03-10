<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
<div id="wrap" class="container bg-secondary">
		<header class="bg-info"><a href="pensionHome.jsp">통나무 펜션</a></header>
		<nav class="bg-danger">
			<ul class="nav">
				<li class="text-white"><a href=" ">펜션소개</a></li>
				<li class="text-white"><a href=" ">객실보기</a></li>
				<li class="text-white"><a href="booking.jsp">예약하기</a></li>
				<li class="text-white"><a href="booking_list.jsp ">예약목록</a></li>
			</ul>
		</nav>
		<div class="d-flex">
			<div>실시간 예약하기</div>
				<div class="form-group">예약확인
					<label>이름:
					<input type="text" class="form-control"></label>
					<label>전화번호:
					<input type="text" class="form-control"></label>
				</div>
				<button type="button" class="btn btn-success">조회하기</button>
			<div>예약문의: 010-0000-1111</div>
		</div>
		<footer class="bg-primary">Copyright © marondal 2021</footer>
	</div>
</body>
</html>