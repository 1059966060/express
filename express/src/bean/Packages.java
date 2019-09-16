package bean;

public class Packages {
	private int state;
	private int no;
	private String senderName;
	private String senderMobile;
	private String senderPlace;
	private String addrName;
	private String addrMobile;
	private String addrPlace;
	private String information;
	public Packages() {
		super();
	}
	public Packages(int state, int no, String senderName, String senderMobile, String senderPlace, String addrName,
			String addrMobile, String addrPlace, String information) {
		super();
		this.state = state;
		this.no = no;
		this.senderName = senderName;
		this.senderMobile = senderMobile;
		this.senderPlace = senderPlace;
		this.addrName = addrName;
		this.addrMobile = addrMobile;
		this.addrPlace = addrPlace;
		this.information = information;
	}
	
	
	public Packages(int state, String senderName, String senderMobile, String senderPlace, String addrName,
			String addrMobile, String addrPlace, String information) {
		super();
		this.state = state;
		this.senderName = senderName;
		this.senderMobile = senderMobile;
		this.senderPlace = senderPlace;
		this.addrName = addrName;
		this.addrMobile = addrMobile;
		this.addrPlace = addrPlace;
		this.information = information;
	}
	
		
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj==null) {
			return false;
		}
		if(this==obj) {
			return true;
		}
		
		if(obj instanceof Packages) {
			Packages packages=(Packages)obj;
			if(this.no==packages.no) {
				return true;
			}else {
				return false;
			}
		}
		return false;
	}
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderMobile() {
		return senderMobile;
	}
	public void setSenderMobile(String senderMobile) {
		this.senderMobile = senderMobile;
	}
	public String getSenderPlace() {
		return senderPlace;
	}
	public void setSenderPlace(String senderPlace) {
		this.senderPlace = senderPlace;
	}
	public String getAddrName() {
		return addrName;
	}
	public void setAddrName(String addrName) {
		this.addrName = addrName;
	}
	public String getAddrMobile() {
		return addrMobile;
	}
	public void setAddrMobile(String addrMobile) {
		this.addrMobile = addrMobile;
	}
	public String getAddrPlace() {
		return addrPlace;
	}
	public void setAddrPlace(String addrPlace) {
		this.addrPlace = addrPlace;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	
	
	
	
	
}
