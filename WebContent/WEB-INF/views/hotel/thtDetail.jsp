<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>상세페이지</h2>
		<div class="row">
			
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/${thtlist.tHtImg}" alt="..." />
					</div>
					<h3>${thtlist.tHtName}</h3>
					<p class="lead mb-0">${thtlist.tHtGrade}점</p>
					<p class="lead mb-2">${thtlist.tHtPrice}원부터~</p>
					
				</div>
				<div class="col-lg-4">
				<p>호텔정보</p>
				<p>호텔정보</p>
				<p>호텔정보</p>
				<p>호텔정보</p>
				<p>호텔정보</p>
				<p>호텔정보</p>
				<p>호텔정보</p>
				</div>
				<div class="col-lg-4">
				<button class="btn btn-primary btn-lg disabled" id="bookingButton1"
						type="submit">예약하기</button>
				</div>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location='todayHtUpdate'">수정하기</button>
		</div>
	</section>
</article>