package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.DAO.PropertyDAO;
import com.monespace.model.Property;

@Repository
public class PropertyDAOImpl implements PropertyDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void createPoperty(Property property) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(property);
	}

	@SuppressWarnings("unchecked")
	public List<Property> listproperty() {
		// TODO Auto-generated method stub
		List<Property> propertylist= sessionFactory.getCurrentSession().createQuery("from Property").getResultList();
		return propertylist;
	}
	
	@SuppressWarnings("unchecked")
	public String stringProperty() {
		// TODO Auto-generated method stub
		Gson gson= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<Property> propertylist= sessionFactory.getCurrentSession().createQuery("from Property").getResultList();
		String propertyjson= gson.toJson(propertylist);
		return propertyjson;
	}
	
     @SuppressWarnings("unchecked")
	public Property getPropertyById(int propertyId) {
		// TODO Auto-generated method stub
		String pquery= "from Property where propertyId=" + propertyId;
		List <Property> propertylist= sessionFactory.getCurrentSession().createQuery(pquery).getResultList();
		if (propertylist !=null && !propertylist.isEmpty()) {
			return propertylist.get(0);
		} else {
			return null;
		}
	}

	public void deleteProperty(int propertyId) {
		// TODO Auto-generated method stub
		Property deleteProperty = new Property();
		deleteProperty.setPropertyId(propertyId);
		sessionFactory.getCurrentSession().delete(deleteProperty);
	}

	public void updtePropertyPlus(int propertyId) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery("update Property where propertyId="+ propertyId).executeUpdate();
	}

}
