<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="${rPath }/css/adm.css" rel="stylesheet" />	
<article>
<!-- THTNUM,THTNAME,THTGRADE,THTPRICE,THTIMG,THTWRTDT -->

	<table id="rwd-table-large" style="text-align:left">
	<thead>
		<tr>
			<th>��ȣ</th>
			<th>ȣ���̸�</th>
			<th>ȣ�ں���</th>
			<th>ȣ�ڰ���</th>
			<th>ȣ���̹���</th>
			<th>�ۼ���</th>
		</tr>
	</thead>
	<tbody>
	    <c:forEach var="e" items="${thtlist}">
	        <tr>
	            <td>${e.tHtNum}</td>
	            <td><a href="todayHtDetail?tHtNum=${e.tHtNum }">${e.tHtName}</a></td>
	            <td>${e.tHtGrade}</td>
	            <td>${e.tHtPrice}�� ���� ~ </td>
	            <td><img src="${rPath }/img/${e.tHtImg}" style="width:100px;" > </td>
	            <td>${e.tHtWrtDt}</td>
	        </tr>
	    </c:forEach>
	</tbody>
	</table>
	<div class="row p-5">
		<button type="button" class="btn btn-outline-primary btn-lg" onclick="location='todayHtWrite'">������õȣ�ڵ��</button>
		<hr>
		<button type="button" class="btn btn-outline-dark btn-lg" onclick="location='${cPath}/todayHtList'">��������</button>
	</div>

</article>