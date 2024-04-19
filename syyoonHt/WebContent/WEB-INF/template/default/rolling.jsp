<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>
//�Ѹ� ��� ������ ����
let roller = document.querySelector('.rolling-list');
roller.id = 'roller1'; // ���̵� �ο�

let clone = roller.cloneNode(true)
// cloneNode : ��� ����. �⺻���� false. �ڽ� ������ ������ ���ϸ� true ���
clone.id = 'roller2';
document.querySelector('.wrap').appendChild(clone); // wrap ���� �ڽ����� ����

document.querySelector('#roller1').style.left = '0px';
document.querySelector('#roller2').style.left = document.querySelector('.rolling-list ul').offsetWidth + 'px';
// offsetWidth : ����� ũ�� Ȯ��(margin�� ������ padding��, border������ ����� ��)

roller.classList.add('original');
clone.classList.add('clone');
</script>