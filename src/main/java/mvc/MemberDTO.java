package mvc;

// DTO => Data Transfer Object
// 클라이언트가 보낸값을 저장하거나
// DB에서 데이터를 꺼내 클라이언트에게 보낼 데이터를 저장하는 역할

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
