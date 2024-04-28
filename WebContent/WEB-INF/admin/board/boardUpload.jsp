<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
<div class="container">
<jsp:include page="../temp/nav.jsp" />
<!-- Page content-->
	<div class="container-fluid">
	    <h1 class="mt-4">�Խñ� �ۼ�</h1>
	    <form action="syBoardInsert" method="post" id="bWriteInsert" class="form-subscribe" enctype="multipart/form-data">
		    <div class="mb-3">
			  <label for="bTitle" class="form-label">�� ����</label>
			  <input type="text" class="form-control" id="bTitle" name="bTitle" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bSummary" class="form-label">���</label>
			  <input type="text" class="form-control" id="bSummary" name="bSummary" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bContent" class="form-label">����</label>
			  <textarea class="form-control" id="bContent" name="bContent" rows="3"></textarea>
			</div>	
			<div class="form-group">
			<div class="mb-3">
			  <label for="mfile" class="form-label">�̹���</label>
			  <input class="form-control" type="file" id="mfile" name="mfile">
			  <!--  �̸����� -->
			  <img src="${rPath}/img/no-image-icon.png" id="bImgx" class="img-thumbnail" alt="...">
			</div>
			</div>
			<div class="text-center">
				<div class="form-group">
					<button type="submit" class="btn btn-outline-success">���</button>
					<button type="button" class="btn btn-outline-secondary"	onclick="location='board'">���</button>
				</div>
			</div>
		</form>
    </div>
</div>
</div>
</div>
</article>
<!-- Core theme JS-->
<script src="${rPath}/js/adminScripts.js"></script>
<script>
document.getElementById('mfile').addEventListener('change', function() {
  const file = this.files[0];
  if (file) {
    const reader = new FileReader();
    reader.onload = function(event) {
      document.getElementById('bImgx').setAttribute('src', event.target.result);
    }
    reader.readAsDataURL(file);
  } else {
    document.getElementById('bImgx').setAttribute('src', '${rPath}/img/no-image-icon.png');
  }
});
</script>
	
