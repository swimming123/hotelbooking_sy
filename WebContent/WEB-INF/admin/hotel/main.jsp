<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<header class="">
	</header>
	<section class="bg-light text-center">
	<div>
		<br>
	</div>
	<h2>지금 여행을 떠나야 하는 이유 4가지!</h2>
	<div class="wrap"> <!-- 배너표시영역 -->
		<div class="rolling-list"> <!-- 원본배너 -->
			<ul>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon1.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 1 <br> 낭만적인 도시, 다낭</strong>
						<strong></strong>
	                    <span>예쁜 공간에서 보내는 시간 만큼 행복하고 소중한 시간은 없겠죠. 날씨 좋은 다낭에서 여유로운 시간을 마음껏 누리고 오세요!</span>
	                </div>
				</li>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon2.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 2 <br> 물의도시, 베네치아</strong>
						<span>배를 타고 이동하며 아름다운 물의 도시를 감상해보세요!</span>
					</div>
				</li>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon3.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 3 <br> 블라디보스토크</strong>
						<span>한국에서 가장 가까운 유럽. 시베리아 횡단열차로 세계 여행 하자구요! </span>
					</div>
				</li>
				<li>
					<div class="image-wrap">
	                    <img src="${rPath}/img/syyoon4.jpg" alt="">
	                </div>
	                <div class="desc">
	                    <strong>Point 4 <br> 봄, 여행의 시작!</strong>
	                    <span>봄바람 타고 여행을 떠나 봄! <br>아름다운 내나라 여행</span>
	                </div>
				</li>
			</ul>
			
		</div>
	</div>

	<div class="desc">
	    <strong>환율정보</strong>
	    <p id="exchangeRate"></p>
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
					<script src="${rPath }/js/exchange.js"></script>
	    <c:forEach var="key" items="${quotes_data}">
	        <p>${key}: ${quotes_data[key]}</p>
	    </c:forEach>
	</div>

</section>
	<script>
	//롤링 배너 복제본 생성
	let roller = document.querySelector('.rolling-list');
	roller.id = 'roller1'; // 아이디 부여
	
	let clone = roller.cloneNode(true)
	// cloneNode : 노드 복제. 기본값은 false. 자식 노드까지 복제를 원하면 true 사용
	clone.id = 'roller2';
	document.querySelector('.wrap').appendChild(clone); // wrap 하위 자식으로 부착
	
	document.querySelector('#roller1').style.left = '0px';
	document.querySelector('#roller2').style.left = document.querySelector('.rolling-list ul').offsetWidth + 'px';
	// offsetWidth : 요소의 크기 확인(margin을 제외한 padding값, border값까지 계산한 값)
	
	roller.classList.add('original');
	clone.classList.add('clone');
	</script>
	<!-- 검색 
	<section class="bg-light text-center">
	
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div>
					<br>
				</div>
				<form method="post" class="form-subscribe" id="contactForm" action="">
					<div class="row">
						<div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">어디로 떠나시나요?</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">가는날 선택</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">오는날 선택</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">숙박 인원</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline"></div>
					    </div>
						<div class=""></div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="citiName" type="text" placeholder="여행지, 숙소명 입력" max="20" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="checkInDate" type="date" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="checkOutDate" type="date"/>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="stayMember" type="number" placeholder="숙박인원" max="10" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input type="button" class="btn btn-primary" id="submitButton" onclick="location='mainSearch'" value="검색"/>
					    </div>
					</div>
						
				</form>
			</div>
		</div>
	</section>
	-->
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<div>
			<br>
		</div>
		<div class="container">
			<h2>등록테스트</h2>
			<div class="row">
				<c:forEach var="e" items="${thtlist}">
					<div class="col-lg-4 mb-3">
						<div
							class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
							<img class="mb-5" src="${rPath }/img/${e.tHtImg}" alt="..."
								style="width: 216px; height: 216px;" />
						</div>
						<h3>
							<a href="todayHtDetail?tHtNum=${e.tHtNum }">${e.tHtName}</a>
						</h3>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill">${e.tHtGrade}점</div>
						</div>

						<p class="lead mb-2">${e.tHtPrice}원부터~</p>
						<button class="btn btn-primary btn-lg" id="bookingButton1"
							type="button"
							onclick="location.href='write'">예약하기</button>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</article>