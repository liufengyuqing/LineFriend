package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Orders;

public interface OrderDao {
	
	/*后台功能接口*/
	//public void addUserOrder(UserAddress address);//添加用户地址
	public void updateOrder(int id,String status);//根据订单id修改订单状态
	public void deleteOrder(int id);//根据订单ID删除订单
	public List<Orders> findAllOrder();//查询所有订单并显示
	public List<Orders> findOrderByorder_id(int id);//根据订单id 查询订单
	public List<Orders> findOrderByorder_time(String user_time);//根据下单时间 查询订单
	public List<Orders> findOrderByuser_id(int user_id);//根据用户id 查询订单
	
	
	/*前台功能接口*/
	public List<Orders> findUserOrder();
	public String findUserOrderByUserId(int user_id);//通过用户ID获取此用户的所有的订单
	public String deteleByProductId(int orderId);//删除订单单项

   
}
