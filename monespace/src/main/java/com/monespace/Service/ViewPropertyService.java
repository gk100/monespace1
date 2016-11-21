package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.ViewPropertyDAOImpl;
import com.monespace.model.ViewProperty;

@Service
public class ViewPropertyService {

	@Autowired
	private ViewPropertyDAOImpl viewPropertyDAOImpl;
	
	@Transactional
	public ViewProperty getViewPropertyById (int propertyId) {
		return viewPropertyDAOImpl.getViewPropertyById(propertyId);
	}
	
	@Transactional
	public List<ViewProperty> listViewProperty() {
		return viewPropertyDAOImpl.listViewProperty();
	}
	
	@Transactional
	public String stringViewProperty() {
		return viewPropertyDAOImpl.stringViewProperty();
	}
}
