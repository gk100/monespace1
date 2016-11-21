package com.monespace.DAO;

import com.monespace.model.ShortListedProperty;

public interface ShortListedPropertyDAO {

	public void createPropertyShortList (ShortListedProperty shortListedProperty);
//public void addToShortList(ShortListedProperty shortListedProperty);
	public ShortListedProperty shortListedPropertyList (int shortListedPropertyId);
//	public List<ShortListedProperty> shortListedList();
//	public String ShortListedPropertyList();
	public void deleteShortListedList(int shortListedPropertyId); //may be need to delete
	public void updateShortListedPropertyFlag (int shortListedProperty);
}
