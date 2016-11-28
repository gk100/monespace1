package com.monespace.DAO;

import java.util.List;

import com.monespace.model.Property;

public interface PropertyDAO {

	public void createPoperty(Property property);
	
	public List<Property> listproperty();
	
	public String stringProperty ();
	
	public Property getPropertyById (int propertyId);
	
	public void deleteProperty (int propertyId);
	
	public void updtePropertyPlus(int propertyId);
	
	public void updatePropertyMinus(int propertyId);
}
