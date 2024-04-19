<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<form class="jotform-form" action="detail" method="post">
	<div role="main" class="form-all">
		<ul class="form-section page-section">
			<li id="cid_3" class="form-input-wide" data-type="control_head">
				<div class="form-header-group  header-large">
					<div class="header-text httal htvam">
						<h1 id="header_3" class="form-header" data-component="header">예약고객
							개인정보</h1>
					</div>
				</div>
			</li>
			<li class="form-line" data-type="control_text" id="id_4">
				<div id="cid_4" class="form-input-wide" data-layout="full">
				<input type="hidden" value={num}/>
				</div>
			</li>
			<!-- 내용 시작 --------------------------------------------------------------------------------------------------------- -->
			<li class="form-line" data-type="control_fullname" id="id_5"><label
				class="form-label form-label-top form-label-auto" id="label_5"
				for="first_5" aria-hidden="false"> 전체 이름 </label>
				<div id="cid_5" class="form-input-wide" data-layout="full">
					<div data-wrapper-react="true">
						<span class="form-sub-label-container" style="vertical-align: top"
							data-input-type="last"> <input type="text" id="fname"
							name="fname" class="form-textbox" data-defaultvalue=""
							autoComplete="section-input_5 family-name" size="15"
							data-component="last" aria-labelledby="label_5 sublabel_5_last"
							value="${fname}" readonly="readonly" /> <label
							class="form-sub-label" for="last_5" id="sublabel_5_last"
							style="min-height: 13px">성</label>
						</span> <span class="form-sub-label-container"
							style="vertical-align: top" data-input-type="first"> <input
							type="text" id="lname" name="lname" class="form-textbox"
							data-defaultvalue="" autoComplete="section-input_5 given-name"
							size="10" data-component="first"
							aria-labelledby="label_5 sublabel_5_first" value="${lname}"
							readonly="readonly" /> <label class="form-sub-label"
							for="first_5" id="sublabel_5_first" style="min-height: 13px">이름</label>
						</span>
					</div>
				</div></li>
			<li class="form-line form-line-column form-col-2"
				data-type="control_card" id="id_8"><label
				class="form-label form-label-top form-label-auto" id="label_8"
				for="input_8" aria-hidden="false"> 카드 번호 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="card" name="card"
						class="form-textbox validate[card]" data-defaultvalue=""
						autoComplete="section-input_8 card" style="width: 310px"
						size="310" placeholder="예: myname@example.com"
						data-component="card" aria-labelledby="label_8 sublabel_input_8"
						value="${card}" readonly="readonly" /> <label
						class="form-sub-label" for="input_8" id="sublabel_input_8"
						style="min-height: 13px"></label>
					</span>
				</div></li>
			<li class="form-line form-line-column form-col-2"
				data-type="control_cdate" id="id_8"><label
				class="form-label form-label-top form-label-auto" id="label_8"
				for="input_8" aria-hidden="false"> 카드 유효날짜 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="cdate" name="cdate"
						class="form-textbox validate[cdate]" data-defaultvalue=""
						autoComplete="section-input_8 cdate" style="width: 310px"
						size="310" placeholder="얘: myname@example.com"
						data-component="cdate" aria-labelledby="label_8 sublabel_input_8"
						value="${cdate}" readonly="readonly" /> <label
						class="form-sub-label" for="input_8" id="sublabel_input_8"
						style="min-height: 13px"></label>
					</span>
				</div></li>
			<li class="form-line" data-type="control_address" id="id_6"><label
				class="form-label form-label-top form-label-auto" id="label_6"
				for="input_6_addr_line1" aria-hidden="false"> 주소 </label>
				<div id="cid_6" class="form-input-wide" data-layout="full">
					<div class="form-address-table jsTest-addressField">
						<div
							class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span
								class="form-address-line form-address-street-line jsTest-address-lineField">
								<span class="form-sub-label-container"
								style="vertical-align: top"> <input type="text"
									id="addr1" name="addr1" class="form-textbox form-address-line"
									readonly="readonly" data-defaultvalue=""
									autoComplete="section-input_6 address-line1"
									data-component="address_line_1"
									aria-labelledby="label_6 sublabel_6_addr_line1"
									required="false" value="${addr1}" /> <label
									class="form-sub-label" for="input_6_addr_line1"
									id="sublabel_6_addr_line1" style="min-height: 13px">주소
										1</label>
							</span>
							</span>
						</div>
						<div
							class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span
								class="form-address-line form-address-street-line jsTest-address-lineField">
								<span class="form-sub-label-container"
								style="vertical-align: top"> <input type="text"
									id="addr2" name="addr2" class="form-textbox form-address-line"
									data-defaultvalue=""
									autoComplete="section-input_6 address-line2"
									data-component="address_line_2"
									aria-labelledby="label_6 sublabel_6_addr_line2"
									value="${addr2}" readonly="readonly" /> <label
									class="form-sub-label" for="input_6_addr_line2"
									id="sublabel_6_addr_line2" style="min-height: 13px">동/호수</label>
							</span>
							</span>
						</div>
						<div
							class="form-address-line-wrapper jsTest-address-line-wrapperField">
							<span
								class="form-address-line form-address-zip-line jsTest-address-lineField ">
								<span class="form-sub-label-container"
								style="vertical-align: top"> <input type="text" id="zip"
									name="zip" class="form-textbox form-address-postal"
									data-defaultvalue="" autoComplete="section-input_6 postal-code"
									data-component="zip"
									aria-labelledby="label_6 sublabel_6_postal" required="false"
									value="${zip}" readonly="readonly" /> <label
									class="form-sub-label" for="input_6_postal"
									id="sublabel_6_postal" style="min-height: 13px">우편번호</label>
							</span>
							</span>
						</div>
					</div>
				</div></li>
			<li class="form-line form-line-column form-col-1"
				data-type="control_phone" id="id_7"><label
				class="form-label form-label-top form-label-auto" id="label_7"
				for="input_7_full"> 전화번호 </label>
				<div id="cid_7" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="tel" name="tel" data-type="mask-number"
						class="mask-phone-number form-textbox validate[Fill Mask]"
						data-defaultvalue="" autoComplete="section-input_7 tel-national"
						style="width: 310px" data-masked="true"
						placeholder="(000) 000-0000" data-component="phone"
						aria-labelledby="label_7" value="${tel}" readonly="readonly" />
					</span>
				</div></li>
			<li class="form-line form-line-column form-col-2"
				data-type="control_email" id="id_8"><label
				class="form-label form-label-top form-label-auto" id="label_8"
				for="input_8" aria-hidden="false"> 이메일 </label>
				<div id="cid_8" class="form-input-wide" data-layout="half">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="text" id="email" name="email"
						class="form-textbox validate[Email]" data-defaultvalue=""
						autoComplete="section-input_8 email" style="width: 310px"
						size="310" placeholder="얘: myname@example.com"
						data-component="email" aria-labelledby="label_8 sublabel_input_8"
						value="${email}" readonly="readonly" /> <label
						class="form-sub-label" for="input_8" id="sublabel_input_8"
						style="min-height: 13px"></label>
					</span>
				</div></li>
			<li>
				<div data-align="center"
					class="form-buttons-wrapper form-buttons-center jsTest-button-wrapperField">
					<button type="submit"
						class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
						data-component="button" data-content="">제출하기</button>
				</div>

			</li>
		</ul>
	</div>
</form>