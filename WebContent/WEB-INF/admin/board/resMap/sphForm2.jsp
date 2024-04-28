<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
	<jsp:include page="../../temp/nav.jsp" />
	<div class="container">
	<header style="color: white">ResultMap����(resMap/sphForm.jsp)</header>
	<ul class="list-unstyled">
		<li class="boarder-top my-3">ICT No! ����� ���� ���޵� ���</li>
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
				<h5 class="modal-title" id="infoModalLabel">��� ����</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>
					<strong>���:</strong> <span id="modalSabun"></span>
				</p>
				<p>
					<strong>�̸�:</strong> <span id="modalSaname"></span>
				</p>
				<p>
					<strong>��å:</strong> <span id="modalSajob"></span>
				</p>
				<p>
					<strong>��ȭ ��:</strong> <span id="modalSphoneModel"></span>
				</p>
				<p>
					<strong>��ȭ��ȣ:</strong> <span id="modalSphoneNum"></span>
				</p>
				<p>
					<strong>���� ��¥:</strong> <span id="modalSphoneDate"></span>
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">�ݱ�</button>
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
											output += '<thead class="table-dark"><tr><th>���</th><th>�̸�</th><th>��å</th><th>��ȭ ��</th><th>��ȭ��ȣ</th><th>���� ��¥</th></tr></thead>';
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

											// Ŭ�� �̺�Ʈ �߰�
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