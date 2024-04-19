<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="https://cdn02.jotfor.ms/static/prototype.forms.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn03.jotfor.ms/static/jotform.forms.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/vendor/maskedinput_5.0.9.min.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/js/punycode-1.4.1.min.js?v=3.3.53071" type="text/javascript" defer></script>
<script src="https://cdn03.jotfor.ms/js/paypal.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/payments/paymentUtils.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/js/payments/validategateways.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/s/umd/a588ae1de3b/for-form-branding-footer.js?v=3.3.53071" type="text/javascript" defer></script>
<script src="https://cdn03.jotfor.ms/js/vendor/smoothscroll.min.js?v=3.3.53071" type="text/javascript"></script>
<script src="https://cdn01.jotfor.ms/js/errorNavigation.js?v=3.3.53071" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/stylebuilder/static/form-common.css?v=d0f72cd"/>
<style type="text/css">@media print{*{-webkit-print-color-adjust: exact !important;color-adjust: exact !important;}.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.53071&themeRevisionID=5f7ed99c2c2c7240ba580251"/>
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_styles.css?3.3.53071" />
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.53071" />

<!--  내용  -->
<form class="jotform-form" action="insert" method="post">
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
      <!-- 내용 시작 --------------------------------------------------------------------------------------------------------- -->
      <li class="form-line" data-type="control_fullname" id="id_5"><label class="form-label form-label-top form-label-auto" id="label_5" for="first_5" aria-hidden="false"> 전체 이름 </label>
        <div id="cid_5" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
          <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last"><input type="text" id="fname" name="fname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 family-name" size="15" data-component="last" aria-labelledby="label_5 sublabel_5_last" value="" />
          <label class="form-sub-label" for="last_5" id="sublabel_5_last" style="min-height:13px">성</label>
          </span>
          <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
          <input type="text" id="lname" name="lname" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 given-name" size="10" data-component="first" aria-labelledby="label_5 sublabel_5_first" value="" />
          <label class="form-sub-label" for="first_5" id="sublabel_5_first" style="min-height:13px">이름</label>
          </span>
          
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_card" id="id_8"><label class="form-label form-label-top form-label-auto" id="label_8" for="input_8" aria-hidden="false"> 카드 번호 </label>
        <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
          <input type="text" id="card" name="card" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 given-name" size="10" data-component="first" aria-labelledby="label_5 sublabel_5_first" value="" />
          </span>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_cdate" id="id_8"><label class="form-label form-label-top form-label-auto" id="label_8" for="input_8" aria-hidden="false"> 카드 유효날짜 </label>
        <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
          <input type="text" id="cdate" name="cdate" class="form-textbox" data-defaultvalue="" autoComplete="section-input_5 given-name" size="10" data-component="first" aria-labelledby="label_5 sublabel_5_first" value="" />
          </span>
      </li>
      <li class="form-line" data-type="control_address" id="id_6"><label class="form-label form-label-top form-label-auto" id="label_6" for="input_6_addr_line1" aria-hidden="false"> 주소 </label>
        <div id="cid_6" class="form-input-wide" data-layout="full">
          <div summary="" class="form-address-table jsTest-addressField">
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-street-line jsTest-address-lineField">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="addr1" name="addr1" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line1" data-component="address_line_1" aria-labelledby="label_6 sublabel_6_addr_line1" required="" value="" /><label class="form-sub-label" for="input_6_addr_line1" id="sublabel_6_addr_line1" style="min-height:13px">주소 1</label>
            </span></span></div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-street-line jsTest-address-lineField">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="addr2" name="addr2" class="form-textbox form-address-line" data-defaultvalue="" autoComplete="section-input_6 address-line2" data-component="address_line_2" aria-labelledby="label_6 sublabel_6_addr_line2" value="" /><label class="form-sub-label" for="input_6_addr_line2" id="sublabel_6_addr_line2" style="min-height:13px">동/호수</label></span></span></div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
            <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" id="zip" name="zip" class="form-textbox form-address-postal" data-defaultvalue="" autoComplete="section-input_6 postal-code" data-component="zip" aria-labelledby="label_6 sublabel_6_postal" required="" value="" /><label class="form-sub-label" for="input_6_postal" id="sublabel_6_postal" style="min-height:13px">우편번호</label></span></span></div>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_phone" id="id_7">
      <label class="form-label form-label-top form-label-auto" id="label_7" for="input_7_full"> 전화번호 </label>
        <div id="cid_7" class="form-input-wide" data-layout="half">
         <span class="form-sub-label-container" style="vertical-align:top">
         <input type="text" id="tel" name="tel" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" data-defaultvalue="" autoComplete="section-input_7 tel-national" style="width:310px" data-masked="true" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_7" value=""/></span> </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_email" id="id_8"><label class="form-label form-label-top form-label-auto" id="label_8" for="input_8" aria-hidden="false"> 이메일 </label>
        <div id="cid_8" class="form-input-wide" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="email" name="email" class="form-textbox validate[Email]" data-defaultvalue="" autoComplete="section-input_8 email" style="width:310px" size="310" placeholder="얘: myname@example.com" data-component="email" aria-labelledby="label_8 sublabel_input_8" value="" /><label class="form-sub-label" for="input_8" id="sublabel_input_8" style="min-height:13px">example@example.com</label></span> </div>
      </li>
      <!-- 도착날짜 및 시간 -->
      <li class="form-line allowTime" data-type="control_datetime" id="id_10"><label class="form-label form-label-top" id="label_10" for="lite_mode_10" aria-hidden="false"> 도착 - 날짜 및 시간 </label>
      
        <div id="cid_10" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true" class="extended">
          <!-- 도착 날짜 -->
          <!-- 연도 -->
            <div style="display:none"><span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="date1" name="date1" size="4" data-maxlength="4" data-age="" maxLength="4" value="" autoComplete="on" aria-labelledby="label_10 sublabel_10_year" />
            <span class="date-separate" aria-hidden="true"> -</span>
            <label class="form-sub-label" for="year_10" id="sublabel_10_year" style="min-height:13px">Year</label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="date2" name="date2" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="on" aria-labelledby="label_10 sublabel_10_month" /><span class="date-separate" aria-hidden="true"> -</span><label class="form-sub-label" for="month_10" id="sublabel_10_month" style="min-height:13px">Month</label></span><span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="date3" name="date3" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="on" aria-labelledby="label_10 sublabel_10_day" /><label class="form-sub-label" for="day_10" id="sublabel_10_day" style="min-height:13px">Day</label>
            </span>
            </div>
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="date1" size="12" data-maxlength="12" maxLength="12" data-age="" value="" data-format="yyyymmdd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="on" aria-labelledby="label_10" />
            <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_10_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" />
            <label class="form-sub-label is-empty" for="lite_mode_10" id="sublabel_10_litemode" style="min-height:13px"></label>
            </span>
            <!--  도착 시간 -->
            <span class="allowTime-container timeAMPM"> 
              <div data-wrapper-react="true">
              <span class="form-sub-label-container hasAMPM" style="vertical-align:top">
              <input type="time" class="time-dropdown form-textbox validate[time]" id="atime" name="atime" placeholder="HH : MM" aria-labelledby="label_10 sublabel_10_hour" data-mask="hh:MM" value="" autoComplete="off" data-version="v2" /><input type="hidden" class="form-hidden-time" id="input_10_hourSelect" name="q10_input10[hour]" /><input type="hidden" class="form-hidden-time" id="input_10_minuteSelect" name="q10_input10[min]" /><label data-seperate-translate="true" class="form-sub-label" for="input_10_timeInput" id="sublabel_10_hour" style="min-height:13px">시 분</label></span><span class="form-sub-label-container" style="vertical-align:top"><select class="time-dropdown form-dropdown" id="input_10_ampm" name="q10_input10[ampm]" data-component="time-ampm" aria-labelledby="label_10 sublabel_10_ampm" autoComplete="off">
                    <option selected="" value="AM">AM</option>
                    <option value="PM">PM</option>
                  </select><label class="form-sub-label" for="input_10_ampm" id="sublabel_10_ampm" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap">AM/PM Option</label></span></div>
            </span>
          </div>
        </div>
      </li>
      <!-- 출발날짜 -->
      <li class="form-line allowTime" data-type="control_datetime" id="id_11">
      <label class="form-label form-label-top" id="label_11" for="lite_mode_11" aria-hidden="false"> 출발 - 날짜 및 시간 </label>
        <div id="cid_11" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true" class="extended">
            <div style="display:none">
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="departure1" name="departure1" size="4" data-maxlength="4" data-age="" maxLength="4" value="" autoComplete="on" aria-labelledby="label_11 sublabel_11_year" />
            <span class="date-separate" aria-hidden="true"> -</span>
            <label class="form-sub-label" for="year_11" id="sublabel_11_year" style="min-height:13px">Year</label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="departure2" name="departure2" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="on" aria-labelledby="label_11 sublabel_11_month" />
            <span class="date-separate" aria-hidden="true"> -</span>
            <label class="form-sub-label" for="month_11" id="sublabel_11_month" style="min-height:13px">Month</label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate]" id="departure3" name="departure3" size="2" data-maxlength="2" data-age="" maxLength="2" value="" autoComplete="on" aria-labelledby="label_11 sublabel_11_day" />
            <label class="form-sub-label" for="day_11" id="sublabel_11_day" style="min-height:13px">Day</label>
            </span>
            </div>
            <span class="form-sub-label-container" style="vertical-align:top">
            <input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="departure1" size="12" data-maxlength="12" maxLength="12" data-age="" value="" data-format="yyyymmdd" data-seperator="-" placeholder="YYYY-MM-DD" data-placeholder="YYYY-MM-DD" autoComplete="on" aria-labelledby="label_11" />
            <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_11_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="Yes" data-version="v2" />
            <label class="form-sub-label is-empty" for="lite_mode_11" id="sublabel_11_litemode" style="min-height:13px"></label>
            </span>
            <!--  출발 시간  -->
            <span class="allowTime-container timeAMPM">
              <div data-wrapper-react="true">
              <span class="form-sub-label-container hasAMPM" style="vertical-align:top">
              <input type="time" class="time-dropdown form-textbox validate[time]" id="dtime" name="dtime" placeholder="HH : MM" aria-labelledby="label_11 sublabel_11_hour" data-mask="hh:MM" value="" autoComplete="off" data-version="v2" /><input type="hidden" class="form-hidden-time" id="input_11_hourSelect" name="q11_input11[hour]" /><input type="hidden" class="form-hidden-time" id="input_11_minuteSelect" name="q11_input11[min]" /><label data-seperate-translate="true" class="form-sub-label" for="input_11_timeInput" id="sublabel_11_hour" style="min-height:13px">시 분</label></span><span class="form-sub-label-container" style="vertical-align:top"><select class="time-dropdown form-dropdown" id="input_11_ampm" name="q11_input11[ampm]" data-component="time-ampm" aria-labelledby="label_11 sublabel_11_ampm" autoComplete="off">
                    <option selected="" value="AM">AM</option>
                    <option value="PM">PM</option>
                  </select>
                  <label class="form-sub-label" for="input_11_ampm" id="sublabel_11_ampm" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap">AM/PM Option</label></span></div>
            </span>
          </div>
        </div>
      </li>
      <!-- 성인 인원 수 -->
      <li class="form-line form-line-column form-col-1" data-type="control_number" id="id_22">
      <label class="form-label form-label-top" id="label_22" for="input_22" aria-hidden="false"> 성인 수 </label>
        <div id="cid_22" class="form-input-wide" data-layout="half"> 
        <input type="number" id="adult" name="adult" data-type="input-number" class=" form-number-input form-textbox validate[Numeric]" data-defaultvalue="" autocomplete="on" style="width:310px" size="310" placeholder="예: 23" data-component="number" aria-labelledby="label_22" step="any" value="" /> </div>
      </li>
      <!-- 아동 인원 수 -->
      <li class="form-line form-line-column form-col-2" data-type="control_number" id="id_23"><label class="form-label form-label-top" id="label_23" for="input_23" aria-hidden="false"> 아동 수 (만약 있을 시) </label>
        <div id="cid_23" class="form-input-wide" data-layout="half"> 
        <input type="number" id="children" name="children" data-type="input-number" class=" form-number-input form-textbox validate[Numeric]" data-defaultvalue="" autocomplete="on" style="width:310px" size="310" placeholder="예: 23" data-component="number" aria-labelledby="label_23" step="any" value="" /> </div>
      </li>
      
      <!-- 결제 수단 -->
      <li class="form-line" data-type="control_radio" id="id_18"><label class="form-label form-label-top" id="label_18" aria-hidden="false"> 결제 수단 </label>
        <div id="cid_18" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="2" role="group" aria-labelledby="label_18" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_18" class="form-radio" value="수표" /><label id="label_input_18_0" for="input_18_0">수표</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_18" class="form-radio" value="Paypal" /><label id="label_input_18_1" for="input_18_1">Paypal</label></span></div>
        </div>
      </li>
      <!-- content -->
      <li class="form-line" data-type="control_textarea" id="id_20"><label class="form-label form-label-top" id="content" for="input_20" aria-hidden="false"> 특별한 요청이 있나요? </label>
        <div id="cid_20" class="form-input-wide" data-layout="full"> <textarea id="content" class="form-textarea" name="content" style="width:648px;height:163px" data-component="textarea" aria-labelledby="label_20"></textarea> </div>
      </li>
       
      </ul>
      </div>
      
      <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField"><button type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="" >제출하기</button></div>
        </div>
</form>
