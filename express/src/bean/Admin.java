package bean;

public class Admin {
	private String name;
	private String account;
	private String password;
	private String email;
	public Admin() {
		super();
	}
	public Admin(String account, String password, String email,String name) {
		super();
		this.account = account;
		this.password = password;
		this.email = email;
		this.name=name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
