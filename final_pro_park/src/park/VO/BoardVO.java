package park.VO;

public class BoardVO {
	private String  base_title         =""; 
	private String  base_contents      =""; 
	private String  base_created_date  =""; 
	private String  base_post_pw       =""; 
	private String  base_post_division =""; 
	private int  	base_post_number   =0; 
	private int  	base_view_count    =0; 
	private String  base_writer        ="";
	private String 	searchCombo			="";
	private String 	searchText			="";
	
	public String getBase_title() {
		return base_title;
	}
	public void setBase_title(String base_title) {
		this.base_title = base_title;
	}
	public String getBase_contents() {
		return base_contents;
	}
	public void setBase_contents(String base_contents) {
		this.base_contents = base_contents;
	}
	public String getBase_created_date() {
		return base_created_date;
	}
	public void setBase_created_date(String base_created_date) {
		this.base_created_date = base_created_date;
	}
	public String getBase_post_pw() {
		return base_post_pw;
	}
	public void setBase_post_pw(String base_post_pw) {
		this.base_post_pw = base_post_pw;
	}
	public String getBase_post_division() {
		return base_post_division;
	}
	public void setBase_post_division(String base_post_division) {
		this.base_post_division = base_post_division;
	}
	public int getBase_post_number() {
		return base_post_number;
	}
	public void setBase_post_number(int base_post_number) {
		this.base_post_number = base_post_number;
	}
	public int getBase_view_count() {
		return base_view_count;
	}
	public void setBase_view_count(int base_view_count) {
		this.base_view_count = base_view_count;
	}
	public String getBase_writer() {
		return base_writer;
	}
	public void setBase_writer(String base_writer) {
		this.base_writer = base_writer;
	}
	public String getSearchCombo() {
		return searchCombo;
	}
	public void setSearchCombo(String searchCombo) {
		this.searchCombo = searchCombo;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	} 
}
