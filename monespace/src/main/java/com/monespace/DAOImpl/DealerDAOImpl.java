package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.DAO.DealerDAO;
import com.monespace.model.Dealer;

@Repository
public class DealerDAOImpl implements DealerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void createDealer(Dealer dealer) {
		sessionFactory.getCurrentSession().saveOrUpdate(dealer);
	}
	
	@SuppressWarnings("unchecked")
	public List<Dealer> listDealer() {
		// TODO Auto-generated method stub
		List<Dealer> listDealer = this.sessionFactory.getCurrentSession().createQuery("From Dealer").getResultList(); 
		return listDealer;
	}
	@SuppressWarnings("unchecked")
	public Dealer getIdFromName(String dealerName) {
		// TODO Auto-generated method stub
		String fetchquery= "from Dealer where dealerName='" + dealerName + "'";
		List<Dealer> dealerList=this.sessionFactory.getCurrentSession().createQuery(fetchquery).getResultList();
		if (dealerList != null && !dealerList.isEmpty()) {
			return dealerList.get(0);
		}else {
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public String getDealerJson() {
		// TODO Auto-generated method stub
		List<Dealer> dealerListJson= this.sessionFactory.getCurrentSession().createQuery("From Dealer").getResultList();
		Gson json = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String dealer= json.toJson(dealerListJson);
		return dealer;
	}
	
	public void deleteDealer(int dealerId) {
		// TODO Auto-generated method stub
		Dealer deleteDealer= new Dealer();
		deleteDealer.setDealerId(dealerId);
		sessionFactory.getCurrentSession().delete(deleteDealer);
	}
	
	@SuppressWarnings("unchecked")
	public Dealer getbyId(int dealerId) {
		// TODO Auto-generated method stub
		String editquery= "from Dealer where dealerId=" + dealerId;
		List<Dealer> editDealerList=this.sessionFactory.getCurrentSession().createQuery(editquery).getResultList();
		if (editDealerList !=null && !editDealerList.isEmpty()) {
			return editDealerList.get(0);
		} else {
			return null;
		}
	}

}
