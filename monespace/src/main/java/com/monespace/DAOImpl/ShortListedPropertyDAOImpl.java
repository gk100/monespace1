package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monespace.DAO.ShortListedPropertyDAO;
import com.monespace.model.ShortListedProperty;



@Repository
public class ShortListedPropertyDAOImpl implements ShortListedPropertyDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void createPropertyShortList(ShortListedProperty shortListedProperty) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(shortListedProperty);
	}

	//public void addToShortList(ShortListedProperty shortListedProperty);
	
//	@SuppressWarnings("unchecked")
//	public List<ShortListedProperty> shortListedList() {
//		// TODO Auto-generated method stub
//		List<ShortListedProperty> shortListedList=sessionFactory.getCurrentSession().createQuery("From ShortListedProperty").getResultList();
//		return shortListedList;
//	}
	

//	@SuppressWarnings("unchecked")
//	public String ShortListedPropertyList() {
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
//		List<ShortListedProperty> shortListedList=sessionFactory.getCurrentSession().createQuery("From ShortListedProperty").getResultList();
//		String shortListedPropertyList = gson.toJson(shortListedList);
//		return shortListedPropertyList;
//	}

		//public String stringShortListedProperty();
		//public SaveOrUpdate (ShortListedProperty shortListedProperty);
		//public ShortListedPropert getshortListedPropertyId (int shortListeID)
	
@SuppressWarnings("unchecked")
public ShortListedProperty shortListedPropertyList(int shortListedPropertyId) {
		// TODO Auto-generated method stub
		String query="from ShortListedProperty Where shortListedPropertyId="+shortListedPropertyId;
		List<ShortListedProperty> shortListedList=sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if (shortListedList!=null && !shortListedList.isEmpty()) {
			return shortListedList.get(0);
		} else {
			return null;
		}		
	}
	
	public void deleteShortListedProperty(int propertyId) {
		// TODO Auto-generated method stub
		ShortListedProperty shortListedPropertyDelete= new ShortListedProperty();
		shortListedPropertyDelete.setShortListedPropertyId(propertyId);
		sessionFactory.getCurrentSession().delete(shortListedPropertyDelete);
	}

	public void updateShortListedPropertyFlag(int shortListedPropertyId) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery("update ShortListedProperty set flag=true where shortListedPropertyId="+shortListedPropertyId).executeUpdate();	
	}

	@SuppressWarnings("unchecked")
	public List<ShortListedProperty> listOfShortList(int userId) {
		// TODO Auto-generated method stub
		String query = "from ShortListedProperty where userId="+userId +" and flag = false";
		List<ShortListedProperty> shortlistedlist= sessionFactory.getCurrentSession().createQuery(query).getResultList();
		return shortlistedlist;
	}

	@SuppressWarnings("unchecked")
	public List<ShortListedProperty> confirmedList(int userId) {
		// TODO Auto-generated method stub
		String query = "from ShortListedProperty where userId="+userId +" and flag = true";
		List<ShortListedProperty> shortlistedlist = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		return shortlistedlist;
	}
	
	
}
