/**
 * author 刘志伟
 * 2017-6-26
 */
package cn.edu.nwsuaf.entity;

/**
 * @author 刘志伟
 *
 * 2017-6-26
 */
public class Order {
	private int id;
	private User user;
	private String status;
	private String order_time;
	private UserAddress address;
	
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(int id, User user, String status, String orderTime,
			UserAddress address) {
		super();
		this.id = id;
		this.user = user;
		this.status = status;
		order_time = orderTime;
		this.address = address;
	}


	@Override
	public String toString() {
		return "Order [address=" + address + ", id=" + id + ", order_time="
				+ order_time + ", status=" + status + ", user=" + user + "]";
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String orderTime) {
		order_time = orderTime;
	}
	public UserAddress getAddress() {
		return address;
	}
	public void setAddress(UserAddress address) {
		this.address = address;
	}
	
	
	

}
