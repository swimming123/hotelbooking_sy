<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article>
<div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
    <div class="login-form">
      <div class="sign-in-htm">
      <form action="loginProcess" id="loginInfo" method="post">
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" name="id" type="text" class="input">
        </div>
        <div class="group">
          <label for="pwd" class="label">비밀번호</label>
          <input id="pwd" name="pwd" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input type="submit" class="button" value="로그인">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="#forgot">비밀번호를 잊어버리셨나요?</a>
        </div>
        </form>
      </div>
      <div class="sign-up-htm">
      <form method="post" action="memberIn">
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" name="id" type="text" class="input"> 
          <label> </label>
          <input type="button" class="button" id="idChkBtn" value="아이디중복확인">
        </div>
        <div class="group">
          <label for="pwd" class="label">비밀번호</label>
          <input id="pwd" name="pwd" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="name" class="label">이름</label>
          <input id="name" name="name" type="text" class="input"> 
        </div>
        <%--
        <div class="group">
          <label for="pwd" class="label">비밀번호 확인</label>
          <input id="pwd" type="password" class="input" data-type="password">
        </div>
         --%>
        <div class="group">
          <label for="email" class="label">이메일</label>
          <input id="email" name="email" type="text" class="input">
        </div>
        <div class="group">
          <label for="tel" class="label">휴대전화번호</label>
          <input id="tel" name="tel" type="text" class="input">
        </div>
        <div class="group">
          <label for="birth" class="label">생년월일</label>
          <input id="birth" name="birth" type="date" class="input">
        </div>
        <div class="group">
          <input type="submit" class="button" value="회원가입">
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
</article>