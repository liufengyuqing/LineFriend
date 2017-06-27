package cn.edu.nwsuaf.entity;

/**
 * 
 * 订单
 * 
 * @author 吴思颖
 * 
 */
public class Order {
	private int id;// 自增主键
	private int user_id;
	private int status;
	private String order_time;
	private String receive_name;
	private String full_adress;
	private String postal_code;
	private String phone;

	public Order(int id, int userId, int status, String orderTime,
			String receiveName, String fullAdress, String postalCode,
			String phone) {
		super();
		this.id = id;
		user_id = userId;
		this.status = status;
		order_time = orderTime;
		receive_name = receiveName;
		full_adress = fullAdress;
		postal_code = postalCode;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int userId) {
		user_id = userId;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getOrder_time() {
		return order_time;
	}

	public void setOrder_time(String orderTime) {
		order_time = orderTime;
	}

	public String getReceive_name() {
		return receive_name;
	}

	public void setReceive_name(String receiveName) {
		receive_name = receiveName;
	}

	public String getFull_adress() {
		return full_adress;
	}

	public void setFull_adress(String fullAdress) {
		full_adress = fullAdress;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postalCode) {
		postal_code = postalCode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Order [full_adress=" + full_adress + ", id=" + id
				+ ", order_time=" + order_time + ", phone=" + phone
				+ ", postal_code=" + postal_code + ", receive_name="
				+ receive_name + ", status=" + status + ", user_id=" + user_id
				+ "]";
	}

}
