<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- ��� ���� --%>

<article>
	<header>
		<h1>FileUpload Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<%-- UI���� --%>
	<div class="container">
		<div class="row">
			<h2>���� �ߴ� ȣ�� ���ε�</h2>
			<form action="todayHtInsert" method="post" id="todayHtInsert"
				enctype="multipart/form-data">
				<div class="form-group">
					<label for="tHtName">ȣ���̸�</label>
					<input type="text" class="form-control" id="tHtName"
						placeholder="ȣ���̸�(5-100)" name="tHtName" maxlength="100"
						required="required" pattern=".{5,100}">
				</div>
				<div class="form-group">
					<label for="tHtGrade">ȣ�ں���</label> <input type="number"
						class="form-control" id="tHtGrade" name="tHtGrade"
						placeholder="0�� ~ 5��" min="0" max="5"
						required="required">
				</div>
				<div class="form-group">
					<label for="tHtPrice">ȣ�ڰ���</label> <input type="number"
						class="form-control" id="tHtPrice" name="tHtPrice"
						placeholder="1�� ����" required="required">
				</div>
				<div class="form-group">
					<label for="mfile">�̹���</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="mfile" name="mfile">
					</div>
					<div class="col-sm-10">
						<%-- �̹��� �̸����� --%>
						<img src="${rPath}/image/noimage.jpg" id="imgx"
							style="width: 150px; border: dotted 1px; margin: 5px 5px">
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">���</button>
					<button type="button" class="btn btn-primary"
						onclick="location='todayHtList'">���</button>
				</div>
			</form>
		</div>
	</div>
</article>
<%-- UI�� --%>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) { 
			console.log("���� ���ε� ����!")
			var reader = new FileReader();
			reader.onload = function(e) {
				console.log("�̺�Ʈ �߻�:" + e.target.result);
				$('#imgx').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function() {
		$('#mfile').change(function() {
			console.log("���Ͽ� ��ȭ�� ������ϴ�.");
			console.log("��ü this�� file Tag.val()" + $(this).val());
			readURL(this);
		});
	});
</script>
