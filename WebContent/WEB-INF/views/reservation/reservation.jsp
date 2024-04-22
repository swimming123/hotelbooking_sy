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
<form class="jotform-form" action="resvInsert" method="post">
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_3" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_3" class="form-header" data-component="header">호텔 예약 폼</h1>
            <div id="subHeader_3" class="form-subHeader">아래의 폼을 완료해 주세요.</div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_4">
        <div id="cid_4" class="form-input-wide" data-layout="full">
          <div id="text_4" class="form-html" data-component="text" tabindex="0">
            <p>귀하의 등록은 도착전에 확인됩니다.</p>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_5"><label class="form-label form-label-top form-label-auto" id="label_5" for="first_5" aria-hidden="false"> 전체 이름 </label>
        <div id="cid_5" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
          <!-- 성 -->
          <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
          <input type="text" id="fname" name="fname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 family-name" size="15" data-component="last" aria-labelledby="label_5 sublabel_5_last" value="" />
          <label class="form-sub-label" for="fname" id="fname" style="min-height:13px">성</label>
          </span>
          <!-- 이름 -->
          <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
          <input type="text" id="lname" name="lname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 given-name" size="10" data-component="first" aria-labelledby="label_5 sublabel_5_first" value="" />
          <label class="form-sub-label" for="lname" id="lname" style="min-height:13px">이름</label>
          </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_6">
      <label class="form-label form-label-top form-label-auto" id="label_6" for="input_6_addr_line1" aria-hidden="false"> 주소 </label>
        <div id="cid_6" class="form-input-wide" data-layout="full">
          <div class="form-address-table jsTest-addressField">
          <!-- 주소1 -->
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-street-line jsTest-address-lineField">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="addr1" name="addr1" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line1" data-component="address_line_1" aria-labelledby="label_6 sublabel_6_addr_line1" required="" value="" />
            <label class="form-sub-label" for="addr1" id="addr1" style="min-height:13px">주소 1</label></span></span></div>
            <!-- 동/호수 -->
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-street-line jsTest-address-lineField">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="addr2" name="addr2" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line2" data-component="address_line_2" aria-labelledby="label_6 sublabel_6_addr_line2" value="" />
            <label class="form-sub-label" for="addr2" id="addr2" style="min-height:13px">동/호수</label></span></span></div>
            <!-- 우편번호 -->
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="zip" name="zip" class="form-textbox form-address-postal" data-defaultvalue="" autoComplete="section-input_6 postal-code" data-component="zip" aria-labelledby="label_6 sublabel_6_postal" required="" value="" />
            <label class="form-sub-label" for="zip" id="zip" style="min-height:13px">우편번호</label></span></span></div>
          </div>
        </div>
      </li>
      <!-- 전화번호 -->
      <li class="form-line form-line-column form-col-1" data-type="control_phone" id="id_7">
      <label class="form-label form-label-top form-label-auto" id="tel" for="tel"> 전화번호 </label>
        <div id="cid_7" class="form-input-wide" data-layout="half"> 
        <span class="form-sub-label-container" style="vertical-align:top">
        <input type="text" id="tel" name="tel" data-type="mask-number"  class="form-textbox data-default" autoComplete="section-input_7 tel-national" style="width:310px" data-masked="true" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_7" value="" />
        </span> 
        </div>
      </li>
      <!-- 이메일 -->
      <li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
      <label class="form-label form-label-top form-label-auto" id="email" for="email" aria-hidden="false"> 이메일 </label>
        <div id="cid_8" class="form-input-wide" data-layout="half"> 
        <span class="form-sub-label-container" style="vertical-align:top">
        <input type="text" id="email" name="email" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width:310px" size="310" placeholder="얘: myname@example.com" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="" />
        <label class="form-sub-label" for="email" id="email" style="min-height:13px">example@example.com</label>
        </span> 
        </div>
      </li>
      <!-- 카드번호 -->
      <li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
      <label class="form-label form-label-top form-label-auto" id="card" for="card" aria-hidden="false"> 카드번호 </label>
        <div id="cid_8" class="form-input-wide" data-layout="half"> 
        <span class="form-sub-label-container" style="vertical-align:top">
        <input type="text" id="card" name="card" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width:310px" size="310" placeholder="" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="" />
        <label class="form-sub-label" for="email" id="email" style="min-height:13px"></label>
        </span> 
        </div>
      </li>
      <!-- 카드 유효날짜 -->
      <li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8">
      <label class="form-label form-label-top form-label-auto" id="cdate" for="cdate" aria-hidden="false"> 카드유효날짜 </label>
        <div id="cid_8" class="form-input-wide" data-layout="half"> 
        <span class="form-sub-label-container" style="vertical-align:top">
        <input type="text" id="cdate" name="cdate" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width:310px" size="310" placeholder="MM/YY" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="" />
        <label class="form-sub-label" for="cdate" id="cdate" style="min-height:13px"></label>
        </span> 
        </div>
      </li>
      
      <!-- 도착날짜 및 시간 -->
       <li class="form-line allowTime" data-type="control_datetime" id="id_10">
      	<label class="form-label form-label-top" id="label_10" for="lite_mode_10" aria-hidden="false"> 도착 - 날짜 및 시간 </label>
        <div id="cid_10" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true" class="extended">
            <div style="display:none">
            <!-- 연도 -->
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="year_10" name="year_10" size="4" data-maxlength="4" data-age="" maxLength="4" autoComplete="off" aria-labelledby="label_10 sublabel_10_year" />
            <span class="date-separate" aria-hidden="true"> -</span>
            <label class="form-sub-label" for="year_10" id="year_10" style="min-height:13px">Year</label>
            </span>
            <!-- 월 -->
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" class="form-textbox validate[limitDate]" id="month_10" name="q10_input10[month]" size="2" data-maxlength="2" data-age="" maxLength="2"  autoComplete="off" aria-labelledby="label_10 sublabel_10_month" />
            <span class="date-separate" aria-hidden="true"> -</span>
            <label class="form-sub-label" for="month_10" id="sublabel_10_month" style="min-height:13px">Month</label>
            </span>
            <!-- 일 -->
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" class="form-textbox validate[limitDate]" id="day_10" name="q10_input10[day]" size="2" data-maxlength="2" data-age="" maxLength="2"  autoComplete="off" aria-labelledby="label_10 sublabel_10_day" />
            <label class="form-sub-label" for="day_10" id="sublabel_10_day" style="min-height:13px">Day</label>
            </span>
            </div>
            
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox" id="dates" name="dates" size="12" data-maxlength="12" maxLength="12" data-age="" data-format="yyyy-MM-dd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="off" aria-labelledby="label_10" />
            <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_10_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" />
            <label class="form-sub-label is-empty" for="dates" id="dates" style="min-height:13px"></label>
            </span>
            
            <!-- 시간 -->
			<span class="allowTime-container timeAMPM">
				<span data-wrapper-react="true">
					<span class="form-sub-label-container hasAMPM" style="vertical-align:top">
						<input type="time" class="time-dropdown form-textbox validate[time]" id="atime" name="atime" placeholder="HH : MM" aria-labelledby="label_11 sublabel_11_hour" data-mask="hh:MM"  autoComplete="off" data-version="v2" />
						<label data-seperate-translate="true" class="form-sub-label" for="atime" id="atime" style="min-height:13px">시 분</label>
					</span>
					<span class="form-sub-label-container" style="vertical-align:top">
						<select class="time-dropdown form-dropdown" id="input_11_ampm" name="q11_input11[ampm]" data-component="time-ampm" aria-labelledby="label_11 sublabel_11_ampm" autoComplete="off">
							<option value="AM">AM</option>
							<option value="PM">PM</option>
						</select>
						<label class="form-sub-label" for="input_11_ampm" id="sublabel_11_ampm" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap">AM/PM Option</label>
					</span>
				</span>
			</span>
            </div>
      	</div>
      </li>
      
      <!-- 출발 날짜 및 시간 -->
       <li class="form-line allowTime" data-type="control_datetime" id="id_11">
				<label class="form-label form-label-top" id="label_11" for="lite_mode_11" aria-hidden="false"> 출발 날짜
			</label>
				<div id="cid_11" class="form-input-wide" data-layout="full">
					<div data-wrapper-react="true" class="extended">
						<div style="display: none">
							<!-- 연도 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="text" class="form-textbox validate[limitDate]" id="year_11" name="year_11" size="4" data-maxlength="4" data-age="" maxLength="4" autoComplete="off" aria-labelledby="label_11 sublabel_11_year" />
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="year_11" id="year_11" style="min-height: 13px">Year</label>
							</span>
							<!-- 월 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="tel" class="form-textbox validate[limitDate]" id="month_11" name="q11_input11[month]" size="2" data-maxlength="2" data-age="" maxLength="2"  autoComplete="off" aria-labelledby="label_11 sublabel_11_month" /> 
								<span class="date-separate" aria-hidden="true"> -</span> 
								<label class="form-sub-label" for="month_11" id="sublabel_11_month" style="min-height: 13px">Month</label>
							</span>
							<!-- 일 -->
							<span class="form-sub-label-container" style="vertical-align: top"> 
								<input type="tel" class="form-textbox validate[limitDate]" id="day_11" name="q11_input11[day]" size="2" data-maxlength="2" data-age="" maxLength="2" autoComplete="off" aria-labelledby="label_11 sublabel_11_day" /> 
								<label class="form-sub-label" for="day_11" id="sublabel_11_day" style="min-height: 13px">Day</label>
							</span>
						</div>
						<span class="form-sub-label-container" style="vertical-align: top">
							<input type="text" class="form-textbox " id="datess" name="datess" size="12" data-maxlength="12" maxLength="12" data-format="yyyy-MM-dd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="off" aria-labelledby="label_11" /> 
							<img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_11_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" /> 
							<label class="form-sub-label is-empty" for="datess" id="datess" style="min-height: 13px"></label>
						</span>
						<!-- 시간 -->
						<span class="allowTime-container timeAMPM">
							<span data-wrapper-react="true">
								<span class="form-sub-label-container hasAMPM" style="vertical-align:top">
									<input type="time" class="time-dropdown form-textbox validate[time]" id="btime" name="btime" placeholder="HH : MM" aria-labelledby="label_11 sublabel_11_hour" data-mask="hh:MM"autoComplete="off" data-version="v2" />
									<label data-seperate-translate="true" class="form-sub-label" for="btime" id="btime" style="min-height:13px">시 분</label>
								</span>
								<span class="form-sub-label-container" style="vertical-align:top">
									<select class="time-dropdown form-dropdown" id="input_11_ampm" name="q11_input11[ampm]" data-component="time-ampm" aria-labelledby="label_11 sublabel_11_ampm" autoComplete="off">
										<option value="AM">AM</option>
										<option value="PM">PM</option>
									</select>
									<label class="form-sub-label" for="input_11_ampm" id="sublabel_11_ampm" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap">AM/PM Option</label>
								</span>
							</span>
						</span>
					</div>
				</div>
			</li>

      <!-- 성인 수 -->
      <li class="form-line form-line-column form-col-1" data-type="control_number" id="id_22">
      <label class="form-label form-label-top" id="adult" for="adult" aria-hidden="false"> 성인 수 </label>
        <div id="cid_22" class="form-input-wide" data-layout="half"> 
        <input type="number" id="adult" name="adult" data-type="input-number" class=" form-number-input form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" placeholder="예: 3" data-component="number" aria-labelledby="label_22" step="any" /> 
        </div>
      </li>
      <!-- 아동 수 -->
      <li class="form-line form-line-column form-col-2" data-type="control_number" id="id_23">
      <label class="form-label form-label-top" id="children" for="children" aria-hidden="false"> 아동 수 (만약 있을 시) </label>
        <div id="cid_23" class="form-input-wide" data-layout="half"> 
        <input type="number" id="children" name="children" data-type="input-number" class=" form-number-input form-textbox validate[Numeric]" data-defaultvalue="" style="width:310px" size="310" placeholder="예: 3" data-component="number" aria-labelledby="label_23" step="any" /> 
        </div>
      </li>

      <li class="form-line" data-type="control_textarea" id="id_20">
      <label class="form-label form-label-top" id="content" for="content" aria-hidden="false"> 특별한 요청이 있나요? </label>
        <div id="cid_20" class="form-input-wide" data-layout="full"> 
        <textarea id="content" class="form-textarea" name="content" style="width:648px;height:163px" data-component="textarea" aria-labelledby="label_20"></textarea> 
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
          <button type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="" >제출하기</button>
          </div>
        </div>
      </li>
      
      <li style="clear:both"></li>
      <li style="display:none">Should be Empty: <input type="text" name="website" value="" type="hidden" /></li>
    </ul>
  </div>
</form>