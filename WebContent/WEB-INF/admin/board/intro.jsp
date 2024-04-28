<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="${rPath }/css/adm.css" rel="stylesheet" />	
<article>
	<header style="color:white">Main Page Tiles</header>
	<ul class="list-unstyled">
		<li class="boarder-top my-3">web/테스트성공~~~~~~~~~~</li>
	</ul>
	<div class="container">
	<nav class="navbar navbar-expand-sm mybgColor">
		<div class="container-fluid">
		<ul class="navbar-nav">
			<li class="nav-item"><a href="${cPath}/main" class="nav-link active">Home</a></li>
			<li class="nav-item" dropdown>
			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> test </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#">Spring MVC</a></li>
					<li><a class="dropdown-item" href="#">Python</a></li>
					<li><a class="dropdown-item" href="#">Oracle</a></li>
				</ul></li>
			<li class="nav-item"><a href="${cPath}/todayHtList"
				class="nav-link">todayHt</a></li>
			<li class="nav-item"><a href="${cPath}/reservation"
				class="nav-link">reservation</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
		</ul>
	</div>
	</nav>
	</div>
	
	<div class="container">
	<div class="row p-5">
		<button type="button" class="btn btn-outline-primary btn-lg" onclick="location='bWrite'">게시글 등록</button>
	</div>
	<table id="rwd-table-large" style="text-align:left">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>요약</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
	    <c:forEach var="e" items="${thtlist}">
	        <tr>
	            <td>${e.tHtNum}</td>
	            <td><a href="todayHtDetail?tHtNum=${e.tHtNum }">${e.tHtName}</a></td>
	            <td>${e.tHtGrade}</td>
	            <td>${e.tHtWrtDt}</td>
	        </tr>
	    </c:forEach>
	</tbody>
	</table>
	
	</div>
</article>