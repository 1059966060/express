package bean;

public class ExpressMan {
	private String no;
	private String name;
	private int sex;
	private String mobile;
	private String email;
	private String IDcard;
	private String birthday;
	private String state;
	private String password;
	private String date;
	private int salary;
	private String nativePlace;
	private String homePlace;
	private int type;
	public ExpressMan() {
		super();
	}
	public ExpressMan(String no, String name, int sex, String mobile, String email, String IDcard, String birthday,
			String state, String password, String date, int salary, String nativePlace, String homePlace,int type) {
		super();
		this.no = no;
		this.name = name;
		this.sex = sex;
		this.mobile = mobile;
		this.email = email;
		this.IDcard=IDcard;
		this.birthday = birthday;
		this.state = state;
		this.password = password;
		this.date = date;
		this.salary = salary;
		this.nativePlace = nativePlace;
		this.homePlace = homePlace;
		this.type=type;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIDcard() {
		return IDcard;
	}
	public void setIDcard(String IDcard) {
		this.IDcard=IDcard;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getState() {
		return state;
	}
	public void setState(String state ) {
		this.state = state;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getNativePlace() {
		return nativePlace;
	}
	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}
	public String getHomePlace() {
		return homePlace;
	}
	public void setHomePlace(String homePlace) {
		this.homePlace = homePlace;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
