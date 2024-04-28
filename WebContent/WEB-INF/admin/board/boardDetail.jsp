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
	    <h1 class="mt-4">[${syBoardDetail.bTitle}] ��������</h1>
	    <form action="syBoardUpdate" method="post" id="syBoardUp" class="form-subscribe" enctype="multipart/form-data">
	    	<div class="mb-3">
			  <label for="bNum" class="form-label">�۹�ȣ</label>
			  <input type="text" class="form-control" id="bNum" name="bNum" value="${syBoardDetail.bNum}" readonly="readonly" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
		    <div class="mb-3">
			  <label for="bTitle" class="form-label">�� ����</label>
			  <input type="text" class="form-control" id="bTitle" name="bTitle" value="${syBoardDetail.bTitle}" readonly="readonly" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bDate" class="form-label">�ۼ���</label>
			  <input type="text" class="form-control" id="bDate" name="bDate" value="${syBoardDetail.bDate}" readonly="readonly" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bSummary" class="form-label">���</label>
			  <input type="text" class="form-control" id="bSummary" name="bSummary" value="${syBoardDetail.bSummary}" readonly="readonly" maxlength="100" required="required" placeholder="�� ����(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bContent" class="form-label">����</label>
			  <textarea class="form-control" id="bContent" name="bContent" readonly="readonly" rows="3">${syBoardDetail.bContent}"</textarea>
			</div>	
			<div class="form-group">
			<div class="mb-3">
			  <label for="mfile" class="form-label">�̹���</label>
			  <input class="form-control" type="hidden" id="mfile" name="mfile">
			  <!--  �̸����� -->
			  <img src="${rPath}/imgfile/${syBoardDetail.bImgx}" id="bImgx" class="img-thumbnail" alt="...">
			</div>
			</div>
			<div class="text-center">
				<div class="form-group">
					<button type="submit" class="btn btn-outline-success">����</button>
					<button type="button" class="btn btn-outline-secondary"	onclick="location='board'">���</button>
				</div>
			</div>
		</form>
		<%-- ��� ���� ���� --%>
		<div class="card mb-4">
			<div class="card-body">
			<fieldset>
			<legend>comments</legend>
				<div class="bcominsert"></div>
			</fieldset>
			</div>
		</div>	
		<%-- ��� ���� �� --%>
    </div>
</div>


</div>
</div>

</article>
<!-- Core theme JS-->
<script src="${rPath}/js/adminScripts.js"></script>
