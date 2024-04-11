<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<h2>���� ���</h2>
		<div class="row">
			<div class="col-lg-4">
				<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
					<button type="button" class="btn btn-outline-secondary"
						onclick="location='todayHtWrite'">�ۼ�</button>
					<c:forEach var="e" items="${thtlist}">
						<table>
							<thead>
								<tr>
									<td>��ȣ</td>
									<td>ȣ�ڸ�</td>
									<td>�̹���</td>
									<td>ȣ�ں���</td>
									<td>ȣ�ڰ���</td>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${e.tHtNum }</td>
									<td><a href="todayHtDetail?tHtNum=">${e.tHtName}</a></td>
									<td><img class="mb-5" src="${rPath }/img/${e.tHtImg}"
										alt="..." style="width: 100px;" /></td>
									<td>${e.tHtGrade}��</td>
									<td>${e.tHtPrice}������~</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5">����¡ �ϰ�;��</td>
								</tr>
							</tfoot>
						</table>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</article>