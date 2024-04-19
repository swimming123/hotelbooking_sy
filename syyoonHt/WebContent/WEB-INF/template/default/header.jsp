<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="text-white text-center">
	<div class="d-flex flex-row-reverse mybgColor">

		<%-- 로그인 전  --%>
		<c:choose>
			<c:when test="${sessionScope.sessionID == null }">
				<div>
					<button type="button" id="signin" onclick="location='loginForm'"
						class="btn btn-primary">Login</button>
				</div>
				<div>
					<button type="button" class="btn btn-outline-secondary" >X</button>
					<%--<button type="hidden" id="signup1" onclick="location.href='${cPath }/member/memForm'" class="btn btn-outline-secondary">회원가입</button>--%>
				</div>

			</c:when>
			<c:when test="${sessionScope.sessionID != null }">
				<%-- 로그인 후 --%>
				<div>
					<button type="button" id="signout"
						onclick="location='logout'"
						class="btn btn-primary">Logout</button>
				</div>
				<div>
					<button type="button" id="mypage"
						onclick="location.href='${cPath }/member/mypage'"
						class="btn btn-outline-secondary">MyPage</button>
				</div>
			</c:when>
		</c:choose>
		<form class="d-flex">
			<input class="form-control me-2" type="text" placeholder="Search"
				name="searchv" id="searchv">
			<button class="btn btn-primary" type="button">Search</button>
		</form>
	</div>

</header>