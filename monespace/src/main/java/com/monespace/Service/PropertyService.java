package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.PropertyDAOImpl;
import com.monespace.model.Property;

@Service
public class PropertyService {

	@Autowired
	private PropertyDAOImpl propertyDAOImpl;
	
	@Transactional
	public void createPoperty(Property property) {
		propertyDAOImpl.createPoperty(property);
	}

	@Transactional
	public List<Property> listproperty() {
		return propertyDAOImpl.listproperty();
	}
	
	@Transactional
	public String stringProperty () {
		return propertyDAOImpl.stringProperty();
	}
	
	@Transactional
	public Property getPropertyById (int propertyId) {
		return propertyDAOImpl.getPropertyById(propertyId);
	}
	
	@Transactional
	public void deleteProperty (int propertyId) {
		propertyDAOImpl.deleteProperty(propertyId);
	}
	
	@Transactional
	public void updtePropertyPlus(int propertyId) {
		propertyDAOImpl.updtePropertyPlus(propertyId);
	}
	
	@Transactional
	public void updatePropertyMinus(int propertyId) {
		propertyDAOImpl.updatePropertyMinus(propertyId);
	}
}
