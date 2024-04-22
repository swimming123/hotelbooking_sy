<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://cdn02.jotfor.ms/static/prototype.forms.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn03.jotfor.ms/static/jotform.forms.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn01.jotfor.ms/js/vendor/maskedinput_5.0.9.min.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn02.jotfor.ms/js/punycode-1.4.1.min.js?v=3.3.53071"
	type="text/javascript" defer></script>
<script src="https://cdn03.jotfor.ms/js/paypal.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn01.jotfor.ms/js/payments/paymentUtils.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn02.jotfor.ms/js/payments/validategateways.js?v=3.3.53071"
	type="text/javascript"></script>
<script
	src="https://cdn01.jotfor.ms/s/umd/a588ae1de3b/for-form-branding-footer.js?v=3.3.53071"
	type="text/javascript" defer></script>
<script
	src="https://cdn03.jotfor.ms/js/vendor/smoothscroll.min.js?v=3.3.53071"
	type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/errorNavigation.js?v=3.3.53071"
	type="text/javascript"></script>
<link type="text/css" rel="stylesheet"
	href="https://cdn01.jotfor.ms/stylebuilder/static/form-common.css?v=d0f72cd" />
<style type="text/css">
@media print {
	* {
		-webkit-print-color-adjust: exact !important;
		color-adjust: exact !important;
	}
	.form-section {
		display: inline !important
	}
	.form-pagebreak {
		display: none !important
	}
	.form-section-closed {
		height: auto !important
	}
	.page-section {
		position: initial !important
	}
}
</style>
<link type="text/css" rel="stylesheet"
	href="https://cdn02.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.53071&themeRevisionID=5f7ed99c2c2c7240ba580251" />
<link type="text/css" rel="stylesheet"
	href="https://cdn03.jotfor.ms/css/styles/payment/payment_styles.css?3.3.53071" />
<link type="text/css" rel="stylesheet"
	href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.53071" />
