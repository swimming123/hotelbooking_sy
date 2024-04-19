<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath}/resources" scope="application"/>
<c:set var="cPath" value="${pageContext.request.contextPath}/web" scope="application"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="${rPath }/css/adm.css" rel="stylesheet" />	
<article>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>${thtlist.tHtName} 수정/삭제 페이지</h2>
		<div class="container position-relative">
		<form action="todayHtUp" method="post" id="todayHtUp" class="form-subscribe" enctype="multipart/form-data">
			<div class="row justify-content-center">
			<table id="rwd-table-large" style="text-align:left">
					<tr>
						<td>등록 번호</td>
						<td><input type="text" id="tHtNum" name="tHtNum" value="${thtlist.tHtNum}" readonly="readonly"></td>
					</tr>
					<tr>
						<td><label for="tHtName">호텔이름</label></td>
						<td>
						<div class="col">
							 <input type="text"
								class="form-control form-control mb-1" id="tHtName"
								placeholder="호텔이름(5-100)" name="tHtName" maxlength="100"
								required="required" pattern=".{5,100}"
								value="${thtlist.tHtName}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="tHtGrade">호텔별점</label> </td>
						<td>
						<div class="col">
							<input type="number" class="form-control form-control mb-1" id="tHtGrade"
								name="tHtGrade" placeholder="0점 ~ 5점" min="0" max="5"
								required="required" value="${thtlist.tHtGrade}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="tHtPrice">호텔가격</label></td>
						<td>
						<div class="col">
							<input type="number" class="form-control form-control mb-1" id="tHtPrice"
								name="tHtPrice" placeholder="1박 가격" required="required"
								value="${thtlist.tHtPrice}">
						</div>
						</td>
					</tr>
					<tr>
						<td><label for="mfile">이미지</label></td>
						<td>
							<div class="col">
								<div class="col-sm-10">
									<%-- 이미지 미리보기 --%>
									<img src="${rPath }/img/${thtlist.tHtImg}" id="imgx"
										style="width: 500px; border: dotted 1px; margin: 5px 5px">
								</div>
								<div class="col-sm-10">
									<input type="file" class="form-control form-control mb-1"
										id="mfile" name="mfile">
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<div class="text-center">
							<button type="submit" class="btn btn-outline-warning">수정하기</button>
							<button type="button" class="btn btn-outline-danger" onclick="location='todayHtDelete?tHtNum=${thtlist.tHtNum}'">삭제</button>
							<button type="button" class="btn btn-outline-secondary" onclick="location='main'">목록</button>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
		</div>
	</section>
</article>