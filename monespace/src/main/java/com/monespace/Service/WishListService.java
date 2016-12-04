package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.WishListDAOImpl;
import com.monespace.model.WishList;

@Service
public class WishListService {
	
	@Autowired
	private WishListDAOImpl wishListDAOImpl;

	@Transactional
	public void createWishList(WishList wishList) {
		wishListDAOImpl.createWishList(wishList);
	}
	
	@Transactional
	public List<WishList> listWishList(int userId) {
		return wishListDAOImpl.listWishList(userId);
	}
	
	@Transactional
	public void deleteWishList(int wishListId) {
		wishListDAOImpl.deleteWishList(wishListId);
	}
}
