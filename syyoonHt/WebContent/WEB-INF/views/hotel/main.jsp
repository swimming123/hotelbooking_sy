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
		<!-- 검색영역시작-->
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
						<!-- 검색영역끝-->
				</form>
			</div>
		</div>
	</section>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<div>
			<br>
		</div>
		<div class="container">
			<h2>오늘의 추천 호텔</h2>
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
	<!-- 호텔 상품 영역 시작-->
	<section class="testimonials text-center bg-light">
		<div class="container">
			<h2 class="mt-5 mb-5 " style="margin-top: 10px">서울 인근 숙소</h2>
			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.glad-hotels.com/hub/resve/room/step1.do"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_glad.jpg " alt="..." /></a>
						<h5>글래드호텔</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">매우 좋음 9.2</p>
						<p class="font-weight-light mb-0">서울,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://parnashotel.com/reservationSchedule/"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_ninetree.jpg" alt="..." /></a>
						<h5>나인트리 프리미어 호텔</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">보통 6.4</p>
						<p class="font-weight-light mb-0">서울,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://m.ambatel.com/novotel/yongsan/ko/reservationStep1.do">
							<img class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_novotel.jpg" alt="..." />
						</a>
						<h5>노보텔 앰배서더 서울 용산</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">좋음 7.6</p>
						<p class="font-weight-light mb-0">서울,대한민국</p>
					</div>
				</div>
			</div>
			<h2 class="mt-5 mb-5">부산</h2>
			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.busanparadisehotel.co.kr/front/reservation"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_paradise.jpg" alt="..." /></a>
						<h5>파라다이스 호텔 부산</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">훌륭함 9.2</p>
						<p class="font-weight-light mb-0">부산,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.shillahotels.com/haeundae/resv/rpm/memSetStep1.do?propertyId=HUDSS&sBar=Y&lang=ko&_ga=2.52883304.1582475037.1709366650-714475058.1709366650&_gl=1*95o0qd*_ga*NzE0NDc1MDU4LjE3MDkzNjY2NTA.*_ga_30Y6N61ES4*MTcwOTM2NjY0OS4xLjEuMTcwOTM2NjY4MC4yOS4wLjA."><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_shillastay.jpg" alt="..." /></a>
						<h5>신라스테이 해운대</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">좋음 8.2</p>
						<p class="font-weight-light mb-0">부산,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.lottehotel.com/busan-signiel/ko.html?utm_source=google&utm_medium=cpc&utm_campaign=signiel|busan|locallocal|alwayson|PC|brand|korea|korean&utm_content=brand|none|none&gad_source=1&gclid=CjwKCAiAuYuvBhApEiwAzq_YibMc5Hty6fhs0O13wBVBwxBR_bc7AT2e85Ps9kylkdMQFohmMlp5VhoCtoIQAvD_BwE"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_signiel.jpg" alt="..." /></a>
						<h5>시그니엘 부산</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">매우 좋음 9.4</p>
						<p class="font-weight-light mb-0">부산,대한민국</p>
					</div>
				</div>
			</div>
			<h2 class="mt-5 mb-5">제주</h2>
			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.shilla.net/jeju/index.do"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_shilla.jpg" alt="..." /></a>
						<h5>제주신라호텔</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">매우 좋음 9.2</p>
						<p class="font-weight-light mb-0">제주,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.book-secure.com/index.php?s=results&property=krjej30939&arrival=2024-03-02&departure=2024-03-03&adults1=1&children1=0&locale=ko_KR&currency=KRW&stid=jrttag4i8&style=DIRECT&Hotelnames=ASIAKRHTLRamadaPlaza&hname=ASIAKRHTLRamadaPlaza&redir=BIZ&rt=1709366896"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_ramada.jpg" alt="..." /></a>
						<h5>라마다 프라자 제주</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">좋음 8.2</p>
						<p class="font-weight-light mb-0">제주,대한민국</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://parnashoteljeju.com/ko/stay/list.do?searchDataValue="><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_parnas.jpg" alt="..." /></a>
						<h5>파르나스 호텔 제주</h5>
						<div class="d-flex justify-content-center small text-warning mb-2">
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
							<div class="bi-star-fill"></div>
						</div>
						<p class="font-weight-light mb-0">매우 좋음 9.4</p>
						<p class="font-weight-light mb-0">제주,대한민국</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 호텔 상품 영역 끝-->

	<!--이번 주 추천 호텔 시작-->
	<section class="showcase">
		<div class="container-fluid p-0">
			<h2 class="text-center mt-5 mb-5">이번 주 추천 호텔</h2>
			<div class="row g-0">
				<div class="col-lg-6 order-lg-2 text-white showcase-img"
					style="background-image: url('${rPath }/img/shilla-showcase.jpg')"></div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>서울 신라 호텔</h2>
					<h4>Urban Lifestyle Hotel</h4>
					<p class="lead mb-0">
						한국의 전통미와 현대적 감각을 겸비하고 있는 세계 속의 명문호텔 서울신라호텔은 세계 최고의 어번(Urban)
						라이프스타일 호텔로 고객들에게 최고급 Hospitality 서비스를 제공합니다. <br> 한국을 대표하는
						럭셔리 호텔로서 '일상이 최고의 순간이 되는 곳'이라는 컨셉을 새롭게 선보이며 휴식은 물론 고급 식문화, 예술, 뷰티,
						쇼핑, 웨딩, 엔터테인먼트 등 고객의 고품격 라이프스타일을 제안하는 공간으로 거듭나고 있습니다.
					</p>
				</div>
			</div>
			<div class="row g-0">
				<div class="col-lg-6 text-white showcase-img"
					style="background-image: url('${rPath }/img/ninetree-showcase.jpg')"></div>
				<div class="col-lg-6 my-auto showcase-text">
					<h2>NINE TREE</h2>
					<h4>HIDDEN DELIGHT</h4>
					<p class="lead mb-0">
						빽빽한 빌딩 사이에서 반짝이는 여유를 발견합니다. 보이지 않는 섬세한 부분까지 나를 배려해 주는 감동, 예상하지 못한
						순간이 선물하는 기대보다 넘치는 기쁨, 새로운 공간, 새로운 분위기에서 새로운 인연을 만드는 즐거움, 이 모든 감동,
						기쁨, 즐거움이 모여 기억하고 싶은 나만의 소중한 장소가 생겼습니다.<br> <br> 나인트리는
						복잡한 도심 속 숨겨진 기쁨과 여유를 발견하는 특별한 경험을 선사합니다.
					</p>
				</div>
			</div>
			<div class="row g-0">
				<div class="col-lg-6 order-lg-2 text-white showcase-img"
					style="background-image: url('${rPath }/img/newv-showcase.jpg')"></div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>HOTEL NEWV</h2>
					<h4>HIDDEN DELIGHT</h4>
					<p class="lead mb-0">
						HOTEL NEWV는 대한민국의 비즈니스, 쇼핑, 문화, 교통의 중심 선릉에 위치하고 있으며 단순한 “숙박"이 아닌,
						문화와 생활을 즐길 수 있는 “Various Lifestyle Hotel” 입니다. <br> 모던하면서
						효율적인 공간의 150개의 객실을 포함하여 하루 종일 즐길 수 있는 올데이 다이닝(All day dining) 레스토랑
						Grand Newv를 통해 고객들에게 최상의 경험을 제공합니다.
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- 이번 주 추천 호텔 끝 -->
	<!-- 숙소 한눈에 비교하기 시작-->
	<section class="link-citi">
		<div class="container">
			<h2 class="text-center mt-5 mb-5">@@@@에서 모든 호텔과 숙소를 한눈에 비교해보세요!</h2>
			<h4 class="text-center mt-5 mb-5">전세계의 가장 좋은 상품을 만날 수 있습니다.</h4>
			<table class="mx-auto mb-5 mb-lg-0 text-center ">
				<tr>
					<td><a href="">서울</a></td>
					<td><a href="">인천</a></td>
					<td><a href="">강릉</a></td>
					<td><a href="">속초</a></td>
					<td><a href="">경주</a></td>
					<td><a href="">대구</a></td>
				</tr>
				<tr>
					<td><a href="">포항</a></td>
					<td><a href="">도쿄</a></td>
					<td><a href="">방콕</a></td>
					<td><a href="">양양</a></td>
					<td><a href="">로마</a></td>
					<td><a href="">런던</a></td>
				</tr>
				<tr>
					<td><a href="">거제</a></td>
					<td><a href="">오사카</a></td>
					<td><a href="">정읍</a></td>
					<td><a href="">후쿠오카</a></td>
					<td><a href="">제주</a></td>
					<td><a href="">서귀포</a></td>
				</tr>

			</table>
		</div>
	</section>
	<!-- 숙소 한눈에 비교하기 끝-->
	<!-- 인기 여행지 검색 시작-->
	<section class="link-popular">
		<div class="container mb-5">
			<h2 class="text-center mt-5 mb-5">인기 여행지를 검색해보세요!</h2>
			<h4 class="text-center mt-5 mb-5">추천 여행 도시 선택</h4>
			<table class="mx-auto mb-5 mb-lg-0 text-center">
				<tr>
					<td><a href="">런던</a></td>
					<td><a href="">교토</a></td>
					<td><a href="">뉴욕</a></td>
					<td><a href="">푸꾸옥</a></td>
				</tr>
				<tr>
					<td><a href="">유후인</a></td>
					<td><a href="">하노이</a></td>
					<td><a href="">호치민</a></td>
					<td><a href="">삿포로</a></td>
				</tr>
				<tr>
					<td><a href="">세부시티</a></td>
					<td><a href="">타이베이</a></td>
					<td><a href="">도쿄도</a></td>
					<td><a href="">오사카부</a></td>
				</tr>
				<tr>
					<td><a href="">보라카이</a></td>
					<td><a href="">마드리드</a></td>
					<td><a href="">후쿠오카</a></td>
					<td><a href="">코타키나발루</a></td>
				</tr>
			</table>
		</div>
	</section>
	<!-- 인기 여행지 검색 끝-->

	<!-- Call to Action-->
	<section class="call-to-action text-white text-center" id="signup">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<h2 class="mb-4">Ready to get started? Sign up now!</h2>
					<!-- Signup form-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form class="form-subscribe" id="contactFormFooter"
						data-sb-form-api-token="API_TOKEN">
						<!-- Email address input-->
						<div class="row">
							<div class="col">
								<input class="form-control form-control-lg"
									id="emailAddressBelow" type="email" placeholder="Email Address"
									data-sb-validations="required,email" />
								<div class="invalid-feedback text-white"
									data-sb-feedback="emailAddressBelow:required">Email
									Address is required.</div>
								<div class="invalid-feedback text-white"
									data-sb-feedback="emailAddressBelow:email">Email Address
									Email is not valid.</div>
							</div>
							<div class="col-auto">
								<button class="btn btn-primary btn-lg disabled"
									id="submitButton" type="submit">Submit</button>
							</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								<p>To activate this form, sign up at</p>
								<a class="text-white"
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

</article>