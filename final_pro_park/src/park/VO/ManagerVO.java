package park.VO;

public class ManagerVO {
	private int  	biz_number      =0;
	private int  	mgr_number      =0;
	private String  mgr_name        ="";
	private int  	mgr_phone       =0;
	private String  mgr_officehour  ="";
	private String  mgr_location    ="";
	public int getBiz_number() {
		return biz_number;
	}
	public void setBiz_number(int biz_number) {
		this.biz_number = biz_number;
	}
	public int getMgr_number() {
		return mgr_number;
	}
	public void setMgr_number(int mgr_number) {
		this.mgr_number = mgr_number;
	}
	public String getMgr_name() {
		return mgr_name;
	}
	public void setMgr_name(String mgr_name) {
		this.mgr_name = mgr_name;
	}
	public int getMgr_phone() {
		return mgr_phone;
	}
	public void setMgr_phone(int mgr_phone) {
		this.mgr_phone = mgr_phone;
	}
	public String getMgr_officehour() {
		return mgr_officehour;
	}
	public void setMgr_officehour(String mgr_officehour) {
		this.mgr_officehour = mgr_officehour;
	}
	public String getMgr_location() {
		return mgr_location;
	}
	public void setMgr_location(String mgr_location) {
		this.mgr_location = mgr_location;
	}
}
