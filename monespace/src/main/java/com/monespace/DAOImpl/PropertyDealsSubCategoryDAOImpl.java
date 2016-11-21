//Write Main queries and Logic Here. We create methods here not execute 

package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.DAO.PropertyDealsSubCategoryDAO;
import com.monespace.model.PropertyDealsSubCategory;

@Repository
public class PropertyDealsSubCategoryDAOImpl implements PropertyDealsSubCategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void createPropertyDealsSubCategory(PropertyDealsSubCategory propertyDealsSubCategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(propertyDealsSubCategory);
	}

	@SuppressWarnings("unchecked")
	public List<PropertyDealsSubCategory> propertyDealsSubCategoryList() {

		List<PropertyDealsSubCategory> propertyDealsSubCategoryList = sessionFactory.getCurrentSession()
				.createQuery("From PropertyDealsSubCategory").getResultList();
		return propertyDealsSubCategoryList;
	}

	@SuppressWarnings("unchecked")
	public String propertyDealsSubCategoryListJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<PropertyDealsSubCategory> propertyDealsList = sessionFactory.getCurrentSession()
				.createQuery("From PropertyDealsSubCategory").getResultList();
		String propertyList = gson.toJson(propertyDealsList);
		return propertyList;
	}

	@SuppressWarnings("unchecked")
	public PropertyDealsSubCategory getIdFromName(String propertyType) {
		String query = "from PropertyDealsSubCategory where propertyType='" + propertyType + "'";
		List<PropertyDealsSubCategory> propertyDealsSubCategoryList = sessionFactory.getCurrentSession()
				.createQuery(query).getResultList();
		if (propertyDealsSubCategoryList != null && !propertyDealsSubCategoryList.isEmpty()) {
			return propertyDealsSubCategoryList.get(0);
		} else {
			return null;
		}
	}

	public void deleteSubCategory(int propertyDealsSubCategoryId) {
		// TODO Auto-generated method stub
		PropertyDealsSubCategory propertyDealsSubCategory = new PropertyDealsSubCategory();
		propertyDealsSubCategory.setPropertyDealsSubCategoryId(propertyDealsSubCategoryId);
		sessionFactory.getCurrentSession().delete(propertyDealsSubCategory);
	}

	@SuppressWarnings("unchecked")
	public PropertyDealsSubCategory getbyId(int propertyDealsSubCategoryId) {
		// TODO Auto-generated method stub
		String newquery = "from PropertyDealsSubCategory where propertyDealsSubCategoryId="
				+ propertyDealsSubCategoryId;
		List<PropertyDealsSubCategory> propertyDealsSubCategoryList = this.sessionFactory.getCurrentSession()
				.createQuery(newquery).getResultList();
		if (propertyDealsSubCategoryList != null && !propertyDealsSubCategoryList.isEmpty()) {
			return propertyDealsSubCategoryList.get(0);
		} else {
			return null;
		}

	}

}
