<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>   
<%-- 경로 설정 --%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<!DOCTYPE html>
<html>
 <head>
  <TITLE> New Document </TITLE>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <!-- css 템플릿 적용 -->
  <%
	    String pageType = (String) request.getAttribute("pageType");
	%>
	<% if ("reservation".equals(pageType)) { %>
	     <link href="${rPath }/css/reservation.css" rel="stylesheet">
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com">
			<link
				href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
				rel="stylesheet">
			<script src="${rPath}/js/reservation.jsp"></script>
			<meta name="viewport" content="width=device-width, initial-scale=1"
				charset="utf-8">
			<script>
			window.onfocus=function(){
			}
			window.onload=function(){
				window.focus();
				window.moveTo(0,0);
				window.resizeTo(500,400);
				window.scrollTo(0,250);
			}
			</script>
	<% }  else if ("todayHtList".equals(pageType) | "main".equals(pageType)){ %>
	    <!-- Favicon-->
		<link rel="icon" type="image/x-icon" href="${rPath }/img/favicon.ico" />
		<!-- Bootstrap icons-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
		<!-- Google fonts-->
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
		<!-- Core theme CSS (includes Bootstrap)-->
        <link href="${rPath }/css/styles.css" rel="stylesheet" />
	<% }  else if ("loginForm".equals(pageType)){ %>
		<link href="${rPath }/css/sign.css" rel="stylesheet" />	
	<% } else {%>
			
	<% }  %>

 </head>
 <body>
${rPath }
${cPath }
<!--  header.jsp -->
<tiles:insertAttribute name="header"/>

<%--  menu.jsp --%>
<tiles:insertAttribute name="menu"/>

<%-- body --%>
<tiles:insertAttribute name="body"/>	

<%-- footer --%>
<tiles:insertAttribute name="footer"/>

 </body>
</html>
	   
    
    
    
    