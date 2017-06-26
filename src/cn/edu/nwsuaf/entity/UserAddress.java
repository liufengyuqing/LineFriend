package cn.edu.nwsuaf.entity;

/**
 * @author 刘志伟
 *
 * 2017-6-14
 */
public class UserAddress {
	private int id; //地址编号
	private User user; //一对多中 user_id
	private String receive_name;
	private String province;
	private String city;
	private String district;
	private String full_address;
	private String phone;
	private String postal_code;//邮编
	
	/**
	 * 
	 */
	public UserAddress() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param id
	 * @param user
	 * @param receiveName
	 * @param province
	 * @param city
	 * @param district
	 * @param fullAddress
	 * @param phone
	 * @param postalCode
	 */
	public UserAddress(int id, User user, String receiveName, String province,
			String city, String district, String fullAddress, String phone,
			String postalCode) {
		super();
		this.id = id;
		this.user = user;
		receive_name = receiveName;
		this.province = province;
		this.city = city;
		this.district = district;
		full_address = fullAddress;
		this.phone = phone;
		postal_code = postalCode;
	}
	@Override
	public String toString() {
		return "UserAddress [city=" + city + ", district=" + district
				+ ", full_address=" + full_address + ", id=" + id + ", phone="
				+ phone + ", postal_code=" + postal_code + ", province="
				+ province + ", receive_name=" + receive_name + ", user="
				+ user + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getReceive_name() {
		return receive_name;
	}
	public void setReceive_name(String receiveName) {
		receive_name = receiveName;
	}
	public String getFull_address() {
		return full_address;
	}
	public void setFull_address(String fullAddress) {
		full_address = fullAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postalCode) {
		postal_code = postalCode;
	}
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	
}
