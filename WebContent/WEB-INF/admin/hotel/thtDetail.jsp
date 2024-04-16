<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<h2>�������� ���� �� ����/���� ������</h2>
		<div class="row">
			<input type="hidden" name="tHtNum" value="write">	
				<div class="col-lg-4">
					<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
						<img class="mb-5" width: 150px; src="${rPath }/img/${thtlist.tHtImg}" alt="..." />
					</div>
					<h3>${thtlist.tHtName}</h3>
					<p class="lead mb-0">${thtlist.tHtGrade}��</p>
					<p class="lead mb-2">${thtlist.tHtPrice}������~</p>
					
				</div>
				<div class="col-lg-4">
				</div>
				<div class="col-lg-4">
				<button class="btn btn-primary btn-lg disabled" id="bookingButton1"
						type="submit">�����ϱ�</button>
				</div>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='todayHtUp?tHtNum=${e.tHtNum }'">�����ϱ�</button>
		</div>
	</section>
</article>