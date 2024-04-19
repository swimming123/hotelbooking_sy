<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>${thtlist.tHtName}</h2>
		<div class="container position-relative">
		<form action="" method="post" id=""
						class="form-subscribe" enctype="multipart/form-data">
			<div class="row justify-content-center">
				<div class="col-xl-6">
						<div class="text-black">
						<input type="hidden" name="tHtNum" value="${thtlist.tHtNum}" readonly="readonly">
							<div class="col">
								<label for="mfile"><p>이미지</p></label>
								<div class="col-sm-10">
									<img src="${rPath }/img/${thtlist.tHtImg}" id="imgx"
										style="width: 500px; border: dotted 1px; margin: 5px 5px">
								</div>
							</div>
							<div class="col">
								<label for="tHtName"><p>호텔이름</p></label> <input type="text"
									class="form-control form-control mb-1" id="tHtName"
									placeholder="호텔이름(5-100)" name="tHtName" maxlength="100"
									required="required" pattern=".{5,100}"
									value="${thtlist.tHtName}" readonly="readonly">
							</div>
							<div class="col">
								<label for="tHtGrade"><p>호텔별점</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtGrade"
									name="tHtGrade" placeholder="0점 ~ 5점" min="0" max="5"
									required="required" value="${thtlist.tHtGrade}" readonly="readonly">
							</div>
							<div class="col">
								<label for="tHtPrice"><p>호텔가격</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtPrice"
									name="tHtPrice" placeholder="1박 가격" required="required"
									value="${thtlist.tHtPrice}" readonly="readonly">
							</div>
						</div>
				</div>
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-primary" onclick="location='todayHtRerv'">예약하기</button>
				<button type="button" class="btn btn-primary" onclick="location='todayHtList'">목록</button>
			</div>
		</form>
		</div>
	</section>
</article>