package try_admin;

public class Customer {
	String customer_name;
	int customer_id;
	String username;
	String password;
	int phone_number;
	String address;
	String fios_internet;
	String dsl_internet;
	String home_phone;
	String mobile_service;
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
//	public Customer(String customer_name, int customer_id, String username, String password, int phone_number,
//			String address, String fios_internet, String dsl_internet, String home_phone, String mobile_service) {
//		super();
//		this.customer_name = customer_name;
//		this.customer_id = customer_id;
//		this.username = username;
//		this.password = password;
//		this.phone_number = phone_number;
//		this.address = address;
//		this.fios_internet = fios_internet;
//		this.dsl_internet = dsl_internet;
//		this.home_phone = home_phone;
//		this.mobile_service = mobile_service;
//	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(int phone_number) {
		this.phone_number = phone_number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFios_internet() {
		return fios_internet;
	}
	public void setFios_internet(String fios_internet) {
		this.fios_internet = fios_internet;
	}
	public String getDsl_internet() {
		return dsl_internet;
	}
	public void setDsl_internet(String dsl_internet) {
		this.dsl_internet = dsl_internet;
	}
	public String getHome_phone() {
		return home_phone;
	}
	public void setHome_phone(String home_phone) {
		this.home_phone = home_phone;
	}
	public String getMobile_service() {
		return mobile_service;
	}
	public void setMobile_service(String mobile_service) {
		this.mobile_service = mobile_service;
	}
	

}
