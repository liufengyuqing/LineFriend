package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Food;

public interface FoodDao {
	
	public Food findFoodByProductId(int product_id);
	
	public List<Food> findAllFood();
}
