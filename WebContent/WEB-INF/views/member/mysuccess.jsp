<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<article>
	<div class="login-wrap">
		<div class="login-html">
			<div class="login-form">
				<div class="sign-up-success">
						<div class="group">
							<label for="tab-2" class="tab">${name}�� ������ ���ϵ帳�ϴ�!</label>
						</div>
						<div class="group">
							<label for="id" class="label">���̵� : ${id}</label>
						</div>
						<%-- �������� �ȳ��� �Ф�
						<div class="group">
							<label for="mdate" class="label">
							������ : <fmt:formatDate value="${mdate}" pattern="yyyy/MM/dd"/>
							<fmt:parseDate value="${mdate}" var="REQUEST_DATE" pattern="yyyyMMdd"/>
							<fmt:formatDate value="${mdate}" pattern="yyyy/MM/dd"/> 
							
							</label>
						</div>
						 --%>
					<div class="group">
						<input type="button" class="button" onclick="location='loginForm'" value="�α���">
					</div>
				</div>
			</div>
		</div>
	</div>
</article>

