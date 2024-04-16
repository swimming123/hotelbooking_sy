<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
<!-- 안씁니다.-->
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>등록테스트</h2>
		<div class="row">
			<form action="todayHtUp" method="post" id="todayHtUpdate" enctype="multipart/form-data">
    			<input type="hidden" name="tHtNum" value="${thtlist.tHtNum}">	
				<div class="form-group">
					<label for="tHtName">호텔이름</label>
					<input type="text" class="form-control" id="tHtName"
						placeholder="호텔이름(5-100)" name="tHtName" maxlength="100"
						required="required" pattern=".{5,100}">
				</div>
				<div class="form-group">
					<label for="tHtGrade">호텔별점</label> <input type="number"
						class="form-control" id="tHtGrade" name="tHtGrade"
						placeholder="0점 ~ 5점" min="0" max="5" value="${thtlist.tHtGrade}"
						required="required">
				</div>
				<div class="form-group">
					<label for="tHtPrice">호텔가격</label> <input type="number"
						class="form-control" id="tHtPrice" name="tHtPrice" value="${thtlist.tHtPrice}"
						placeholder="1박 가격" required="required">
				</div>
				<div class="form-group">
					<label for="mfile">이미지</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="mfile" name="mfile">
					</div>
					<div class="col-sm-10">
						<%-- 이미지 미리보기 --%>
						<img src="${rPath}/image/${thtlist.tHtImg}" id="imgx"
							style="width: 150px; border: dotted 1px; margin: 5px 5px">
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">등록</button>
					<button type="button" class="btn btn-primary"
						onclick="location='todayHtList'">목록</button>
				</div>
			</form>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location='todayHtWrite'">작성</button>
		</div>
	</section>
</article>