<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<article>
	<div class="login-wrap">
		<div class="login-html">
			<div class="login-form">
				<div class="sign-up-success">
						<div class="group">
							<label for="tab-2" class="tab">${name}님 가입을 축하드립니다!</label>
						</div>
						<div class="group">
							<label for="id" class="label">아이디 : ${id}</label>
						</div>
						<%-- 가입일이 안나옴 ㅠㅠ
						<div class="group">
							<label for="mdate" class="label">
							가입일 : <fmt:formatDate value="${mdate}" pattern="yyyy/MM/dd"/>
							<fmt:parseDate value="${mdate}" var="REQUEST_DATE" pattern="yyyyMMdd"/>
							<fmt:formatDate value="${mdate}" pattern="yyyy/MM/dd"/> 
							
							</label>
						</div>
						 --%>
					<div class="group">
						<input type="button" class="button" onclick="location='loginForm'" value="로그인">
					</div>
				</div>
			</div>
		</div>
	</div>
</article>

