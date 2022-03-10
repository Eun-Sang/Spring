<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가</h1>
			<div class="form-group">
				<label for="name" class="w-25">사이트명: <input type="text" id="site" class="form-control" name="name"></label>
			</div>
			<div class="form-group d-flex">
				<label for="url" class="w-50">사이트 주소: 
					<div class="form-inline">
					<input type="text" id="address" class="form-control col-10" name="url"></label>
					<button type="button" class="btn btn-info" id="urlCheckBtn">중복확인</button>
					</div>
				</div>
			<small id="duplicationText" class="text-danger d-none">중복된 URL 입니다.</small>
			<small id="availableUrlText" class="text-success d-none">저장 가능한 URL 입니다.</small>
				<button type="button" id="addFavoriteBtn" class="btn btn-success btn-block">추가</button>
	</div>
<script>
$(document).ready(function() {
		
			
			// validation
			let site = $('#site').val().trim();
			if (site.length < 1) {
				alert("이름을 입력하세요");
				return;
			}
			let address = $('#address').val().trim();
			if (address == '') {
				alert("주소를 입력해주세요");
				return;
			}
			
			if (address.startsWith("http://") == false && address.startsWith("https://") == false) {
				alert("주소형식이 잘못 되었습니다.");
				return;
			}
			
			$('#addFavoriteBtn').on('click', function() {
				// 초기화
			
				$('#urlStatusArea').empty();
				if (address == '') {
					$('#urlStatusArea').append('<span class="text-danger">주소가 비어있습니다.</span>');
					return;
				}
			$.ajax({
				//request
				type:"get"
				, url: "lesson06/quiz02/is_duplication"
				, data: {"address": address}
				//response
				, success: function(data) {
					if (data.is_duplication) {
						$('#urlStatusArea').append('<span class="text-danger">중복된 주소 입니다.</span>');
					}
				}
				, error: function(e) {
					alert("실패");
				}
			});	
			
			//quiz02
			
			$('#urlCheckBtn').on('click', function() {
				let url = $('#address').val().trim();
				if (url == '') {
					alert("검사할 URL을 입력 해주세요");
					return;
				}
				
				$.ajax({ 
					type: "post"
					, url: "/lesson06/quiz02/check_duplication_url"
					, data: {"url": url}
					, success: function(data) {
						if (data.result) {		// 중복일 때
							$('#duplicationText').removeClass('d-none');
							$('#availableUrlText').addClass('d-none');
						} else		// 중복이 아닐 때
							$('#availableUrlText').removeClass('d-none');
							$('#duplicationText').addClass('d-none');
					}
					, error: function(e) {
						alert("중복확인에 실패했습니다.");
					}
				});
			})
		});
		)};
		

</script>
	
</body>
</html>