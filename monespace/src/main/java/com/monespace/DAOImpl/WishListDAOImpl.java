package com.monespace.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monespace.DAO.WishListDAO;
import com.monespace.model.WishList;

@Repository
public class WishListDAOImpl implements WishListDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void createWishList(WishList wishList) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
	}

	@SuppressWarnings("unchecked")
	public List<WishList> listWishList(int userId) {
		// TODO Auto-generated method stub
		String query= "From WishList where userId="+userId;
		List<WishList> wishListedList=sessionFactory.getCurrentSession().createQuery(query).getResultList();
		return wishListedList;
	}

	public void deleteWishList(int wishListId) {
		// TODO Auto-generated method stub
		WishList wishListToDelete = new WishList();
		wishListToDelete.setWishListId(wishListId);
		sessionFactory.getCurrentSession().delete(wishListToDelete);
	}

}
