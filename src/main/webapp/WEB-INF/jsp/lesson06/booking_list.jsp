 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking list</title>
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
		<h1 class="text center">예약 목록 보기</h1>
		<div class="bg-success">
			<table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${bookingList}" var="booking">
						<tr>
							<td>${booking.name}</td>
							<td><fmt:formatDate  value="${booking.date}" pattern="yyyy년-M월-d일" /></td>
							<td>${booking.day}</td>
							<td>${booking.headcount}</td>
							<td>${booking.phoneNumber}</td>
							<td>
								<c:choose>
									<c:when test="${booking.state eq `확정`}">
										<span class="text-success">${booking.state}</span>
									</c:when>
									<c:when test="${booking.state eq `대기중`}">
										<span class="text-info">${booking.state}</span>
									</c:when>
									<c:when test="${booking.state eq `취소`}">
										<span class="text-danger">${booking.state}</span>
									</c:when>
								</c:choose>
							</td>
							<td>
							<button type="button"  class="del-btn btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<footer class="bg-primary">Copyright © marondal 2021</footer>
	</div>
	
	<script>
	
	$(document).ready(function() {
		$('.del-btn').on('click', function() {
			let id = $(this).data("booking-id");
			
		$.ajax({
			type:"DELETE"
			, url: "/lesson06/quiz03/delete_booking"
			, data: {"id": id}
			, success: function(data) {
				
			}
			, error: function(e) {
				alert("예약삭제에 실패했습니다.");
			}
			
			
		});
		});
	});
	</script>
</body>
</html>