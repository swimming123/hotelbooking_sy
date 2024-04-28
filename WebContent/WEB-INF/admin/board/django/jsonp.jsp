<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--django/jsonp--%>
<article>
	<header>
		<h1>Login 처리 학습하기 </h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">loginForm</li>
	</ul>
	<div class="container">
		<div style="width:450px;margin:auto">
	      <div><input type="button" value="click" id="jsonLoad"> </div>
	      <div id="target"></div>
	      <div id="chart1"></div>
   		</div>	
	</div>
</article>
<script>
/*
 * 
 Access to XMLHttpRequest at 'http://192.168.0.83:9000/resapi/loadJsonTest1' 
 from origin 'http://localhost' has been blocked by CORS policy: 
	 No 'Access-Control-Allow-Origin' header is present on the requested resource.
 */
 /*
 django Code
 # JSONP(JSON with Padding)
 # :JSON데이터에 Padding()감싸서 클라이언트가 jsonp방식으로 요청을 하기하면 받을 수 있다.
 def loadJsonp(request):
     #사용할 데이터프레임 초기화
     df = make_dfall()[['student', 'kor', 'eng', 'math']]
     df.to_json('student0416.json', orient='split', force_ascii=False)
     f = open('student0416.json')
     resJson = json.load(f)
     # callback function 정의
     # get방식으로 전달 되어 온 파라미터의 값
     json_callback = request.GET.get('callback')
     print(f'json_callback => {json_callback}')
     # Get param => callback
     if json_callback: # jsonp방식
         print("JsonP")
         #callback(jsonData) : 응답객체를 callback()함수에 감싸서 전달
         #aaaaa('jsonData')
         response = HttpResponse("%s(%s);"%(json_callback,json.dumps(resJson,ensure_ascii=False)))
         response["Content-Type"] = "text/javascript; charset=utf-8"
         return response
     else: # 기존의 json 데이터 방식으로 처리
         print("Json")
         return JsonResponse(resJson)
 
 */
    $(function(){
    	//jQuery가 제공하는 jsonP방식 - dataType:'jsonp', jsonp:'callback',
        /*
        $('#jsonLoad').click(function(){
             $.ajax({
                url:'http://192.168.0.83:9000/resapi/loadJsonp',
                type:'GET',
                dataType:'jsonp',
                jsonp:'callback',
                success:function(data){
                    console.log(data.data)
                    console.log(data.columns)
                    $('#target').html(data.data);
                    //chart function
                    makeBarChart(data.data,data.columns);
                }
             });
        });
    	*/
    	// cros방식 
    	// django : pip install django-cors-headers
    	// config/settings.py
    	// INSTALLED_APPS = [ 'corsheaders', ]
    	// MIDDLEWARE = [ 'corsheaders.middleware.CorsMiddleware',]
    	// CORS_ORIGIN_WHITELIST=[ "http://192.168.0.73", ]
    	$('#jsonLoad').click(function(){
            $.ajax({
               url:'http://192.168.0.103:9000/resapi/loadJsonTest1',
               //type:'GET',
               //dataType:'jsonp',
               //jsonp:'callback',
               success:function(data){
                   console.log(data.data)
                   console.log(data.columns)
                   $('#target').html(data.data);
                   //chart function
                   makeBarChart(data.data,data.columns);
               }
            });
       });
    	
    	
    	
    });
    //chart를 위한 함수를 정의한다.
     function makeBarChart(jsonData, dcol) {
         // bar chart에 들어갈 jsonData데이터
        var datas = [];
        //[n개의 컬럼] => str.slice(beginIndex[, endIndex])
        var dcolumns = dcol.slice(1, dcol.length);
        for(var key in jsonData){
        //datas배열에 저장함
        datas.push(jsonData[key]);
        }
         console.log("--------1");
         console.log(datas);
         // bar chart 구현 해보기 ~~~~~~~~
         var chart = c3.generate({
            bindto:'#chart1',
            data: {
                columns: datas,
                type: 'bar'
            },
            bar: {
                width: {
                    ratio: 0.5 // this makes bar width 50% of length between ticks
                }
                // or
                //width: 100 // this makes bar width 100px
            },
            //x축에 컬럼을 입력
            axis:{
                x:{
                    type:'category',
                    categories:dcolumns
                }
            }
        });

        /*setTimeout(function () {
            chart.load({
                columns: [
                    ['data3', 130, -150, 200, 300, -200, 100]
                ]
            });
        }, 1000);
        */
    }
</script>	