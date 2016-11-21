package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.PropertyDealsSubCategoryDAOImpl;
import com.monespace.model.PropertyDealsSubCategory;

@Service
public class PropertyDealsSubCategoryService {

	@Autowired
	private PropertyDealsSubCategoryDAOImpl propertyDealsSubCategoryDAOImpl;
	
	@Transactional
	public void createPropertyDealsSubCategory(PropertyDealsSubCategory propertyDealsSubCategory) {
		propertyDealsSubCategoryDAOImpl.createPropertyDealsSubCategory(propertyDealsSubCategory);
	}
	
	@Transactional
	public List<PropertyDealsSubCategory> propertyDealsSubCategoryList() {
		return propertyDealsSubCategoryDAOImpl.propertyDealsSubCategoryList();
	}
	
	@Transactional
	public String propertyDealsSubCategoryListJson() {
		return propertyDealsSubCategoryDAOImpl.propertyDealsSubCategoryListJson();
	}
	
	@Transactional
	public PropertyDealsSubCategory getIdFromName(String propertyDealsSubCategoryName) {
		return propertyDealsSubCategoryDAOImpl.getIdFromName(propertyDealsSubCategoryName);
	}
	
	@Transactional
	public void deleteSubCategory(int propertyDealsSubCategoryId) {
		propertyDealsSubCategoryDAOImpl.deleteSubCategory(propertyDealsSubCategoryId);
	}
	
	@Transactional
	public PropertyDealsSubCategory getbyId(int propertyDealsSubCategoryId) {
		return propertyDealsSubCategoryDAOImpl.getbyId(propertyDealsSubCategoryId);
	}
	
}
