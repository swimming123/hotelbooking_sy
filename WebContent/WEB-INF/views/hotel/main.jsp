<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- �˻���������-->
	<header class="masthead">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="text-center text-white">
						<form class="form-subscribe" id="contactForm"
							data-sb-form-api-token="API_TOKEN" action="main">
							<div class="col">
								<p>�����Ͻ� ���ø� �Է����ּ���.</p>
								<input class="form-control form-control mb-1" id="citiName"
									type="text" placeholder="���ø� �Է��ϼ���." max="20" />
								<p>üũ�� �Ͻ� ��¥�� �������ּ���.</p>
								<input class="form-control form-control mb-1" id="checkInDate"
									type="date" placeholder="üũ�� �Ͻ� ��¥�� �������ּ���." />
								<p>üũ�ƿ� �Ͻ� ��¥�� �������ּ���.</p>
								<input class="form-control form-control mb-1" id="checkOutDate"
									type="date" placeholder="üũ�ƿ� �Ͻ� ��¥�� �������ּ���." />
								<p>���Ͻô� �������� �Է����ּ���.</p>
								<input class="form-control form-control mb-1" id="stayDate"
									type="number" placeholder="���Ͻô� �������� �Է����ּ���." max="10" />
								<div align="right">
									<button class="btn btn-primary btn-lg disabled"
										id="submitButton" type="submit">�˻��ϱ�</button>
								</div>
							</div>
							<!-- �˻�������-->
							<div class="d-none" id="submitSuccessMessage">
								<div class="text-center mb-3">
									<div class="fw-bolder">������ ȣ���� �˻����Դϴ�!</div>
									<p>...</p>
								</div>
							</div>

							<div class="d-none" id="submitErrorMessage">
								<div class="text-center text-danger mb-3">�ٽ� �˻����ּ���!</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<div>
			<br>
		</div>
		<div class="container mt-5">
			<h2>���� �ߴ� ȣ��</h2>
			<!-- 1�� -->
			<div class="row">
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/jeju_shilla.jpg" alt="..." />
					</div>
					<h3>�Ŷ�ȣ��</h3>
					<p class="lead mb-0">* * * * *9.2</p>
					<p class="lead mb-2">300,000�� ���� ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton1"
						type="submit">�����ϱ�</button>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_signiel.jpg" alt="..." />
					</div>
					<h3>�Ե�ȣ��</h3>
					<p class="lead mb-0">* * * * *8.4</p>
					<p class="lead mb-2">373,480�� ���� ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton2"
						type="submit">�����ϱ�</button>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_paradise.jpg" alt="..." />
					</div>
					<h3>����ƾ ����ȣ��</h3>
					<p class="lead mb-0">* * * * * 8.8</p>
					<p class="lead mb-2">494,357�� ���� ~</p>
					<button class="btn btn-primary btn-lg disabled" id="bookingButton3"
						type="submit">�����ϱ�</button>
				</div>
			</div>
		</div>
		<div class="container mt-5">
			<!-- 2�� -->
			<div class="row">
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/jeju_ramada.jpg" alt="..." />
						<h3>JW �޸���Ʈ ȣ��</h3>
						<p class="lead mb-0">* * * * *9.1</p>
						<p class="lead mb-2">359,450�� ���� ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton4" type="submit">�����ϱ�</button>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/busan_shillastay.jpg"
							alt="..." />
						<h3>�̺� ��Ÿ�� �ڹ輭��</h3>
						<p class="lead mb-0">*** 6.4</p>
						<p class="lead mb-2">147,400�� ���� ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton5" type="submit">�����ϱ�</button>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" src="${rPath }/img/seoul_novotel.jpg" alt="..." />
						<h3>������ ����</h3>
						<p class="lead mb-0">* * * * *9.4</p>
						<p class="lead mb-2">414,350�� ���� ~</p>
						<button class="btn btn-primary btn-lg disabled"
							id="bookingButton6" type="submit">�����ϱ�</button>
					</div>
				</div>
			</div>
		</div>
		<!--  ���� ��ư ���� ����� detail�� ����� -->
		<div class="container mt-5">
			<!-- 3�� -->
			<c:forEach var="i" items="${list}">
				<div class="row">
					<div class="col-lg-4">
						<div
							class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
							<img class="mb-5" src="${rPath }/resources/tHtImg/${i.tHtImg }"
								style="width: 100px;">
							<h3>${i.tHtName}</h3>
							<p class="lead mb-0">${i.tHtGrade }</p>
							<p class="lead mb-2">${i.tHtPrice }������~</p>
							<button class="btn btn-primary btn-lg disabled"
								id="bookingButton4" type="submit">�����ϱ�</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<!-- ��õ ȣ�� ���� ��-->
	<!-- ȣ�� ��ǰ ���� ����-->
	<section class="testimonials text-center bg-light">
		<h2 class="mt-5 mb-5 " style="margin-top: 10px">���� �α� ����</h2>
		<div class="container">

			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.glad-hotels.com/hub/resve/room/step1.do"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_glad.jpg " alt="..." /></a>
						<h5>�۷���ȣ��</h5>
						<p class="font-weight-light mb-0">*****</p>
						<p class="font-weight-light mb-0">�ſ� ���� 9.2</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://parnashotel.com/reservationSchedule/"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_ninetree.jpg" alt="..." /></a>
						<h5>����Ʈ�� �����̾� ȣ��</h5>
						<p class="font-weight-light mb-0">***</p>
						<p class="font-weight-light mb-0">���� 6.4</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://m.ambatel.com/novotel/yongsan/ko/reservationStep1.do">
							<img class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/seoul_novotel.jpg" alt="..." />
						</a>
						<h5>�뺸�� �ڹ輭�� ���� ���</h5>
						<p class="font-weight-light mb-0">****</p>
						<p class="font-weight-light mb-0">���� 7.6</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
			</div>
			<h2 class="mt-5 mb-5">�λ�</h2>
			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.busanparadisehotel.co.kr/front/reservation"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_paradise.jpg" alt="..." /></a>
						<h5>�Ķ���̽� ȣ�� �λ�</h5>
						<p class="font-weight-light mb-0">*****</p>
						<p class="font-weight-light mb-0">�Ǹ��� 9.2</p>
						<p class="font-weight-light mb-0">�λ�,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.shillahotels.com/haeundae/resv/rpm/memSetStep1.do?propertyId=HUDSS&sBar=Y&lang=ko&_ga=2.52883304.1582475037.1709366650-714475058.1709366650&_gl=1*95o0qd*_ga*NzE0NDc1MDU4LjE3MDkzNjY2NTA.*_ga_30Y6N61ES4*MTcwOTM2NjY0OS4xLjEuMTcwOTM2NjY4MC4yOS4wLjA."><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_shillastay.jpg" alt="..." /></a>
						<h5>�Ŷ����� �ؿ��</h5>
						<p class="font-weight-light mb-0">****</p>
						<p class="font-weight-light mb-0">���� 8.2</p>
						<p class="font-weight-light mb-0">�λ�,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.lottehotel.com/busan-signiel/ko.html?utm_source=google&utm_medium=cpc&utm_campaign=signiel|busan|locallocal|alwayson|PC|brand|korea|korean&utm_content=brand|none|none&gad_source=1&gclid=CjwKCAiAuYuvBhApEiwAzq_YibMc5Hty6fhs0O13wBVBwxBR_bc7AT2e85Ps9kylkdMQFohmMlp5VhoCtoIQAvD_BwE"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/busan_signiel.jpg" alt="..." /></a>
						<h5>�ñ״Ͽ� �λ�</h5>
						<p class="font-weight-light mb-0">*****</p>
						<p class="font-weight-light mb-0">�ſ� ���� 9.4</p>
						<p class="font-weight-light mb-0">�λ�,���ѹα�</p>
					</div>
				</div>
			</div>
			<h2 class="mt-5 mb-5">����</h2>
			<div class="row">
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a href="https://www.shilla.net/jeju/index.do"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_shilla.jpg" alt="..." /></a>
						<h5>���ֽŶ�ȣ��</h5>
						<p class="font-weight-light mb-0">*****</p>
						<p class="font-weight-light mb-0">�ſ� ���� 9.2</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://www.book-secure.com/index.php?s=results&property=krjej30939&arrival=2024-03-02&departure=2024-03-03&adults1=1&children1=0&locale=ko_KR&currency=KRW&stid=jrttag4i8&style=DIRECT&Hotelnames=ASIAKRHTLRamadaPlaza&hname=ASIAKRHTLRamadaPlaza&redir=BIZ&rt=1709366896"><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_ramada.jpg" alt="..." /></a>
						<h5>�󸶴� ������ ����</h5>
						<p class="font-weight-light mb-0">****</p>
						<p class="font-weight-light mb-0">���� 8.2</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
				<div class="col-lg-4 mb-3">
					<div class="testimonial-item mx-auto mb-5 mb-lg-0 circleimage">
						<a
							href="https://parnashoteljeju.com/ko/stay/list.do?searchDataValue="><img
							class="img-fluid rounded-circle mb-3"
							src="${rPath }/img/jeju_parnas.jpg" alt="..." /></a>
						<h5>�ĸ����� ȣ�� ����</h5>
						<p class="font-weight-light mb-0">*****</p>
						<p class="font-weight-light mb-0">�ſ� ���� 9.4</p>
						<p class="font-weight-light mb-0">����,���ѹα�</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ȣ�� ��ǰ ���� ��-->

	<!--�̹� �� ��õ ȣ�� ����-->
	<section class="showcase">
		<div class="container-fluid p-0">
			<h2 class="text-center mt-5 mb-5">�̹� �� ��õ ȣ��</h2>
			<div class="row g-0">
				<div class="col-lg-6 order-lg-2 text-white showcase-img"
					style="background-image: url('${rPath }/img/shilla-showcase.jpg')"></div>
				<div class="col-lg-6 order-lg-1 my-auto showcase-text">
					<h2>���� �Ŷ� ȣ��</h2>
					<h4>Urban Lifestyle Hotel</h4>
					<p class="lead mb-0">
						�ѱ��� ����̿� ������ ������ ����ϰ� �ִ� ���� ���� ��ȣ�� ����Ŷ�ȣ���� ���� �ְ��� ���(Urban)
						��������Ÿ�� ȣ�ڷ� ���鿡�� �ְ�� Hospitality ���񽺸� �����մϴ�. <br> �ѱ��� ��ǥ�ϴ�
						���Ÿ� ȣ�ڷμ� '�ϻ��� �ְ��� ������ �Ǵ� ��'�̶�� ������ ���Ӱ� �����̸� �޽��� ���� ��� �Ĺ�ȭ, ����, ��Ƽ,
						����, ����, �������θ�Ʈ �� ���� ��ǰ�� ��������Ÿ���� �����ϴ� �������� �ŵ쳪�� �ֽ��ϴ�.
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
						������ ���� ���̿��� ��¦�̴� ������ �߰��մϴ�. ������ �ʴ� ������ �κб��� ���� ����� �ִ� ����, �������� ����
						������ �����ϴ� ��뺸�� ��ġ�� ���, ���ο� ����, ���ο� �����⿡�� ���ο� �ο��� ����� ��ſ�, �� ��� ����,
						���, ��ſ��� �� ����ϰ� ���� ������ ������ ��Ұ� ������ϴ�.<br> <br> ����Ʈ����
						������ ���� �� ������ ��ݰ� ������ �߰��ϴ� Ư���� ������ �����մϴ�.
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
						HOTEL NEWV�� ���ѹα��� ����Ͻ�, ����, ��ȭ, ������ �߽� ������ ��ġ�ϰ� ������ �ܼ��� ������"�� �ƴ�,
						��ȭ�� ��Ȱ�� ��� �� �ִ� ��Various Lifestyle Hotel�� �Դϴ�. <br> ����ϸ鼭
						ȿ������ ������ 150���� ������ �����Ͽ� �Ϸ� ���� ��� �� �ִ� �õ��� ���̴�(All day dining) �������
						Grand Newv�� ���� ���鿡�� �ֻ��� ������ �����մϴ�.
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- �̹� �� ��õ ȣ�� �� -->
	<!-- ���� �Ѵ��� ���ϱ� ����-->
	<section class="link-citi">
		<div class="container">
			<h2 class="text-center mt-5 mb-5">@@@@���� ��� ȣ�ڰ� ���Ҹ� �Ѵ��� ���غ�����!</h2>
			<h4 class="text-center mt-5 mb-5">�������� ���� ���� ��ǰ�� ���� �� �ֽ��ϴ�.</h4>
			<table class="mx-auto mb-5 mb-lg-0 text-center ">
				<tr>
					<td><a href="">����</a></td>
					<td><a href="">��õ</a></td>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">�뱸</a></td>
				</tr>
				<tr>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">���</a></td>
					<td><a href="">�θ�</a></td>
					<td><a href="">����</a></td>
				</tr>
				<tr>
					<td><a href="">����</a></td>
					<td><a href="">����ī</a></td>
					<td><a href="">����</a></td>
					<td><a href="">�����ī</a></td>
					<td><a href="">����</a></td>
					<td><a href="">������</a></td>
				</tr>

			</table>
		</div>
	</section>
	<!-- ���� �Ѵ��� ���ϱ� ��-->
	<!-- �α� ������ �˻� ����-->
	<section class="link-popular">
		<div class="container mb-5">
			<h2 class="text-center mt-5 mb-5">�α� �������� �˻��غ�����!</h2>
			<h4 class="text-center mt-5 mb-5">��õ ���� ���� ����</h4>
			<table class="mx-auto mb-5 mb-lg-0 text-center">
				<tr>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">����</a></td>
					<td><a href="">Ǫ�ٿ�</a></td>
				</tr>
				<tr>
					<td><a href="">������</a></td>
					<td><a href="">�ϳ���</a></td>
					<td><a href="">ȣġ��</a></td>
					<td><a href="">������</a></td>
				</tr>
				<tr>
					<td><a href="">���ν�Ƽ</a></td>
					<td><a href="">Ÿ�̺���</a></td>
					<td><a href="">���쵵</a></td>
					<td><a href="">����ī��</a></td>
				</tr>
				<tr>
					<td><a href="">����ī��</a></td>
					<td><a href="">���帮��</a></td>
					<td><a href="">�����ī</a></td>
					<td><a href="">��ŸŰ���߷�</a></td>
				</tr>
			</table>
		</div>
	</section>
	<!-- �α� ������ �˻� ��-->

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