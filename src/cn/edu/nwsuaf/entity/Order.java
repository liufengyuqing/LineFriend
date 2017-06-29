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
	private String address_id;
	public Order(int id, int userId, int status, String orderTime,
			String addressId) {
		super();
		this.id = id;
		user_id = userId;
		this.status = status;
		order_time = orderTime;
		address_id = addressId;
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
	public String getAddress_id() {
		return address_id;
	}
	public void setAddress_id(String addressId) {
		address_id = addressId;
	}
	@Override
	public String toString() {
		return "Order [address_id=" + address_id + ", id=" + id
				+ ", order_time=" + order_time + ", status=" + status
				+ ", user_id=" + user_id + "]";
	}
	
	
	
}
