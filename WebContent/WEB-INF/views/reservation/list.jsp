<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="https://cdn02.jotfor.ms/static/prototype.forms.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/static/jotform.forms.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/vendor/maskedinput_5.0.9.min.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/js/punycode-1.4.1.min.js?v=3.3.53286" type="text/javascript" defer></script>
<script src="https://cdn03.jotfor.ms/js/paypal.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/payments/paymentUtils.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/js/payments/validategateways.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/s/umd/19fcf3898c6/for-form-branding-footer.js?v=3.3.53286" type="text/javascript" defer></script>
<script src="https://cdn03.jotfor.ms/js/vendor/smoothscroll.min.js?v=3.3.53286" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/errorNavigation.js?v=3.3.53286" type="text/javascript"></script>
<script type="text/javascript">	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.singleProduct = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.texts = {"confirmEmail":"E-mail does not match","pleaseWait":"Please wait...","validateEmail":"You need to validate this e-mail","confirmClearForm":"Are you sure you want to clear the form","lessThan":"Your score should be less than or equal to","incompleteFields":"There are incomplete required fields. Please complete them.","required":"This field is required.","requireOne":"At least one field required.","requireEveryRow":"Every row is required.","requireEveryCell":"Every cell is required.","email":"Enter a valid e-mail address","alphabetic":"This field can only contain letters","numeric":"This field can only contain numeric values","alphanumeric":"This field can only contain letters and numbers.","cyrillic":"This field can only contain cyrillic characters","url":"This field can only contain a valid URL","currency":"This field can only contain currency values.","fillMask":"Field value must fill mask.","uploadExtensions":"You can only upload following files:","noUploadExtensions":"File has no extension file type (e.g. .txt, .png, .jpeg)","uploadFilesize":"File size cannot be bigger than:","uploadFilesizemin":"File size cannot be smaller than:","gradingScoreError":"Score total should only be less than or equal to","inputCarretErrorA":"Input should not be less than the minimum value:","inputCarretErrorB":"Input should not be greater than the maximum value:","maxDigitsError":"The maximum digits allowed is","minCharactersError":"The number of characters should not be less than the minimum value:","maxCharactersError":"The number of characters should not be more than the maximum value:","freeEmailError":"Free email accounts are not allowed","minSelectionsError":"The minimum required number of selections is ","maxSelectionsError":"The maximum number of selections allowed is ","pastDatesDisallowed":"Date must not be in the past.","dateLimited":"This date is unavailable.","dateInvalid":"This date is not valid. The date format is {format}","dateInvalidSeparate":"This date is not valid. Enter a valid {element}.","ageVerificationError":"You must be older than {minAge} years old to submit this form.","multipleFileUploads_typeError":"{file} has invalid extension. Only {extensions} are allowed.","multipleFileUploads_sizeError":"{file} is too large, maximum file size is {sizeLimit}.","multipleFileUploads_minSizeError":"{file} is too small, minimum file size is {minSizeLimit}.","multipleFileUploads_emptyError":"{file} is empty, please select files again without it.","multipleFileUploads_uploadFailed":"File upload failed, please remove it and upload the file again.","multipleFileUploads_onLeave":"The files are being uploaded, if you leave now the upload will be cancelled.","multipleFileUploads_fileLimitError":"Only {fileLimit} file uploads allowed.","dragAndDropFilesHere_infoMessage":"Drag and drop files here","chooseAFile_infoMessage":"Choose a file","maxFileSize_infoMessage":"Max. file size","generalError":"There are errors on the form. Please fix them before continuing.","generalPageError":"There are errors on this page. Please fix them before continuing.","wordLimitError":"Too many words. The limit is","wordMinLimitError":"Too few words.  The minimum is","characterLimitError":"Too many Characters.  The limit is","characterMinLimitError":"Too few characters. The minimum is","ccInvalidNumber":"Credit Card Number is invalid.","ccInvalidCVC":"CVC number is invalid.","ccInvalidExpireDate":"Expire date is invalid.","ccInvalidExpireMonth":"Expiration month is invalid.","ccInvalidExpireYear":"Expiration year is invalid.","ccMissingDetails":"Please fill up the credit card details.","ccMissingProduct":"Please select at least one product.","ccMissingDonation":"Please enter numeric values for donation amount.","disallowDecimals":"Please enter a whole number.","restrictedDomain":"This domain is not allowed","ccDonationMinLimitError":"Minimum amount is {minAmount} {currency}","requiredLegend":"All fields marked with * are required and must be filled.","geoPermissionTitle":"Permission Denied","geoPermissionDesc":"Check your browser's privacy settings.","geoNotAvailableTitle":"Position Unavailable","geoNotAvailableDesc":"Location provider not available. Please enter the address manually.","geoTimeoutTitle":"Timeout","geoTimeoutDesc":"Please check your internet connection and try again.","selectedTime":"Selected Time","formerSelectedTime":"Former Time","cancelAppointment":"Cancel Appointment","cancelSelection":"Cancel Selection","noSlotsAvailable":"No slots available","slotUnavailable":"{time} on {date} has been selected is unavailable. Please select another slot.","multipleError":"There are {count} errors on this page. Please correct them before moving on.","oneError":"There is {count} error on this page. Please correct it before moving on.","doneMessage":"Well done! All errors are fixed.","invalidTime":"Enter a valid time","doneButton":"Done","reviewSubmitText":"Review and Submit","nextButtonText":"Next","prevButtonText":"Previous","seeErrorsButton":"See Errors","notEnoughStock":"Not enough stock for the current selection","notEnoughStock_remainedItems":"Not enough stock for the current selection ({count} items left)","soldOut":"Sold Out","justSoldOut":"Just Sold Out","selectionSoldOut":"Selection Sold Out","subProductItemsLeft":"({count} items left)","startButtonText":"START","submitButtonText":"Submit","submissionLimit":"Sorry! Only one entry is allowed. Multiple submissions are disabled for this form.","reviewBackText":"Back to Form","seeAllText":"See All","progressMiddleText":"of","fieldError":"field has an error.","error":"Error"};
	JotForm.newPaymentUI = true;
	JotForm.replaceTagTest = true;

   JotForm.setConditions([{"action":{"field":"19","visibility":"Show"},"link":"Any","terms":[{"field":"18","operator":"equals","value":"Paypal"}],"type":"field"}]);	JotForm.submitError="jumpToFirstError";
	window.addEventListener('DOMContentLoaded',function(){window.brandingFooter.init({"formID":241102168552448,"campaign":"powered_by_jotform_le","isCardForm":false,"isLegacyForm":true})});	JotForm.isFullSource = true;

	JotForm.init(function(){
	/*INIT-START*/
      JotForm.setPhoneMaskingValidator( 'input_7_full', '\u0028\u0023\u0023\u0023\u0029 \u0023\u0023\u0023\u002d\u0023\u0023\u0023\u0023' );

 JotForm.calendarMonths = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
 if (!JotForm.calenderViewMonths) JotForm.calenderViewMonths = {};  JotForm.calenderViewMonths[10] = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
 if (!JotForm.calenderViewDays) JotForm.calenderViewDays = {};  JotForm.calenderViewDays[10] = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
 JotForm.calendarDays = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
 JotForm.calendarOther = {"today":"오늘"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("10", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":"","countSelectedDaysOnly":false}); }, 0); });
 } 
 JotForm.onTranslationsFetch(function() { JotForm.setCalendar("10", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":"","countSelectedDaysOnly":false}); });
 JotForm.displayLocalTime("input_10_hourSelect", "input_10_minuteSelect","input_10_ampm", "input_10_timeInput", true);

 JotForm.calendarMonths = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
 if (!JotForm.calenderViewMonths) JotForm.calenderViewMonths = {};  JotForm.calenderViewMonths[11] = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
 if (!JotForm.calenderViewDays) JotForm.calenderViewDays = {};  JotForm.calenderViewDays[11] = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
 JotForm.calendarDays = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일","일요일"];
 JotForm.calendarOther = {"today":"오늘"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("11", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":"","countSelectedDaysOnly":false}); }, 0); });
 } 
 JotForm.onTranslationsFetch(function() { JotForm.setCalendar("11", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":"","countSelectedDaysOnly":false}); });
 JotForm.displayLocalTime("input_11_hourSelect", "input_11_minuteSelect","input_11_ampm", "input_11_timeInput", true);
      productID = {"0":"input_19_1001","1":"input_19_1002","2":"input_19_1003"};
      paymentType = "product";
      JotForm.setCurrencyFormat('USD',true, 'point');
      JotForm.totalCounter({"input_19_1001":{"price":"100","custom_0":"input_19_custom_1001_0"},"input_19_1002":{"price":"120","custom_0":"input_19_custom_1002_0"},"input_19_1003":{"price":"140","custom_0":"input_19_custom_1003_0"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
if (window.JotForm && JotForm.accessible) $('input_20').setAttribute('tabindex',0);
      JotForm.setCustomHint( 'input_20', '\uc5ec\uae30\uc5d0 \uc785\ub825\ud558\uc138\uc694...' );
      JotForm.alterTexts({"totalTotal":"Total:"}, true);
	/*INIT-END*/
	});

   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,{"name":"input2","qid":"2","text":"제출하기","type":"control_button"},{"name":"input3","qid":"3","text":"호텔 예약 폼","type":"control_head"},{"name":"clickTo4","qid":"4","text":"귀하의 등록은 도착전에 확인됩니다.","type":"control_text"},{"name":"input5","qid":"5","text":"전체 이름","type":"control_fullname"},{"name":"input6","qid":"6","text":"주소","type":"control_address"},{"name":"input7","qid":"7","text":"전화번호","type":"control_phone"},{"name":"input8","qid":"8","subLabel":"example@example.com","text":"이메일","type":"control_email"},null,{"name":"input10","qid":"10","text":"도착 - 날짜 및 시간","type":"control_datetime"},{"name":"input11","qid":"11","text":"출발 - 날짜 및 시간","type":"control_datetime"},null,null,null,null,null,null,{"name":"input18","qid":"18","text":"결제 수단","type":"control_radio"},{"name":"19","qid":"19","text":"&nbsp;","type":"control_paypal"},{"mde":"No","name":"input20","qid":"20","text":"특별한 요청이 있나요? ","type":"control_textarea","wysiwyg":"Disable"},null,{"name":"input22","qid":"22","text":"성인 수","type":"control_number"},{"name":"input23","qid":"23","text":"아동 수 (만약 있을 시)","type":"control_number"}]);}, 20); 
</script>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/stylebuilder/static/form-common.css?v=d01b17d
"/>
<style type="text/css">@media print{*{-webkit-print-color-adjust: exact !important;color-adjust: exact !important;}.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.53286&themeRevisionID=5f7ed99c2c2c7240ba580251"/>
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_styles.css?3.3.53286" />
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.53286" />

<article>
<form class="jotform-form" action="resvInsert" method="post">
  <div role="main" class="container form-all">
	<!--  리스트 UI 시작  -->
		<div class="row" >
			<h2>예약 고객 리스트</h2>
			<table class="table table-hover" style="text-align:center; margin: 0 auto;">
				<thead>
					<tr class="table-secondary">
						<th scope="col">번호</th>
						<th scope="col">성</th>
						<th scope="col">이름</th>
						<th scope="col">예약 수정하기</th>
						<th scope="col">예약 정보</th>
						<th scope="col">삭제하기</th>
					</tr>
				</thead>
				<tbody>
					<%-- 반복시작 --%>
					<c:forEach var="e" items="${list}">
						<tr>
							<td>${e.num }</td>
							<td>${e.fname }</td>
							<td>${e.lname }</td>
							<td><a href="${cPath}/resvUpdate?num=${e.num}">예약 수정하기</a></td>
							<td><a href="${cPath}/resvDetail?num=${e.num}">예약정보 확인하기</a></td>
							<td><a href="${cPath}/resvDelete?num=${e.num}">예약 삭제하기</a></td>
						</tr>
					</c:forEach>
					<%-- 반복끝  --%>
				</tbody>
			</table>
		</div>
	</div>
	<!--  리스트 UI 끝   -->
</form>
</article>
    

