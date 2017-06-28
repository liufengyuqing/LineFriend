package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Orders;
import cn.edu.nwsuaf.entity.UserAddress;

public interface OrderDao {
	
	
	
	
	/*后台功能接口*/
	public void addUserOrder(UserAddress address);//添加用户地址
	public void updateOrder(int id,String state);//根地址id更新用户此地址
	public void deleteOrder(int id);//根地址id删除用户此地址
	
	public List<Orders> findAllOrder();//通过用户id查询所有的用户地址，返回用户，用户有list<address>属性通过user来获取address
	

}
