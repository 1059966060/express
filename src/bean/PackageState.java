package bean;

public class PackageState {
	private String information;
	private String time;
	private int no;
	public PackageState() {
		super();
	}
	public PackageState(String information, String time, int no) {
		super();
		this.information = information;
		this.time = time;
		this.no = no;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	
}
