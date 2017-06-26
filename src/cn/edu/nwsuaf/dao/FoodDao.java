package cn.edu.nwsuaf.dao;

import cn.edu.nwsuaf.entity.Food;

public interface FoodDao {
	
	public Food findFoodByProductId(int product_id);
}
