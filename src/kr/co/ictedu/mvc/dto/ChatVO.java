package kr.co.ictedu.mvc.dto;

import javax.websocket.Session;

public class ChatVO {
	private String id; // ����� 
	private int state; // ����
	private String value; // ���Ͽ� �ְ� ���� ����
	private Session session; // �������� ���� 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Session getSession() {
		return session;
	}
	public void setSession(Session session) {
		this.session = session;
	}
	
}
