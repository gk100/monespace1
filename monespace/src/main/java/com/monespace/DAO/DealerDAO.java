package com.monespace.DAO;

import java.util.List;

import com.monespace.model.Dealer;

public interface DealerDAO {

	public void createDealer(Dealer dealer);
	
	public List<Dealer> listDealer();
	
	public Dealer getIdFromName (String dealerName);
	
	public String getDealerJson();
	
	public void deleteDealer(int dealerId);
	
	public Dealer getbyId (int dealerId);
}
