<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- 검색영역시작-->
	<header class="masthead">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="text-center text-white">
						<form class="form-subscribe" id="contactForm"
							data-sb-form-api-token="API_TOKEN" action="main">
							<div class="col">
								<p>여행하실 도시를 입력해주세요.</p>
								<input class="form-control form-control mb-1" id="citiName"
									type="text" placeholder="도시를 입력하세요." max="20" />
								<p>체크인 하실 날짜를 선택해주세요.</p>
								<input class="form-control form-control mb-1" id="checkInDate"
									type="date" placeholder="체크인 하실 날짜를 선택해주세요." />
								<p>체크아웃 하실 날짜를 선택해주세요.</p>
								<input class="form-control form-control mb-1" id="checkOutDate"
									type="date" placeholder="체크아웃 하실 날짜를 선택해주세요." />
								<p>원하시는 숙박일을 입력해주세요.</p>
								<input class="form-control form-control mb-1" id="stayDate"
									type="number" placeholder="원하시는 숙박일을 입력해주세요." max="10" />
								<div align="right">
									<button class="btn btn-primary btn-lg disabled"
										id="submitButton" type="submit">검색하기</button>
								</div>
							</div>
							<!-- 검색영역끝-->
							<div class="d-none" id="submitSuccessMessage">
								<div class="text-center mb-3">
									<div class="fw-bolder">최저가 호텔을 검색중입니다!</div>
									<p>...</p>
								</div>
							</div>

							<div class="d-none" id="submitErrorMessage">
								<div class="text-center text-danger mb-3">다시 검색해주세요!</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<div>
			<br>
		</div>
		<div class="container mt-5">
			<h2>오늘 뜨는 호텔</h2>
			<!-- 1단 -->
			<div class="row">
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/jeju_shilla.jpg" alt="..." />
					</div>
					<h3>신라호텔</h3>
					<p class="lead mb-0">* * * * *9.2</p>
					<p class="lead mb-2">300,000원 부터 ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton1"
						type="submit">예약하기</button>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_signiel.jpg" alt="..." />
					</div>
					<h3>롯데호텔</h3>
					<p class="lead mb-0">* * * * *8.4</p>
					<p class="lead mb-2">373,480원 부터 ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton2"
						type="submit">예약하기</button>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_paradise.jpg" alt="..." />
					</div>
					<h3>웨스틴 조선호텔</h3>
					<p class="lead mb-0">* * * * * 8.8</p>
					<p class="lead mb-2">494,357원 부터 ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton3"
						type="submit">예약하기</button>
				</div>
			</div>
		</div>
		<div class="container mt-5">
			<!-- 2단 -->
			<div class="row">
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/jeju_ramada.jpg" alt="..." />
						<h3>JW 메리어트 호텔</h3>
						<p class="lead mb-0">* * * * *9.1</p>
						<p class="lead mb-2">359,450원 부터 ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton4" type="submit">예약하기</button>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_shillastay.jpg"
							alt="..." />
						<h3>이비스 스타일 앰배서더</h3>
						<p class="lead mb-0">*** 6.4</p>
						<p class="lead mb-2">147,400원 부터 ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton5" type="submit">예약하기</button>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/seoul_novotel.jpg" alt="..." />
						<h3>포시즌스 서울</h3>
						<p class="lead mb-0">* * * * *9.4</p>
						<p class="lead mb-2">414,350원 부터 ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton6" type="submit">예약하기</button>
					</div>
				</div>
			</div>
		</div>
		<!--  여기 버튼 동작 결과를 detail로 만들기 -->
		<div class="container mt-5">
			<!-- 3단 -->
			<c:forEach var="i" items="${list}">
				<div class="row">
					<div class="col-lg-4">
						<div
							class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
							<img class="mb-5" src="${rPath }/resources/tHtImg/${i.tHtImg }"
								style="width: 100px;">
							<h3>${i.tHtName}</h3>
							<p class="lead mb-0">${i.tHtGrade }</p>
							<p class="lead mb-2">${i.tHtPrice }원부터~</p>
							<button class="btn btn-primary btn-lg disabled"
								id="bookingButton4" type="submit">예약하기</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- 추천 호텔 영역 끝-->
	<!-- 호텔 상품 영역 시작-->
	<section class="testimonials text-center bg-light">
		<h2 class="mt-5 mb-5 " style="margin-top: 10px">서울 인근 숙소</h2>
		<div class="container">

			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.glad-hotels.com/hub/resve/room/step1.do"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_glad.jpg " alt="..." /></a>
						<h5>글래드호텔</h5>
						<p class="font-weight-light mb-0">*****</p>
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
						<p class="font-weight-light mb-0">***</p>
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
						<p class="font-weight-light mb-0">****</p>
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
						<p class="font-weight-light mb-0">*****</p>
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
						<p class="font-weight-light mb-0">****</p>
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
						<p class="font-weight-light mb-0">*****</p>
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
						<p class="font-weight-light mb-0">*****</p>
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
						<p class="font-weight-light mb-0">****</p>
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
						<p class="font-weight-light mb-0">*****</p>
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