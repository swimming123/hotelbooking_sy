<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<h2>�������� ���� �� ����/���� ������</h2>
		<div class="container position-relative">
		<form action="todayHtUp" method="post" id="todayHtUp"
						class="form-subscribe" enctype="multipart/form-data">
			<div class="row justify-content-center">
				<div class="col-xl-6">
						<div class="text-black">
						<input type="hidden" id="tHtNum" name="tHtNum" value="${thtlist.tHtNum}">
							<div class="col">
								<label for="mfile"><p>�̹���</p></label>
								<div class="col-sm-10">
									<%-- �̹��� �̸����� --%>
									<img src="${rPath }/img/${thtlist.tHtImg}" id="imgx"
										style="width: 500px; border: dotted 1px; margin: 5px 5px">
								</div>
								
								<div class="col-sm-10">
									<input type="file" class="form-control form-control mb-1"
										id="mfile" name="mfile">
								</div>
							</div>
							<div class="col">
								<label for="tHtName"><p>ȣ���̸�</p></label> <input type="text"
									class="form-control form-control mb-1" id="tHtName"
									placeholder="ȣ���̸�(5-100)" name="tHtName" maxlength="100"
									required="required" pattern=".{5,100}"
									value="${thtlist.tHtName}">
							</div>
							<div class="col">
								<label for="tHtGrade"><p>ȣ�ں���</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtGrade"
									name="tHtGrade" placeholder="0�� ~ 5��" min="0" max="5"
									required="required" value="${thtlist.tHtGrade}">
							</div>
							<div class="col">
								<label for="tHtPrice"><p>ȣ�ڰ���</p></label> <input type="number"
									class="form-control form-control mb-1" id="tHtPrice"
									name="tHtPrice" placeholder="1�� ����" required="required"
									value="${thtlist.tHtPrice}">
							</div>

						</div>

					
				</div>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-outline-secondary">�����ϱ�</button>
				<button type="button" class="btn btn-primary"
					onclick="location='todayHtDelete?tHtNum=${thtlist.tHtNum}'">����</button>
				<button type="button" class="btn btn-primary"
					onclick="location='main'">���</button>
			</div>
		</form>
		</div>
	</section>
</article>