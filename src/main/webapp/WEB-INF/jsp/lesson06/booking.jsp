<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<style>

.nav {color:orange;}
</style>

</head>
<body>
	<div id="wrap" class="container">
		<header><a href="pensionHome.jsp">통나무 펜션</a></header>
		<nav class="bg-danger">
			<ul class="nav">
				<li class="text-white"><a href=" ">펜션소개</a></li>
				<li class="text-white"><a href=" ">객실보기</a></li>
				<li class="text-white"><a href="booking.jsp">예약하기</a></li>
				<li class="text-white"><a href="booking_list.jsp ">예약목록</a></li>
			</ul>
		</nav>
		<h1>예약하기</h1>
			<div class="form-group">
			<label>이름
			<input type="text" id="name" class="form-control"></label>
			</div>
			<div class="form-group">
			<label>예약날짜
			<input type="text" id="date" class="form-control"></label>
			</div>
			<div class="form-group">
			<label>숙박일수
			<input type="text" id="day" class="form-control"></label>
			</div>
			<div class="form-group">
			<label>숙박인원
			<input type="text" id="headcount" class="form-control"></label>
			</div>
			<div class="form-group">
			<label>전화번호
			<input type="text" id="phoneNumber" class="form-control"></label>
			</div>
		<button type="button" id="reservationBtn" class="btn btn-warning">예약하기</button>
		<footer>Copyright © marondal 2021</footer>
	</div>
	
<script>
	$(document).ready(function() {
		$('input[name=date]').datepicker({
			minDate:0
			, dateFormat: "yy-mm-dd"
		});
		
		$('#reservationBtn').on('click', function() {
			let name = $('input[name=name]').val().trim();
			let name = $('input[name=date]').val().trim();
			let name = $('input[name=day]').val().trim();
			let name = $('input[name=headcount]').val().trim();
			let name = $('input[name=phoneNumber]').val().trim();

		});
		
		
		

		if (name.length < 1) {
			alert("이름을 입력하세요");
			return;
		}
		
		if (date == '') {
			alert("예약날짜를 입력하세요");
			return;
		}
		
		
		if (days.length < 1) {
			alert("숙박일수를 입력하세요");
			return;
		}
		
		if (headcount.length < 1) {
			alert("인원 수를 입력하세요");
			return;
		}
		
		if (phoneNumber == '') {
			alert("전화번호를 입력하세요");
			return;
		}
		
		$.ajax ({
			type:"post"
			, url:"/lesson06/quiz03/add_booking"
			, data: {"name": name, "date": date, "days": days, "headcount": headcount, "phoneNumber": phoneNumber}
			, success: function(data) {
				alert("예약 되었습니다.");
				location.href=""
			}
			, error: function(e) {
				alert("예약 실패");
			}
		});
		
		
		
		
		
		
		
		
	});

</script>
</body>
</html>