<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
<div class="container">
<jsp:include page="../temp/nav.jsp" />
<!-- Page content-->
	<div class="container-fluid">
	    <h1 class="mt-4">Simple Sidebar</h1>
	    <table class="table table-striped table-hover">
			<thead class="table-dark">
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">요약</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
		    <c:forEach var="e" items="${syBoardList}">
		        <tr>
		            <td scope="row">${e.bNum}</td>
		            <td><a href="syBoardDetail?bNum=${e.bNum }">${e.bTitle}</a></td>
		            <td>${e.bSummary}</td>
		            <td>${e.bDate}</td>
		        </tr>
		    </c:forEach>
			</tbody>
		</table>
    </div>
</div>
</div>
</div>
</article>
<!-- Core theme JS-->
<script src="${rPath}/js/adminScripts.js"></script>
