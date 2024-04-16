<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<article>
<!-- THTNUM,THTNAME,THTGRADE,THTPRICE,THTIMG,THTWRTDT -->

	<table>
	<thead>
		<tr>
		<td>번호</td>
		<td>호텔이름</td>
		<td>호텔별점</td>
		<td>호텔가격</td>
		<td>호텔이미지</td>
		<td>작성일</td>
		</tr>
	</thead>
	<tbody>
	    <c:forEach var="e" items="${thtlist}">
	        <tr>
	            <td>${e.tHtNum}</td>
	            <td><a href="todayHtDetail?tHtNum=${e.tHtNum }">${e.tHtName}</a></td>
	            <td>${e.tHtGrade}</td>
	            <td>${e.tHtPrice}</td>
	            <td>${e.tHtImg} <img src="${rPath }/img/${e.tHtImg}" style="width:100px;" > </td>
	            <td>${e.tHtWrtDt}</td>
	        </tr>
	    </c:forEach>
	</tbody>

	</table>

</article>