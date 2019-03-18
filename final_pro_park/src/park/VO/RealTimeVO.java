package park.VO;

public class RealTimeVO {
	 private String rtt_status                ="";
	 private String rtt_parking_lot_name      ="";
	 private String rtt_parking_lot_location  ="";
	 private String rtt_start_time            ="";
	 private int	real_time_use_number      =0;
	 private String user_id                   ="";
	public String getRtt_status() {
		return rtt_status;
	}
	public void setRtt_status(String rtt_status) {
		this.rtt_status = rtt_status;
	}
	public String getRtt_parking_lot_name() {
		return rtt_parking_lot_name;
	}
	public void setRtt_parking_lot_name(String rtt_parking_lot_name) {
		this.rtt_parking_lot_name = rtt_parking_lot_name;
	}
	public String getRtt_parking_lot_location() {
		return rtt_parking_lot_location;
	}
	public void setRtt_parking_lot_location(String rtt_parking_lot_location) {
		this.rtt_parking_lot_location = rtt_parking_lot_location;
	}
	public String getRtt_start_time() {
		return rtt_start_time;
	}
	public void setRtt_start_time(String rtt_start_time) {
		this.rtt_start_time = rtt_start_time;
	}
	public int getReal_time_use_number() {
		return real_time_use_number;
	}
	public void setReal_time_use_number(int real_time_use_number) {
		this.real_time_use_number = real_time_use_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
