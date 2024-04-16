<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>어드민으로 가야 할 수정/삭제 페이지</h2>
		<div class="container position-relative">
		<form action="todayHtUp" method="post" id="todayHtUp"
						class="form-subscribe" enctype="multipart/form-data">
			<div class="row justify-content-center">
				<div class="col-xl-6">
						<div class="text-black">
						<input type="hidden" id="tHtNum" name="tHtNum" value="${thtlist.tHtNum}">
							<div class="col">
								<label for="mfile"><p>이미지</p></label>
								<div class="col-sm-10">
									<%-- 이미지 미리보기 --%>
									<img src="${rPath }/img/${thtlist.tHtImg}" id="imgx"
										style="width: 500px; border: dotted 1px; margin: 5px 5px">
								</div>
								
								<div class="col-sm-10">
									<input type="file" class="form-control form-control mb-1"
										id="mfile" name="mfile">
								</div>
							</div>
							<div class="col">
								<label for="tHtName"><p>호텔이름</p></label> <input type="text"
									class="form-control form-control mb-1" id="tHtName"
									placeholder="호텔이름(5-100)" name="tHtName" maxlength="100"
									required="required" pattern=".{5,100}"
									value="${thtlist.tHtName}">
							</div>
							<div class="col">
								<label for="tHtGrade"><p>호텔별점</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtGrade"
									name="tHtGrade" placeholder="0점 ~ 5점" min="0" max="5"
									required="required" value="${thtlist.tHtGrade}">
							</div>
							<div class="col">
								<label for="tHtPrice"><p>호텔가격</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtPrice"
									name="tHtPrice" placeholder="1박 가격" required="required"
									value="${thtlist.tHtPrice}">
							</div>

						</div>

					
				</div>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-outline-secondary">수정하기</button>
				<button type="button" class="btn btn-primary"
					onclick="location='todayHtDelete?tHtNum=${thtlist.tHtNum}'">삭제</button>
				<button type="button" class="btn btn-primary"
					onclick="location='main'">목록</button>
			</div>
		</form>
		</div>
	</section>
</article>