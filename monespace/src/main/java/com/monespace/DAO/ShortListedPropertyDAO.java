package com.monespace.DAO;

import com.monespace.model.ShortListedProperty;

public interface ShortListedPropertyDAO {

	public void createPropertyShortList (ShortListedProperty shortListedProperty);
	public ShortListedProperty shortListedPropertyList (int shortListedPropertyId);
	public void deleteShortListedProperty(int propertyId);
	public void updateShortListedPropertyFlag (int shortListedProperty);
}
