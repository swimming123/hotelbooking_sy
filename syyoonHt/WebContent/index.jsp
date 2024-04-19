<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--  알림 SDK 설치 -->

<article>
    <header style="color:white">Main Page Tiles</header>
    <ul class="list-unstyled">
        <!-- 
        li class="boarder-top my-3">web/테스트성공</li
        
        rootPath : D:\ictedu\SpringMVC\sts-bundle\sts-3.9.12.RELEASE
         -->

    </ul>
    <div class="container">
        <h1>테스트입니다.</h1>
    </div>
</article>

<script type="module">
import * as PusherPushNotifications from "../@pusher/push-notifications-web";

const beamsClient = new PusherPushNotifications.Client({
    instanceId: '660138c3-4db8-49a7-be89-856bcefacd40',
  });

  beamsClient.start()
    .then(() => beamsClient.addDeviceInterest('hello'))
    .then(() => console.log('Successfully registered and subscribed!'))
    .catch(console.error);
</script>
