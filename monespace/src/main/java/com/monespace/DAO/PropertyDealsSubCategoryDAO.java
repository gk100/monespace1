//Write Abstract Method here within Interface

package com.monespace.DAO;

import java.util.List;

import com.monespace.model.PropertyDealsSubCategory;

public interface PropertyDealsSubCategoryDAO {

	public void createPropertyDealsSubCategory(PropertyDealsSubCategory propertyDealsSubCategory);

	public List<PropertyDealsSubCategory> propertyDealsSubCategoryList();

	public String propertyDealsSubCategoryListJson();

	public PropertyDealsSubCategory getIdFromName(String propertyDealsSubCategoryName);
	
	public void deleteSubCategory(int propertyDealsSubCategoryId);
	
	public PropertyDealsSubCategory getbyId(int propertyDealsSubCategoryId);

}
