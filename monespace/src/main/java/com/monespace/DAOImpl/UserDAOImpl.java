package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.DAO.UserDAO;
import com.monespace.model.Dealer;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;
import com.monespace.model.UserRole;
import com.monespace.model.User;
import com.monespace.model.ShortList;


@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;


	public void saveOrUpdateUser (UserDetail userDetail) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		User user= new User();
		user.setUsername(userDetail.getUsername());
		user.setPassword(userDetail.getPassword());
		user.setEnabled(true);
		user.setUserId(userDetail.getUserId());
		
		session.saveOrUpdate(user);
		
		ShortList shortList = new ShortList();
		shortList.setShortListId(user.getUserId());
		shortList.setUserId(user.getUserId());
		session.saveOrUpdate(shortList);
		
		userDetail.setUserId(user.getUserId());
		userDetail.setShortListId(shortList.getShortListId());
		
		session.saveOrUpdate(userDetail);
		session.flush();
	}

	@SuppressWarnings("unchecked")
	public List<UserDetail> listDetail() {
		// TODO Auto-generated method stub
		List<UserDetail> userDetailList=sessionFactory.getCurrentSession().createQuery("from UserDetail").getResultList();
		return userDetailList;
	}

	@SuppressWarnings("unchecked")
	public String userListJson() {
		// TODO Auto-generated method stub
		Gson json = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<User> userList= sessionFactory.getCurrentSession().createQuery("From User").getResultList();
		String userJson= json.toJson(userList);
		return userJson;
	}

//	public void saveOrUpdateUser(int userId) {
//		// TODO Auto-generated method stub
//		sessionFactory.getCurrentSession().saveOrUpdate(arg0);
//	}

	public void saveOrUpdateUserPermanentAddress(UserPermanentAddress userPermanentAddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(userPermanentAddress);
	}

	public void saveOrUpdateUserBillingAddress(UserBillingAddress userBillingAddress) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(userBillingAddress);
	}

	public void saveOrUpdateUserRole(UserRole userRole) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(userRole);
	}

	public void saveOrUpdateDealer(Dealer dealer) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(dealer);
	}

	@SuppressWarnings ("unchecked")
	public UserDetail getUserDetailByName(String username) {
		// TODO Auto-generated method stub
		String query = "from UserDetail where username='" + username + "'";
		List<UserDetail> userDetailList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		return userDetailList.get(0);
	}

	@SuppressWarnings("unchecked")
	public UserPermanentAddress getPermanentAddressById(int userId) {
		// TODO Auto-generated method stub
		String qry = "from UserPermanentAddress where UserDetail_UserId="+userId;
		List<UserPermanentAddress> list=sessionFactory.getCurrentSession().createQuery(qry).getResultList();
		if (list!=null && !list.isEmpty()){
			return list.get(0);
		} else {
			return null;
		}
		
	}

	@SuppressWarnings("unchecked")
	public UserBillingAddress getBillingAddressById(int userId) {
		// TODO Auto-generated method stub
		String qery="from UserBillingAddress where UserDetail_UserId="+userId;
		List<UserBillingAddress> list=sessionFactory.getCurrentSession().createQuery(qery).getResultList();
		if (list!=null && !list.isEmpty()) {
			return list.get(0);
		} else {
			return null;
		}
		
	}
		
}
