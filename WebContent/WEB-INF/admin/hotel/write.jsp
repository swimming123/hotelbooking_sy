<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 경로 설정 --%>

<article>
	<header>
		<h1>FileUpload Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<%-- UI시작 --%>
	<div class="container">
		<div class="row">
			<h2>오늘 뜨는 호텔 업로드</h2>
			<form action="todayHtInsert" method="post" id="todayHtInsert"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="tHtName">호텔이름</label>
					<input type="text" class="form-control" id="tHtName"
						placeholder="호텔이름(5-100)" name="tHtName" maxlength="100"
						required="required" pattern=".{5,100}">
				</div>
				<div class="form-group">
					<label for="tHtGrade">호텔별점</label> <input type="number"
						class="form-control" id="tHtGrade" name="tHtGrade"
						placeholder="0점 ~ 5점" min="0" max="5"
						required="required">
				</div>
				<div class="form-group">
					<label for="tHtPrice">호텔가격</label> <input type="number"
						class="form-control" id="tHtPrice" name="tHtPrice"
						placeholder="1박 가격" required="required">
				</div>
				<div class="form-group">
					<label for="mfile">이미지</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="mfile" name="mfile">
					</div>
					<div class="col-sm-10">
						<%-- 이미지 미리보기 --%>
						<img src="${rPath}/image/noimage.jpg" id="imgx"
							style="width: 150px; border: dotted 1px; margin: 5px 5px">
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">등록</button>
					<button type="button" class="btn btn-primary"
						onclick="location='todayHtList'">목록</button>
				</div>
			</form>
		</div>
	</div>
</article>
<%-- UI끝 --%>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) { 
			console.log("파일 업로드 동작!")
			var reader = new FileReader();
			reader.onload = function(e) {
				console.log("이벤트 발생:" + e.target.result);
				$('#imgx').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function() {
		$('#mfile').change(function() {
			console.log("파일에 변화가 생겼습니다.");
			console.log("객체 this는 file Tag.val()" + $(this).val());
			readURL(this);
		});
	});
</script>
