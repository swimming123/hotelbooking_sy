<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 경로 설정 --%>

<article>
	<div class="masthead" style="background-color: #8697A6; padding:10px10px;">
		<h2 class="text-white">오늘 뜨는 호텔 업로드</h2>
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		<%-- UI시작 --%>
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<form action="todayHtInsert" method="post" id="todayHtInsert" class="form-subscribe"
						enctype="multipart/form-data">
						<div class="text-left text-white">
							<div class="col">
								<label for="tHtName"><p>호텔이름</p></label> <input type="text"
									class="form-control form-control mb-1"  id="tHtName" placeholder="호텔이름(5-100)"
									name="tHtName" maxlength="100" required="required"
									pattern=".{5,100}">
							</div>
							<div class="col">
								<label for="tHtGrade"><p>호텔별점</p></label> <input type="number"
									class="form-control form-control mb-1"  id="tHtGrade" name="tHtGrade"
									placeholder="0점 ~ 5점" min="0" max="5" required="required">
							</div>
							<div class="col">
								<label for="tHtPrice"><p>호텔가격</p></label> <input type="number"
									class="form-control form-control mb-1"  id="tHtPrice" name="tHtPrice"
									placeholder="1박 가격" required="required">
							</div>
							<div class="col">
								<label for="mfile"><p>이미지</p></label>
								<div class="col-sm-10">
									<input type="file" class="form-control form-control mb-1"  id="mfile" name="mfile">
								</div>
								<div class="col-sm-10">
									<%-- 이미지 미리보기 --%>
									<img src="${rPath}/image/noimage.jpg" id="imgx"
										style="width: 150px; border: dotted 1px; margin: 5px 5px">
								</div>
							</div>
						</div>
						<div class="text-center">
							<div class="form-group">
								<button type="submit" class="btn btn-primary">등록</button>
								<button type="button" class="btn btn-primary"
									onclick="location='todayHtList'">목록</button>
							</div>
						</div>
					</form>
					</div>
				</div>
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