<!---------------------------------------------  예약고객 개인 정보-------------------------------------->
<form class="jotform-form" action="resvList" method="get">
	<div role="main" class="form-all">
		<ul class="form-section page-section">
			<li id="cid_3" class="form-input-wide" data-type="control_head">
				<div class="form-header-group  header-large">
					<div class="header-text httal htvam">
						<h1 id="header_3" class="form-header" data-component="header">예약고객 개인정보</h1>
					</div>
				</div>
			</li>
			<li class="form-line" data-type="control_text" id="id_4">
				<div id="cid_4" class="form-input-wide" data-layout="half">
					<input type="text" id="fname" name="fname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 family-name" size="15" data-component="last"
						aria-labelledby="label_5 sublabel_5_last" value=" ${vo.num}" readonly="readonly" /> 
						<label class="form-sub-label" for="fname" id="fname" style="min-height: 13px">예약번호</label>
				</div>
			</li>
			<!-- 내용 시작 --------------------------------------------------------------------------------------------------------- -->
			<!------------------------ 이름 ------------------->
			<li class="form-line" data-type="control_fullname" id="id_5">
			<label class="form-label form-label-top form-label-auto" id="label_5" for="first_5" aria-hidden="false"> 전체 이름 </label>
				<div id="cid_5" class="form-input-wide" data-layout="full">
					<div data-wrapper-react="true">
						<span class="form-sub-label-container" style="vertical-align: top" data-input-type="last"> 
							<input type="text" id="fname" name="fname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 family-name" size="15" data-component="last" aria-labelledby="label_5 sublabel_5_last" value="${vo.fname}" readonly="readonly" /> 
							<label class="form-sub-label" for="fname" id="fname" style="min-height: 13px">성</label> 
						</span> 
						<span class="form-sub-label-container" style="vertical-align: top" data-input-type="first"> 
						<input type="text" id="lname" name="lname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 given-name" size="10" data-component="first" aria-labelledby="label_5 sublabel_5_first" value="${vo.lname}" readonly="readonly" /> 
							<label class="form-sub-label" for="lname" id="lname" style="min-height: 13px">이름</label>
						</span>
					</div>
				</div>
			</li>
			<!------------------------ 주소 ------------------->
			<li class="form-line" data-type="control_address" id="id_6">
			<label class="form-label form-label-top form-label-auto" id="label_6" for="input_6_addr_line1" aria-hidden="false"> 주소 </label>
				<div id="cid_6" class="form-input-wide" data-layout="full">
					<div class="form-address-table jsTest-addressField">
						<div class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span class="form-address-line form-address-street-line jsTest-address-lineField">
								<span class="form-sub-label-container" style="vertical-align: top">
								<input type="text" id="addr1" name="addr1" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line1" data-component="address_line_1" aria-labelledby="label_6 sublabel_6_addr_line1" value="${vo.addr1}" readonly="readonly" />
									<label class="form-sub-label" for="addr1" id="addr1" style="min-height: 13px">주소 1</label>
								</span>
							</span>
						</div>
						<div class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span class="form-address-line form-address-street-line jsTest-address-lineField">
								<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="text" id="addr2" name="addr2" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line2" data-component="address_line_2"
									aria-labelledby="label_6 sublabel_6_addr_line2" value="${vo.addr2}" readonly="readonly" /> 
									<label class="form-sub-label" for="addr2" id="addr2" style="min-height: 13px">동/호수</label>
								</span>
							</span>
						</div>
						<!------------------------ 우편번호 ------------------->
						<div class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span class="form-address-line form-address-zip-line jsTest-address-lineField ">
								<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="text" id="zip" name="zip" class="form-textbox form-address-postal" data-defaultvalue="" autoComplete="section-input_6 postal-code" data-component="zip" aria-labelledby="label_6 sublabel_6_postal" value="${vo.zip}" readonly="readonly" /> 
									<label class="form-sub-label" for="zip" id="zip" style="min-height: 13px">우편번호</label>
								</span>
							</span>
						</div>
					</div>
				</div>
			</li>
			<!------------------------ 전화번호 ------------------->
			<li class="form-line form-line-column form-col-1" data-type="control_phone" id="id_7">
			<label class="form-label form-label-top form-label-auto" id="tel" for="tel"> 전화번호 </label>
				<div id="cid_7" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="tel" name="tel" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" data-defaultvalue="" autoComplete="section-input_7 tel-national"
						style="width: 310px" data-masked="true" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_7" value="${vo.tel}" readonly="readonly" />
					</span>
				</div>
			</li>
			<!------------------------ 이메일 ------------------->
			<li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
				<label class="form-label form-label-top form-label-auto" id="email" for="email" aria-hidden="false"> 이메일 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="email" name="email" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width: 310px"
						size="310" placeholder="얘: myname@example.com" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="${vo.email}" readonly="readonly" /> <label
						class="form-sub-label" for="email" id="email" style="min-height: 13px"></label>
					</span>
				</div>
			</li>
			<!------------------------ 카드번호 ------------------->
			<li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
				<label class="form-label form-label-top form-label-auto" id="card" for="card" aria-hidden="false"> 카드번호 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="card" name="card" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width: 310px" size="310" placeholder="NNNN-NNNN-NNNN-NNNN" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="${vo.card}" readonly="readonly" /> 
						<label class="form-sub-label" for="card" id="card" style="min-height: 13px"></label>
					</span>
				</div></li>
			<!------------------------ 카드 유효날짜 ------------------->
			<li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
				<label class="form-label form-label-top form-label-auto" id="cdate" for="cdate" aria-hidden="false"> 카드 유효날짜 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="cdate" name="cdate" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width: 310px" size="310" placeholder="NN-" data-component="email"
						aria-labelledby="label_8 sublabel_input_8" value="${vo.cdate}" readonly="readonly" /> 
						<label class="form-sub-label" for="cdate" id="cdate" style="min-height: 13px"></label>
					</span>
				</div></li>
			<!-- 도착날짜 및 시간------------------------------------------------------------------------------------------->
			<li class="form-line allowTime" data-type="control_datetime"
				id="id_10"><label class="form-label form-label-top"
				id="label_10" for="lite_mode_10" aria-hidden="false"> 도착 날짜
			</label>
				<div id="cid_10" class="form-input-wide" data-layout="full">
					<div data-wrapper-react="true" class="extended">
						<div style="display: none">
							<!-- 연도 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="text" class="form-textbox validate[limitDate]" id="dates" name="dates" size="4" data-maxlength="4" data-age="" maxLength="4" value="${vo.dates}" readonly="readonly" autoComplete="off" aria-labelledby="label_10 sublabel_10_year" />
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="dates" id="dates" style="min-height: 13px">Year</label>
							</span>
							<!-- 월 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="tel" class="form-textbox validate[limitDate]" id="month_10" name="q10_input10[month]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_10 sublabel_10_month" /> 
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="month_10" id="sublabel_10_month" style="min-height: 13px">Month</label>
							</span>
							<!-- 일 -->
							<span class="form-sub-label-container" style="vertical-align: top">
								<input type="tel" class="form-textbox validate[limitDate]" id="day_10" name="q10_input10[day]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_10 sublabel_10_day" /> 
								<label class="form-sub-label" for="day_10" id="sublabel_10_day" style="min-height: 13px">Day</label>
							</span>
						</div>
						<span class="form-sub-label-container" style="vertical-align: top">
							<input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="dates" name="dates" size="12" data-maxlength="12" maxLength="12" data-age="" value="${vo.dates}" readonly="readonly" data-format="yyyy-MM-dd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="off" aria-labelledby="label_10" /> 
							<img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_10_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" /> 
							<label class="form-sub-label is-empty" for="dates" id="dates" style="min-height: 13px"></label>
						</span>
					</div>
				</div></li>
			<!-- 출발 날짜 및 시간 -->
			<li class="form-line allowTime" data-type="control_datetime" id="id_11">
				<label class="form-label form-label-top" id="label_11" for="lite_mode_11" aria-hidden="false"> 출발 날짜
			</label>
				<div id="cid_11" class="form-input-wide" data-layout="full">
					<div data-wrapper-react="true" class="extended">
						<div style="display: none">
							<!-- 연도 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="text" class="form-textbox validate[limitDate]" id="datess" name="datess" size="4" data-maxlength="4" data-age="" maxLength="4" value="${vo.datess}" readonly="readonly" autoComplete="off" aria-labelledby="label_11 sublabel_11_year" />
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="datess" id="datess" style="min-height: 13px">Year</label>
							</span>
							<!-- 월 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="tel" class="form-textbox validate[limitDate]" id="month_11" name="q11_input11[month]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_11 sublabel_11_month" /> 
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="month_11" id="sublabel_11_month" style="min-height: 13px">Month</label>
							</span>
							<!-- 일 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="tel" class="form-textbox validate[limitDate]" id="day_11" name="q11_input11[day]" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="off" aria-labelledby="label_11 sublabel_11_day" /> 
								<label class="form-sub-label" for="day_11" id="sublabel_11_day" style="min-height: 13px">Day</label>
							</span>
						</div>
						<span class="form-sub-label-container" style="vertical-align: top">
							<input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="datess" name="datess" size="12" data-maxlength="12" maxLength="12" data-age="" value="${vo.datess}" readonly="readonly" data-format="yyyy-MM-dd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="off" aria-labelledby="label_11" /> 
							<img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_11_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" /> 
							<label class="form-sub-label is-empty" for="datess" id="datess" style="min-height: 13px"></label>
						</span>
					</div>
				</div>
			</li>
			<li class="form-line form-line-column form-col-1"
				data-type="control_phone" id="id_7"><label
				class="form-label form-label-top form-label-auto" id="adult"
				for="adult">성인 수</label>
				<div id="cid_7" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="number" id="adult" name="adult"
						data-type="mask-number"
						class="mask-phone-number form-textbox validate[Fill Mask]"
						data-defaultvalue="" autoComplete="section-input_7 tel-national"
						style="width: 310px" data-masked="true" data-component="date"
						aria-labelledby="label_7" value="${vo.adult}" readonly="readonly" />
					</span>
				</div></li>
			<li class="form-line form-line-column form-col-1" data-type="control_phone" id="id_7">
				<label class="form-label form-label-top form-label-auto" id="children" for="children">아동 수</label>
				<div id="cid_7" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="number" id="children" name="children" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" data-defaultvalue="" autoComplete="section-input_7 tel-national" style="width: 310px" data-masked="true" data-component="date" aria-labelledby="label_7" value="${vo.children}" readonly="readonly" />
					</span>
				</div>
			</li>
			<li class="form-line" data-type="control_text" id="id_4">
				<div id="cid_4" class="form-input-wide" data-layout="full">
					<input type="text" id="content" name="content" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" data-defaultvalue="" autoComplete="section-input_7 tel-national" style="width: 310px" data-masked="true" data-component="date" aria-labelledby="label_7" value="${vo.content}" readonly="readonly" /> 
					<label class="form-label form-label-top form-label-auto" id="content" for="content">요청 사항</label>
				</div>
			</li>
		</ul>
		<div class="form-label form-label-top form-label-auto">
			<div id="cid_2" class="form-input-wide" data-layout="full">
				<div
					class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
					<button type="submit"
						class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
						data-component="button" data-content="">돌아가기</button>
				</div>
			</div>
		</div>
	</div>
</form>