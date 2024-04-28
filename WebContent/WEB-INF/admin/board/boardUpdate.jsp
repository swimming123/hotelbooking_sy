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
	    <h1 class="mt-4">[${syBoardDetail.bTitle}] 수정페이지</h1>
	    <form action="syBoardUp" method="post" id="syBoardUp" class="form-subscribe" enctype="multipart/form-data">
	    	<div class="mb-3">
			  <label for="bNum" class="form-label">글번호</label>
			  <input type="text" class="form-control" id="bNum" name="bNum" value="${syBoardDetail.bNum}" readonly="readonly" maxlength="100" required="required" placeholder="글 제목(5-100)" pattern=".{5,100}">
			</div>
		    <div class="mb-3">
			  <label for="bTitle" class="form-label">글 제목</label>
			  <input type="text" class="form-control" id="bTitle" name="bTitle" value="${syBoardDetail.bTitle}" maxlength="100" required="required" placeholder="글 제목(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bDate" class="form-label">작성일</label>
			  <input type="text" class="form-control" id="bDate" name="bDate" value="${syBoardDetail.bDate}" readonly="readonly" maxlength="100" required="required" placeholder="글 제목(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bSummary" class="form-label">요약</label>
			  <input type="text" class="form-control" id="bSummary" name="bSummary" value="${syBoardDetail.bSummary}" maxlength="100" required="required" placeholder="글 제목(5-100)" pattern=".{5,100}">
			</div>
			<div class="mb-3">
			  <label for="bContent" class="form-label">내용</label>
			  <textarea class="form-control" id="bContent" name="bContent" rows="3">${syBoardDetail.bContent}</textarea>
			</div>	
			<div class="form-group">
			<div class="mb-3">
			  <label for="mfile" class="form-label">이미지</label>
			  <input class="form-control" type="file" id="mfile" name="mfile">
			  <!--  미리보기 -->
			  <img src="${rPath}/imgfile/${syBoardDetail.bImgx}" id="bImgx" class="img-thumbnail" alt="...">
			</div>
			</div>
			<div class="text-center">
				<div class="form-group">
					<button type="submit" class="btn btn-outline-success">수정</button>
					<button type="button" class="btn btn-outline-warning" onclick="location='syBoardDelete?bNum=${syBoardDetail.bNum}'">삭제</button>
					<button type="button" class="btn btn-outline-secondary"	onclick="location='board'">목록</button>
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
	
