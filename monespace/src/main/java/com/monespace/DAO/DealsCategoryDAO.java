package com.monespace.DAO;

import java.util.List;

import com.monespace.model.DealsCategory;

public interface DealsCategoryDAO {
	public void createDealsCategory(DealsCategory dealscategory);

	public List<DealsCategory> listDealsCategories();

	public DealsCategory getIdFromName(String dealsCategoryName);

	public String getCategories();

	public void deleteCategory(int dealsCategoryId);

	public DealsCategory getById(int dealsCategoryId);
}
