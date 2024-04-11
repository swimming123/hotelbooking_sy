<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- ��� ���� --%>

<article>
	<div class="masthead" style="background-color: #8697A6; padding:10px10px;">
		<h2 class="text-white">���� �ߴ� ȣ�� ���ε�</h2>
		<ul class="list-unstyled">
			<li class="border-top my-3"></li>
		</ul>
		<%-- UI���� --%>
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<form action="todayHtInsert" method="post" id="todayHtInsert" class="form-subscribe"
						enctype="multipart/form-data">
						<div class="text-left text-white">
							<div class="col">
								<label for="tHtName"><p>ȣ���̸�</p></label> <input type="text"
									class="form-control form-control mb-1"  id="tHtName" placeholder="ȣ���̸�(5-100)"
									name="tHtName" maxlength="100" required="required"
									pattern=".{5,100}">
							</div>
							<div class="col">
								<label for="tHtGrade"><p>ȣ�ں���</p></label> <input type="number"
									class="form-control form-control mb-1"  id="tHtGrade" name="tHtGrade"
									placeholder="0�� ~ 5��" min="0" max="5" required="required">
							</div>
							<div class="col">
								<label for="tHtPrice"><p>ȣ�ڰ���</p></label> <input type="number"
									class="form-control form-control mb-1"  id="tHtPrice" name="tHtPrice"
									placeholder="1�� ����" required="required">
							</div>
							<div class="col">
								<label for="mfile"><p>�̹���</p></label>
								<div class="col-sm-10">
									<input type="file" class="form-control form-control mb-1"  id="mfile" name="mfile">
								</div>
								<div class="col-sm-10">
									<%-- �̹��� �̸����� --%>
									<img src="${rPath}/image/noimage.jpg" id="imgx"
										style="width: 150px; border: dotted 1px; margin: 5px 5px">
								</div>
							</div>
						</div>
						<div class="text-center">
							<div class="form-group">
								<button type="submit" class="btn btn-primary">���</button>
								<button type="button" class="btn btn-primary"
									onclick="location='todayHtList'">���</button>
							</div>
						</div>
					</form>
					</div>
				</div>
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
