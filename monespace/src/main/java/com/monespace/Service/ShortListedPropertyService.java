package com.monespace.Service;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.ShortListedPropertyDAOImpl;
import com.monespace.model.ShortListedProperty;

@Service
public class ShortListedPropertyService {

	@Autowired
	private ShortListedPropertyDAOImpl shortListedPropertyDAOImpl;
	
	@Transactional
	public void createPropertyShortList(ShortListedProperty shortListedProperty) {
		shortListedPropertyDAOImpl.createPropertyShortList(shortListedProperty);
	}
	
	//public void addToShortList(ShortListedProperty shortListedProperty);
	
//	@Transactional
//	public List<ShortListedProperty> shortListedList() {
//		return shortListedPropertyDAOImpl.shortListedList();
//	}
//	
//	@Transactional
//	public String ShortListedPropertyList() {
//		return shortListedPropertyDAOImpl.ShortListedPropertyList();
//	}
	
			//public String stringShortListedProperty();
			//public SaveOrUpdate (ShortListedProperty shortListedProperty);
			//public ShortListedPropert getshortListedPropertyId (int shortListeID)
	
	@Transactional
	public ShortListedProperty shortListedPropertyList(int shortListedPropertyId) {
		return shortListedPropertyDAOImpl.shortListedPropertyList(shortListedPropertyId);
	}
	
	@Transactional
	public void deleteShortListedList(int shortListedPropertyId) {
		shortListedPropertyDAOImpl.deleteShortListedList(shortListedPropertyId);
	}
	
	@Transactional
	public void updateShortListedPropertyFlag(int shortListedPropertyId) {
		shortListedPropertyDAOImpl.updateShortListedPropertyFlag(shortListedPropertyId);
	}
}
