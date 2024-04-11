<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<!-- 추천 호텔 영역 시작-->
	<section class="bg-light text-center">
		<h2>어드민 등록</h2>
		<div class="row">
			<div class="col-lg-4">
				<div class="mx-auto mt-5 mb-5 mb-lg-0 mx-auto mb-5 mb-lg-0 mb-lg-3">
					<button type="button" class="btn btn-outline-secondary"
						onclick="location='todayHtWrite'">작성</button>
					<c:forEach var="e" items="${thtlist}">
						<table>
							<thead>
								<tr>
									<td>번호</td>
									<td>호텔명</td>
									<td>이미지</td>
									<td>호텔별점</td>
									<td>호텔가격</td>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${e.tHtNum }</td>
									<td><a href="todayHtDetail?tHtNum=">${e.tHtName}</a></td>
									<td><img class="mb-5" src="${rPath }/img/${e.tHtImg}"
										alt="..." style="width: 100px;" /></td>
									<td>${e.tHtGrade}점</td>
									<td>${e.tHtPrice}원부터~</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5">페이징 하고싶어요</td>
								</tr>
							</tfoot>
						</table>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</article>