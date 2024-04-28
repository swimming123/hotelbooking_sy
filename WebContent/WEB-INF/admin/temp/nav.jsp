<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="d-flex" id="wrapper">
    <!-- Sidebar-->
 <div class="border-end bg-white" id="sidebar-wrapper">
     <div class="sidebar-heading border-bottom bg-light">수영이 노트</div>
     <div class="list-group list-group-flush">
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Spring MVC</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Python</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Oracle</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">BigData</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="saPhone">saPhone</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="django_upfrom">django_upfrom</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">TEST</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">TEST</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">TEST</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">TEST</a>
         <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">TEST</a>
     </div>
 </div>
 <!-- Page content wrapper-->
 <div id="page-content-wrapper">
     <!-- Top navigation-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
         <div class="container-fluid">
             <button class="btn btn-primary" id="sidebarToggle">Toggle Menu</button>
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                     <li class="nav-item active"><a class="nav-link" href="board">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="syBoardForm">UpLoad</a></li>
                     <li class="nav-item"><a class="nav-link" href="main">admMain</a></li>
                     <li class="nav-item"><a class="nav-link" href="${cPath}/todayHtList">tHtMain</a></li>
                     <li class="nav-item"><a class="nav-link" href="${cPath}/reservation">resv</a></li>
                     <li class="nav-item dropdown">
                         <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">X</a>
                         <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="${cPath}/todayHtList">todayHtMain</a>
                             <a class="dropdown-item" href="${cPath}/reservation">reservation</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="#!">#TEST#</a>
                         </div>
                     </li>
                 </ul>
             </div>
         </div>
     </nav>