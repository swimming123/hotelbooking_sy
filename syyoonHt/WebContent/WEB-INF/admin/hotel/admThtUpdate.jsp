<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="${rPath }/css/adm.css" rel="stylesheet" />	
<article>
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<h2>${thtlist.tHtName} ����/���� ������</h2>
		<div class="container position-relative">
		<form action="todayHtUp" method="post" id="todayHtUp" class="form-subscribe" enctype="multipart/form-data">
			<div class="row justify-content-center">
			<table id="rwd-table-large" style="text-align:left">
					<tr>
						<td>��� ��ȣ</td>
						<td><input type="text" id="tHtNum" name="tHtNum" value="${thtlist.tHtNum}" readonly="readonly"></td>
					</tr>
					<tr>
						<td><label for="tHtName">ȣ���̸�</label></td>
						<td>
						<div class="col">
							 <input type="text"
								class="form-control form-control mb-1" id="tHtName"
								placeholder="ȣ���̸�(5-100)" name="tHtName" maxlength="100"
								required="required" pattern=".{5,100}"
								value="${thtlist.tHtName}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="tHtGrade">ȣ�ں���</label> </td>
						<td>
						<div class="col">
							<input type="number" class="form-control form-control mb-1" id="tHtGrade"
								name="tHtGrade" placeholder="0�� ~ 5��" min="0" max="5"
								required="required" value="${thtlist.tHtGrade}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="tHtPrice">ȣ�ڰ���</label></td>
						<td>
						<div class="col">
							<input type="number" class="form-control form-control mb-1" id="tHtPrice"
								name="tHtPrice" placeholder="1�� ����" required="required"
								value="${thtlist.tHtPrice}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="mfile">�̹���</label></td>
						<td>
							<div class="col">
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
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<div class="text-center">
							<button type="submit" class="btn btn-outline-warning">�����ϱ�</button>
							<button type="button" class="btn btn-outline-danger" onclick="location='todayHtDelete?tHtNum=${thtlist.tHtNum}'">����</button>
							<button type="button" class="btn btn-outline-secondary" onclick="location='main'">���</button>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
		</div>
	</section>
</article>