<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<!-- ajax�� ��ũ �ɱ� -->
<script src="${rPath }/js/ajaxdemo1.js"></script>
<%-- C3.js  --%>
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
<div class="container">
<jsp:include page="../../temp/nav.jsp" />
	<header style="color:white">Main Page Tiles</header>
	<ul class="list-unstyled">
		<li class="boarder-top my-3">ICT Study! �۸�!! Django ũ�ν� ��� ���� �Դϴ�.</li>
	</ul>
	<div class="container">
	<form method="post" enctype="multipart/form-data">
		<div class="row mb-3">
			<label for="category" class="col-sm-2 col-form-label text-center">�̹��� �̸�</label>
			<div class="col-sm-10">
			<input type="text" name="category" class="form-control" id="category">
			</div>
		</div>
		<div class="form-group row mb-3">
			<label for="file1" class="col-sm-2 col-form-label text-center">�̹���</label>
			<div class="col-sm-10">
			<input type="file" name="file1" id="file1">
			<button class="btn btn-warning" id="uploadBtn" type="button">Upload</button>
			<div id="msg"></div>
		</div>
	</div>
	</form>
	<div id="jsonResponse"></div>
	</div>
</div>
</article>	
/*
<script>
/*
$(document).ready(function(){
    $('#uploadBtn').click(function(){
        let formData = new FormData();
        formData.append('category', $('#category').val());
        formData.append('file1', $('#file1')[0].files[0]);

        $.ajax({
            url: 'http://192.168.0.103:9000/resnet1/resnet1_insert',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                console.log(response);
                // �����κ��� ���� JSON ������ ȭ�鿡 ���
                $('#jsonResponse').text(JSON.stringify(response));
            },
            error: function(xhr, status, error) {
                // ���� ó��
                console.error("AJAX ���� �߻�:", status, error);
            }
        });
    });
});
*/

	$(function(){
		$('#uploadBtn').click(function(){
			//POST������� ���� *
			// * FormData ��ü ���� �� �� ����(���̳ʸ�) , �Ķ���� �� ���� �־ 
			// �񵿱������ ������ �����Ѵ�.
			let formData = new FormData(); //FormData ��ü ����
			//formData.append('paramName',value);
			//id�� category�� �������� ���� �����ͼ� formData�� �Ķ������ �̸� category�� ������.
			formData.append('category',$('#category').val());
			formData.append('file1', $('#file1')[0].files[0]); // ���� ���� �߰�
			console.log("1.formData��ü�� ���� �ѱ��")
			console.log($('#category').val());
            console.log($('#file1')[0].files[0]);
            console.log(formData);
			console.log("----------------------------");
			console.log('category:', formData.get('category'));
		    console.log('file1:', formData.get('file1').name); 
		    console.log('file1 size:', formData.get('file1').size);
		    console.log('file1 type:', formData.get('file1').type);
		    //javascript Arrow �Լ� (lambda)
		    //formData.entries().forEach(entry => {
		    //    console.log(`${entry[0]}:`, entry[1]);
		    // });
			$.ajax({
				url : 'http://192.168.0.103:9000/resnet1/resnet1_insert',
				type : 'POST',
				data : formData,
				processData:false, // formData ������ ��� ������ ������ ������ false��
				contentType:false, // formData ������ ��� ������ contentType�� false��
				success : function(response){
					console.log(response);
					$("#msg").text(JSON.stringify(response));
 				},
 	            error: function(xhr, status, error) {
 	                // ���� ó��
 	                console.error("AJAX ���� �߻�:", status, error);
 	            }
 			});
		});
	});




</script>