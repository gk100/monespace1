package com.monespace.DAO;

import java.util.List;

import com.monespace.model.WishList;

public interface WishListDAO {

	public void createWishList (WishList wishList);
	public List<WishList> listWishList(int userId);
	public void deleteWishList(int wishListId);
}
