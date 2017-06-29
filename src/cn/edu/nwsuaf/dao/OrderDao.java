package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Order;
import cn.edu.nwsuaf.entity.Orders;
import cn.edu.nwsuaf.entity.UserAddress;

public interface OrderDao {
	
	/*后台功能接口*/
	//public void addUserOrder(UserAddress address);//添加用户地址
	public void updateOrder(int id,String state);//根据订单id修改订单状态
	public void deleteOrder(int id);//根据订单ID删除订单
	
	public List<Orders> findAllOrder();//查询所有订单并显示
	/*前台功能接口*/
	public List<Orders> findUserOrder();


   
}
