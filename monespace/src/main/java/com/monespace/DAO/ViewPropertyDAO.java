package com.monespace.DAO;

import java.util.List;

import com.monespace.model.ViewProperty;

public interface ViewPropertyDAO {

	public ViewProperty getViewPropertyById (int propertyId);
	public List <ViewProperty> listViewProperty();
	public String stringViewProperty();
}
