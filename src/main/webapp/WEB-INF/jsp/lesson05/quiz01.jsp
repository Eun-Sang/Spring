<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<h2>1)</h2>
	<c:set var="number1" value="36" />
	<h3>첫번째 숫자: ${number1}</h3>
	<c:set var="number2">3</c:set>
	<h3>두번째 숫자: ${number2}</h3>
	
	<h2>2)</h2>
	<h3>더하기: ${number1 + number2}</h3>
	<h3>빼기: ${number1 - number2}</h3>
	<h3>곱하기: ${number1 * number2}</h3>
	<h3>나누기: ${number1 / number2}</h3>
	
	<h2>3)</h2>
	<c:out value="<title>core out</title>" />
	<br>
	<c:out value="<title>core out</title>" escapeXml="true" />
	<br>
	
	<h2>4)</h2>
	<c:set var="number3" value="${number1 + number2/2 }" />
	<c:if test="${(number1 + number2) / 2 >= 10}">
		<h1>${(number1 + number2) / 2}</h1>
	</c:if>
	<c:if test="${(number1 + number2) / 2 < 10}">
		<h3>${(number1 + number2) / 2}</h3>
	</c:if>
	<%-- <c:if test="${number3 > 10 }">
		<h1>19.5</h1>
			<c:if test="${number3 < 10}">
				<h3>19.5</h3>
			</c:if>
		</c:if> --%>
	<br>
	
	<h2>5)</h2>
	<c:set var="number4" value="${number1 * number2}" />
	<c:if test="${number4 > 100}">
		<c:out value="<script>alert('너무 큰 수 입니다.')</script>" escapeXml="false" />
	</c:if>
	<%-- 
	<c:if> test="${number1 * number2 > 100}" 
		<c:out value="<script>alert('너무 큰 수 입니다.')</script>" escapeXml="false" />
	</c:if>
	--%>
	
</body>
</html>