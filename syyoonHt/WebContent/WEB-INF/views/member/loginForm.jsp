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
          <label for="id" class="label">���̵�</label>
          <input id="id" name="id" type="text" class="input">
        </div>
        <div class="group">
          <label for="pwd" class="label">��й�ȣ</label>
          <input id="pwd" name="pwd" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input type="submit" class="button" value="�α���">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="#forgot">��й�ȣ�� �ؾ�����̳���?</a>
        </div>
        </form>
      </div>
      <div class="sign-up-htm">
      <form method="post" action="memberIn">
        <div class="group">
          <label for="id" class="label">���̵�</label>
          <input id="id" name="id" type="text" class="input"> 
          <label> </label>
          <input type="button" class="button" id="idChkBtn" value="���̵��ߺ�Ȯ��">
        </div>
        <div class="group">
          <label for="pwd" class="label">��й�ȣ</label>
          <input id="pwd" name="pwd" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="name" class="label">�̸�</label>
          <input id="name" name="name" type="text" class="input"> 
        </div>
        <%--
        <div class="group">
          <label for="pwd" class="label">��й�ȣ Ȯ��</label>
          <input id="pwd" type="password" class="input" data-type="password">
        </div>
         --%>
        <div class="group">
          <label for="email" class="label">�̸���</label>
          <input id="email" name="email" type="text" class="input">
        </div>
        <div class="group">
          <label for="tel" class="label">�޴���ȭ��ȣ</label>
          <input id="tel" name="tel" type="text" class="input">
        </div>
        <div class="group">
          <label for="birth" class="label">�������</label>
          <input id="birth" name="birth" type="date" class="input">
        </div>
        <div class="group">
          <input type="submit" class="button" value="ȸ������">
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
</article>