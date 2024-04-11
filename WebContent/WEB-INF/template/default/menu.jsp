<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-sm mybgColor">
	<div class="container-fluid">
		<ul class="navbar-nav">
			<li class="nav-item"><a href="${cPath}/main"
				class="nav-link active">Home</a></li>
			<li class="nav-item" dropdown><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					Board </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="${cPath}/todayHtList">FBoard</a></li>
					<li><a class="dropdown-item" href="${cPath}/upList">Board</a></li>
					<li><a class="dropdown-item" href="${cPath}/login/myloginfo">myloginfo</a></li>
				</ul></li>
			<li class="nav-item"><a href="${cPath}/todayHtList"
				class="nav-link">main</a></li>
			<li class="nav-item"><a href="${cPath}/reservation"
				class="nav-link">reservation</a></li>
			<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
		</ul>
	</div>
</nav>