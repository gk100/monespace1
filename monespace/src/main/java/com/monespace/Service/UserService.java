package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.UserDAOImpl;
import com.monespace.model.Dealer;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;
import com.monespace.model.UserRole;


@Service
public class UserService {

	@Autowired
	private UserDAOImpl userDAOImpl;
	
	@Transactional
	public void saveOrUpdateUser (UserDetail userDetail) {
		userDAOImpl.saveOrUpdateUser(userDetail);
	}
	
	@Transactional
	public List<UserDetail> listDetail() {
		return userDAOImpl.listDetail();
	}
	
	@Transactional
	public String userListJson() {
		return userDAOImpl.userListJson();
	}
	
	@Transactional
	public void saveOrUpdateUserPermanentAddress(UserPermanentAddress userPermanentAddress) {
		userDAOImpl.saveOrUpdateUserPermanentAddress(userPermanentAddress);
	}
	
	@Transactional
	public void saveOrUpdateUserBillingAddress(UserBillingAddress userBillingAddress) {
		userDAOImpl.saveOrUpdateUserBillingAddress(userBillingAddress);
	}
	
	@Transactional
	public void saveOrUpdateUserRole(UserRole userRole) {
		userDAOImpl.saveOrUpdateUserRole(userRole);
	}
	
	@Transactional
	public void saveOrUpdateDealer(Dealer dealer) {
		userDAOImpl.saveOrUpdateDealer(dealer);
	}
}
