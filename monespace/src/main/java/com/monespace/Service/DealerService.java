package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.DealerDAOImpl;
import com.monespace.model.Dealer;

@Service
public class DealerService {

	@Autowired
	private DealerDAOImpl dealerDAOImpl;
	
	@Transactional
	public void createDealer(Dealer dealer) {
		dealerDAOImpl.createDealer(dealer);
	}
	
	@Transactional
	public List<Dealer> listDealer() {
		return dealerDAOImpl.listDealer();
	}
	
	@Transactional
	public Dealer getIdFromName(String dealerName) {
		return dealerDAOImpl.getIdFromName(dealerName);
	}
	
	@Transactional
	public String getDealerJson() {
		return dealerDAOImpl.getDealerJson();
	}
	
	@Transactional
	public void deleteDealer(int dealerId) {
		dealerDAOImpl.deleteDealer(dealerId);
	}
	
	@Transactional
	public Dealer getbyId(int dealerId) {
		return dealerDAOImpl.getbyId(dealerId);
	}
}
