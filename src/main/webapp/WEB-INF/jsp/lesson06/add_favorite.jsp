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
			<label for="name" class="w-25">사이트명: <input type="text" class="form-control" name="name" id="name"></label><br>
			<label for="url" class="w-50">사이트 주소: <input type="text" class="form-control" name="url" id="url"></label>
			
			<div class="mt-3">
				<input type="button" id="addBtn" class="btn btn-success" value="추가">
			</div>
	</div>
<script>
${(document).ready(function()
		$('#addBtn').on('click', function(e) {
			
			// validation
			let name = $('input[name=name]').val().trim();
			if (name == '') {
				alert("이름을 입력하세요");
				return;
			}
			let url = $('#url').val().trim();
			if (url == '') {
				alert("url을 입력해주세요");
				return;
			}
			$.ajax({
				//request
				type:"post"
				, url:"/lesson06/quiz01/add_favorite"
				, data: {"name": name, "url": url}
				//response
				,successL function(data) {
					alert(data);
					location.href="";
				}
				.complete: function(data) {
					alert("완료");
				}
				, error: function(e) {
					alert("에러" + e);
				}
			})
		});
		)};
		

</script>
	
</body>
</html>