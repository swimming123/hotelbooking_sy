package kr.co.ictedu.mvc.dto;

import javax.websocket.Session;

public class ChatVO {
	private String id; // 사용자 
	private int state; // 상태
	private String value; // 소켓에 주고 받을 내용
	private Session session; // 웹소켓의 세션 
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
