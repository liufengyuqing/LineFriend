package cn.edu.nwsuaf.entity;

import java.util.List;

public class Orders {
   private int id;
   private String order_id;
   private String user_id;
   private String order_time;
   private String rs_name;
   private String rs_address;
   private String tomp;
   private String tel;
   



public String getOrder_time() {
	return order_time;
}
public void setOrder_time(String orderTime) {
	order_time = orderTime;
}
@Override
public String toString() {
	return "Orders [id=" + id + ", order_id=" + order_id + ", rs_address="
			+ rs_address + ", rs_name=" + rs_name + ", tel=" + tel + ", tomp="
			+ tomp + ", user_id=" + user_id + ", user_time=" + order_time + "]";
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String orderId) {
	order_id = orderId;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String userId) {
	user_id = userId;
}
public String getRs_name() {
	return rs_name;
}
public void setRs_name(String rsName) {
	rs_name = rsName;
}
public String getRs_address() {
	return rs_address;
}
public void setRs_address(String rsAddress) {
	rs_address = rsAddress;
}
public String getTomp() {
	return tomp;
}
public void setTomp(String tomp) {
	this.tomp = tomp;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
 
}
