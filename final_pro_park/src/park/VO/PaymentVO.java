package park.VO;

public class PaymentVO {
	 private String mem_id           ="";
	 private String payment_time     ="";
	 private String pr_payment_way   ="";
	 private int 	pr_payment_price =0;
	 private String pr_charging_time ="";
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPayment_time() {
		return payment_time;
	}
	public void setPayment_time(String payment_time) {
		this.payment_time = payment_time;
	}
	public String getPr_payment_way() {
		return pr_payment_way;
	}
	public void setPr_payment_way(String pr_payment_way) {
		this.pr_payment_way = pr_payment_way;
	}
	public int getPr_payment_price() {
		return pr_payment_price;
	}
	public void setPr_payment_price(int pr_payment_price) {
		this.pr_payment_price = pr_payment_price;
	}
	public String getPr_charging_time() {
		return pr_charging_time;
	}
	public void setPr_charging_time(String pr_charging_time) {
		this.pr_charging_time = pr_charging_time;
	}
}
