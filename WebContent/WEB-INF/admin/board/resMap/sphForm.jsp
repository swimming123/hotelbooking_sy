<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<link href="${rPath }/css/adminStyles.css" rel="stylesheet" />
<article>
	<jsp:include page="../../temp/nav.jsp" />
	<div class="container">
		<header style="color:white">ResultMap예제(resMap/sphForm.jsp)</header>
		<ul class="list-unstyled">
			<li class="boarder-top my-3">ICT No! 사원의 폰이 지급된 명단</li>
		</ul>
		<div class="container">
		<p><input type="button" value="LoadData" id="loadBtn"></p>
		<p id="target"></p>
		</div>
	</div>
</article>
<script>
	$(function(){
		$('#loadBtn').click(function(){
			$.ajax({
				url:'sawonPhoneList',
				success: function(data) {
					var output = '<table class="table">';
				    output +='<thead class="table-dark">';
				    output +='<tr><th>사번</th><th>이름</th>';
				    output +='<th>직책</th><th>전화 모델</th>';
				    output +='<th>전화번호</th><th>구매 날짜</th></tr></thead>';
				    output +='<tbody>';
				    data.forEach(function(item) {
				        if (item.sphone !== null) {
				            output += '<tr><td>' + item.sabun + '</td><td>' + item.saname; 
				            output += '</td><td>' + item.sajob + '</td><td>' ;
				            output += item.sphone.pmodel + '</td><td>' ;
				            output += item.sphone.phnum + '</td><td>' ;
				            output += item.sphone.pdate + '</td></tr>';
				        }
				    });
				    output +='</tbody>';
				    output += '</table>';
				    $('#target').html(output);
				}
			});	
		});
	});
</script>
<style>
</style>