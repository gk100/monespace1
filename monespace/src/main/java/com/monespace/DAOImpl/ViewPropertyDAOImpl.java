package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.DAO.ViewPropertyDAO;
import com.monespace.model.ViewProperty;

@Repository
public class ViewPropertyDAOImpl implements ViewPropertyDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public ViewProperty getViewPropertyById(int propertyId) {
		// TODO Auto-generated method stub
		String vquery="From ViewProperty where propertyId="+propertyId;
		List<ViewProperty> viewProperty = sessionFactory.getCurrentSession().createQuery(vquery).getResultList();
		if (viewProperty !=null && !viewProperty.isEmpty()) {
			return viewProperty.get(0);
		}else{
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<ViewProperty> listViewProperty() {
		// TODO Auto-generated method stub
		List<ViewProperty> listViewProperty = sessionFactory.getCurrentSession().createQuery("from ViewProperty").getResultList();
		return listViewProperty;
	}

	@SuppressWarnings("unchecked")
	public String stringViewProperty() {
		// TODO Auto-generated method stub
		Gson gson= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<ViewProperty> listViewProperty = sessionFactory.getCurrentSession().createQuery("from ViewProperty").getResultList();
		String viewPropertyjson=gson.toJson(listViewProperty);
		return viewPropertyjson;
	}
	
}
