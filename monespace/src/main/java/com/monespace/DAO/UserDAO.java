package com.monespace.DAO;

import java.util.List;

import com.monespace.model.Dealer;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;
import com.monespace.model.UserRole;

public interface UserDAO {

	public void saveOrUpdateUser (UserDetail userDetail);
	public List<UserDetail> listDetail();
	public String userListJson();
//	public void UpdateUser (int userId);
	//public void enableDisableUser (int userId);
	public void saveOrUpdateUserPermanentAddress(UserPermanentAddress userPermanentAddress);
	public void saveOrUpdateUserBillingAddress(UserBillingAddress userBillingAddress);
	public void saveOrUpdateUserRole (UserRole userRole);
	public void saveOrUpdateDealer (Dealer dealer);
	
}
