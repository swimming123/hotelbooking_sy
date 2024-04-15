<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
<!-- �Ⱦ��ϴ�.-->
	<!-- ��õ ȣ�� ���� ����-->
	<section class="bg-light text-center">
		<h2>����׽�Ʈ</h2>
		<div class="row">
			<form action="todayHtUp" method="post" id="todayHtUpdate" enctype="multipart/form-data">
    			<input type="hidden" name="tHtNum" value="${thtlist.tHtNum}">	
				<div class="form-group">
					<label for="tHtName">ȣ���̸�</label>
					<input type="text" class="form-control" id="tHtName"
						placeholder="ȣ���̸�(5-100)" name="tHtName" maxlength="100"
						required="required" pattern=".{5,100}">
				</div>
				<div class="form-group">
					<label for="tHtGrade">ȣ�ں���</label> <input type="number"
						class="form-control" id="tHtGrade" name="tHtGrade"
						placeholder="0�� ~ 5��" min="0" max="5" value="${thtlist.tHtGrade}"
						required="required">
				</div>
				<div class="form-group">
					<label for="tHtPrice">ȣ�ڰ���</label> <input type="number"
						class="form-control" id="tHtPrice" name="tHtPrice" value="${thtlist.tHtPrice}"
						placeholder="1�� ����" required="required">
				</div>
				<div class="form-group">
					<label for="mfile">�̹���</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="mfile" name="mfile">
					</div>
					<div class="col-sm-10">
						<%-- �̹��� �̸����� --%>
						<img src="${rPath}/image/${thtlist.tHtImg}" id="imgx"
							style="width: 150px; border: dotted 1px; margin: 5px 5px">
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">���</button>
					<button type="button" class="btn btn-primary"
						onclick="location='todayHtList'">���</button>
				</div>
			</form>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location='todayHtWrite'">�ۼ�</button>
		</div>
	</section>
</article>