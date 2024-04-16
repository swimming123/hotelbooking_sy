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
	<h2>���� ������ ������ �ϴ� ���� 4����!</h2>
	<div class="wrap"> <!-- ���ǥ�ÿ��� -->
		<div class="rolling-list"> <!-- ������� -->
			<ul>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon1.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 1 <br> �������� ����, �ٳ�</strong>
						<strong></strong>
	                    <span>���� �������� ������ �ð� ��ŭ �ູ�ϰ� ������ �ð��� ������. ���� ���� �ٳ����� �����ο� �ð��� ������ ������ ������!</span>
	                </div>
				</li>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon2.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 2 <br> ���ǵ���, ����ġ��</strong>
						<span>�踦 Ÿ�� �̵��ϸ� �Ƹ��ٿ� ���� ���ø� �����غ�����!</span>
					</div>
				</li>
				<li>
					<div class="image-wrap"><img src="${rPath }/img/syyoon3.jpg" alt=""></div>
					<div class="desc">
						<strong>Point 3 <br> ���𺸽���ũ</strong>
						<span>�ѱ����� ���� ����� ����. �ú����� Ⱦ�ܿ����� ���� ���� ���ڱ���! </span>
					</div>
				</li>
				<li>
					<div class="image-wrap">
	                    <img src="${rPath}/img/syyoon4.jpg" alt="">
	                </div>
	                <div class="desc">
	                    <strong>Point 4 <br> ��, ������ ����!</strong>
	                    <span>���ٶ� Ÿ�� ������ ���� ��! <br>�Ƹ��ٿ� ������ ����</span>
	                </div>
				</li>
			</ul>
			
		</div>
	</div>

	<div class="desc">
	    <strong>ȯ������</strong>
	    <p id="exchangeRate"></p>
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
					<script src="${rPath }/js/exchange.js"></script>
	    <c:forEach var="key" items="${quotes_data}">
	        <p>${key}: ${quotes_data[key]}</p>
	    </c:forEach>
	</div>

</section>
	<script>
	//�Ѹ� ��� ������ ����
	let roller = document.querySelector('.rolling-list');
	roller.id = 'roller1'; // ���̵� �ο�
	
	let clone = roller.cloneNode(true)
	// cloneNode : ��� ����. �⺻���� false. �ڽ� ������ ������ ���ϸ� true ���
	clone.id = 'roller2';
	document.querySelector('.wrap').appendChild(clone); // wrap ���� �ڽ����� ����
	
	document.querySelector('#roller1').style.left = '0px';
	document.querySelector('#roller2').style.left = document.querySelector('.rolling-list ul').offsetWidth + 'px';
	// offsetWidth : ����� ũ�� Ȯ��(margin�� ������ padding��, border������ ����� ��)
	
	roller.classList.add('original');
	clone.classList.add('clone');
	</script>
	<!-- �˻� 
	<section class="bg-light text-center">
	
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div>
					<br>
				</div>
				<form method="post" class="form-subscribe" id="contactForm" action="">
					<div class="row">
						<div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">���� �����ó���?</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">���³� ����</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">���³� ����</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline">���� �ο�</div>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <div class="d-inline"></div>
					    </div>
						<div class=""></div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="citiName" type="text" placeholder="������, ���Ҹ� �Է�" max="20" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="checkInDate" type="date" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="checkOutDate" type="date"/>
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input class="form-control" id="stayMember" type="number" placeholder="�����ο�" max="10" />
					    </div>
					    <div class="d-inline-block" style="width: 20%;">
					        <input type="button" class="btn btn-primary" id="submitButton" onclick="location='mainSearch'" value="�˻�"/>
					    </div>
					</div>
						
				</form>
			</div>
		</div>
	</section>
	-->
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<div>
			<br>
		</div>
		<div class="container">
			<h2>����׽�Ʈ</h2>
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
							<div class="bi-star-fill">${e.tHtGrade}��</div>
						</div>

						<p class="lead mb-2">${e.tHtPrice}������~</p>
						<button class="btn btn-primary btn-lg" id="bookingButton1"
							type="button"
							onclick="location.href='write'">�����ϱ�</button>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
</article>