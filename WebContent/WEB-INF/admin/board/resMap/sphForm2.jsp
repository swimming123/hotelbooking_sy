<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
	<jsp:include page="../../temp/nav.jsp" />
	<div class="container">
	<header style="color: white">ResultMap예제(resMap/sphForm.jsp)</header>
	<ul class="list-unstyled">
		<li class="boarder-top my-3">ICT No! 사원의 폰이 지급된 명단</li>
	</ul>
	<div class="container">
		<p>
			<input type="button" value="LoadData" id="loadBtn">
		</p>
		<p id="target"></p>
	</div>
	</div>
</article>

<!-- Modal -->
<div class="modal fade" id="infoModal" tabindex="-1"
	aria-labelledby="infoModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="infoModalLabel">사원 정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>
					<strong>사번:</strong> <span id="modalSabun"></span>
				</p>
				<p>
					<strong>이름:</strong> <span id="modalSaname"></span>
				</p>
				<p>
					<strong>직책:</strong> <span id="modalSajob"></span>
				</p>
				<p>
					<strong>전화 모델:</strong> <span id="modalSphoneModel"></span>
				</p>
				<p>
					<strong>전화번호:</strong> <span id="modalSphoneNum"></span>
				</p>
				<p>
					<strong>구매 날짜:</strong> <span id="modalSphoneDate"></span>
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>

	</div>
</div>
<script>
	$(function() {
		$('#loadBtn')
				.click(
						function() {
							$
									.ajax({
										url : 'sawonPhoneList',
										success : function(data) {
											var output = '<table class="table">';
											output += '<thead class="table-dark"><tr><th>사번</th><th>이름</th><th>직책</th><th>전화 모델</th><th>전화번호</th><th>구매 날짜</th></tr></thead>';
											output += '<tbody>';
											data
													.forEach(function(item) {
														if (item.sphone !== null) {
															output += '<tr><td>'
																	+ item.sabun
																	+ '</td><td class="name-link" data-item=\''
																	+ JSON
																			.stringify(item)
																	+ '\'>'
																	+ item.saname
																	+ '</td><td>'
																	+ item.sajob
																	+ '</td><td>'
																	+ item.sphone.pmodel
																	+ '</td><td>'
																	+ item.sphone.phnum
																	+ '</td><td>'
																	+ item.sphone.pdate
																	+ '</td></tr>';
														}
													});
											output += '</tbody>';
											output += '</table>';
											$('#target').html(output);

											// 클릭 이벤트 추가
											$('.name-link')
													.click(
															function() {
																alert("Test!")
																var item = $(
																		this)
																		.data(
																				'item');
																$('#modalSabun')
																		.text(
																				item.sabun);
																$(
																		'#modalSaname')
																		.text(
																				item.saname);
																$('#modalSajob')
																		.text(
																				item.sajob);
																$(
																		'#modalSphoneModel')
																		.text(
																				item.sphone.pmodel);
																$(
																		'#modalSphoneNum')
																		.text(
																				item.sphone.phnum);
																$(
																		'#modalSphoneDate')
																		.text(
																				item.sphone.pdate);
																$('#infoModal')
																		.modal(
																				'show');
															});
										}
									});
						});
	});
</script>
<style>
</style>