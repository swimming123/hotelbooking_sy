<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--django/jsonp--%>
<article>
	<header>
		<h1>Login ó�� �н��ϱ� </h1>
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
 # :JSON�����Ϳ� Padding()���μ� Ŭ���̾�Ʈ�� jsonp������� ��û�� �ϱ��ϸ� ���� �� �ִ�.
 def loadJsonp(request):
     #����� ������������ �ʱ�ȭ
     df = make_dfall()[['student', 'kor', 'eng', 'math']]
     df.to_json('student0416.json', orient='split', force_ascii=False)
     f = open('student0416.json')
     resJson = json.load(f)
     # callback function ����
     # get������� ���� �Ǿ� �� �Ķ������ ��
     json_callback = request.GET.get('callback')
     print(f'json_callback => {json_callback}')
     # Get param => callback
     if json_callback: # jsonp���
         print("JsonP")
         #callback(jsonData) : ���䰴ü�� callback()�Լ��� ���μ� ����
         #aaaaa('jsonData')
         response = HttpResponse("%s(%s);"%(json_callback,json.dumps(resJson,ensure_ascii=False)))
         response["Content-Type"] = "text/javascript; charset=utf-8"
         return response
     else: # ������ json ������ ������� ó��
         print("Json")
         return JsonResponse(resJson)
 
 */
    $(function(){
    	//jQuery�� �����ϴ� jsonP��� - dataType:'jsonp', jsonp:'callback',
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
    	// cros��� 
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
    //chart�� ���� �Լ��� �����Ѵ�.
     function makeBarChart(jsonData, dcol) {
         // bar chart�� �� jsonData������
        var datas = [];
        //[n���� �÷�] => str.slice(beginIndex[, endIndex])
        var dcolumns = dcol.slice(1, dcol.length);
        for(var key in jsonData){
        //datas�迭�� ������
        datas.push(jsonData[key]);
        }
         console.log("--------1");
         console.log(datas);
         // bar chart ���� �غ��� ~~~~~~~~
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
            //x�࿡ �÷��� �Է�
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