<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<h1>HOT 5</h1>
	<table class="table">
		<thead>
			<tr>
				<th>순위</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="song" items="${musicRanking}" varStatus="status">
				<tr>
					<th>${status.count}</th>
					<th>${status.index}</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h1>멤버십</h1>
	<table class="table">
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>포인트</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${membership}" varStatus="status">
				<tr>
				<th>${membership.name}</th>
				<th>${membership.phoneNumber}</th>
				<th>
					<c:choose>
					<c:when test="${membership.grade eq VIP}">
						<div class="text-danger">${membership.grade}</div>
					</c:when>
					<c:when test="${membership.grade eq GOLD}">
						<div class="text-warning">${membership.grade}</div>
					</c:when>
					<c:otherwise>
					${membership.grade}
					</c:otherwise>
					</c:choose>
				</th>
				<th>
					<c:choose>
					<c:when test="${membership.point > 5000}">
						<div class="tesxt-primary">${membership.point}</div>
					</c:when>
					<c:otherwise>
						${membership.point}
					</c:otherwise>
					</c:choose>
				</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>