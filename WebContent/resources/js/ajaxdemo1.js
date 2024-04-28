/**
 * resources/js/ajaxdemo1.js
 */
//alert("Test");
let xhr = null;
function sendRequest(url,param,callback,method,type){
	xhr = new XMLHttpRequest();
	//전송방식을 분석
	let httpMethod = (method !== 'POST' && method !== 'post')?'GET':'POST';
	
	//파라미터 값 
	let httpParam = (param === null||param ==='')?null:param;
	
	var httpURL = url;
	
	//요청 방식에 따라 처리 test.jsp?idx=11
	if(httpMethod === 'GET' && httpParam !== null){
		httpURL = httpURL+"?"+httpParam;
	}
	xhr.onreadystatechange=callback;
	xhr.open(httpMethod,httpURL,true);
	//요청시 타입 
	if(type === "json"){
		xhr.setRequestHeader("Content-type", "application/json");
	}else{
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	}
	//console.log("httpMethod=>"+httpMethod+":httpParam"+httpParam);
	xhr.send(httpMethod === 'POST'?httpParam:null);
	
}



