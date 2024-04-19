/*!
* Start Bootstrap - Landing Page v6.0.6 (https://startbootstrap.com/theme/landing-page)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-landing-page/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project
$(document).ready(function(){
    var appId = '9e68eaf0e68f8b577ddbd833fe6fef6f'; // 여기에 Open Exchange Rates에서 발급받은 앱 ID를 넣어주세요.

    // Open Exchange Rates API에서 최신 환율 정보 가져오기
    $.getJSON('https://open.er-api.com/v6/latest/' + appId, function(data){
        // USD에서 KRW로의 환율 정보 가져오기
        var exchangeRateKRW = data.rates.KRW.toFixed(2); // 소수점 2자리까지 표시
        var exchangeRateJPY = data.rates.JPY.toFixed(2);
        var exchangeRateEUR = data.rates.EUR.toFixed(2);

        // 환율 정보를 HTML에 표시
        $('#exchangeRateKRW').text('USD(미국 달러) 1달러당 KRW(대한민국 원) ' + exchangeRate + '원');
        $('#exchangeRateJPY').text('USD(미국 달러) 1달러당 JPY(일본 엔) ' + exchangeRate + '엔');
        $('#exchangeRateEUR').text('USD(미국 달러) 1달러당 EUR(유럽연합 유로) ' + exchangeRate + '유로');
    });
});