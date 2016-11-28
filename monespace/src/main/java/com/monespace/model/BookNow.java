package com.monespace.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class BookNow implements Serializable {

	private ShortListedProperty shortListedProperty;
	private UserPermanentAddress userPermanentAddress;
	private UserBillingAddress userBillingAddress;
	private UserDetail userDetail;
	
	public ShortListedProperty getShortListedProperty() {
		return shortListedProperty;
	}
	public void setShortListedProperty(ShortListedProperty shortListedProperty) {
		this.shortListedProperty = shortListedProperty;
	}
	public UserPermanentAddress getUserPermanentAddress() {
		return userPermanentAddress;
	}
	public void setUserPermanentAddress(UserPermanentAddress userPermanentAddress) {
		this.userPermanentAddress = userPermanentAddress;
	}
	public UserBillingAddress getUserBillingAddress() {
		return userBillingAddress;
	}
	public void setUserBillingAddress(UserBillingAddress userBillingAddress) {
		this.userBillingAddress = userBillingAddress;
	}
	public UserDetail getUserDetail() {
		return userDetail;
	}
	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

}
