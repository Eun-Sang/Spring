<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 정보</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" type="text/css" href="/css/weather_history.css">
</head>
<body>
	<div id="wrap" class="container bg-danger">
			<div class="bg-warning">
				<nav class="menu bg-primary col-2">
					<img alt="사진" src="/image/foot_logo2.png">
					<ul class="nav flex-column">
						<li>날씨</li>
						<li>날씨입력</li>
						<li>테마날씨</li>
						<li>관측기후</li>
					</ul>
				</nav>
				<div class="history bg-secondary col-10">
					<h1>과거 날씨</h1>
					<table class="table text-center">
						<thead>
							<tr>
								<th>날짜</th>
								<th>날씨</th>
								<th>기온</th>
								<th>강수량</th>
								<th>미세먼지</th>
								<th>풍속</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${weatherHistoryList}" var="weather">
								<tr>
									<td><fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일" /></td>
									<td>
										<c:choose>
											<c:when test="${weather.weather eq '맑음'}">
												<img alt="맑음" src="/image/sunny.jpg">
											</c:when>
											<c:when test="${weather.weather eq '구름조금' }">
												<img alt="구름조금" src="/image/partlyCloudy.jpg">
											</c:when>
											<c:when test="${weather.weather eq '흐림'}">
												<img alt="흐림" src="/image/cloudy.jpg">
											</c:when>
											<c:when test="${weather.weather eq '비'}">
												<img alt="비" src="/image/rainy.jpg">
											</c:when>
											<c:otherwise>
												${weather.weather}
											</c:otherwise>
										</c:choose>
									</td>
									<td>${weather.temperatures}℃</td>
									<td>${weather.precipitation}mm</td>
									<td>${weather.microDust}</td>
									<td>${weather.windSpeed}km/h</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		<footer class="bg-success">
		</footer>
	</div>
</body>
</html>