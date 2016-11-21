package com.monespace.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;



@Entity
public class UserDetail implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Expose
	private int userId;
	@Expose
	private String firstName;
	@Expose
	private String lastName;
	@Expose
	private String phoneNumber;
	@Expose
	private String mobileNumber;
	@Expose
	private String emailId;
	@Expose
	private String username;
	@Expose
	private String password;
	@Expose
	private int shortListId;

	@OneToOne
	@JoinColumn(name="userId", nullable=false, insertable=false, updatable=false)
	private User user;
	

	@OneToOne
	@JoinColumn(name="shortListId", nullable=false, insertable=false, updatable=false)
	private ShortList shortList;
	
	@OneToOne
	@JoinColumn(name="userBillingId")
	private UserBillingAddress userBillingAddress;
	
	@OneToOne
	@JoinColumn(name="permanentId")
	private UserPermanentAddress userPermanentAddress;
	
	@OneToOne
	@JoinColumn(name="roleId")
	private  UserRole userRole;
	
	@OneToOne
	@JoinColumn(name="dealerId")
	private Dealer dealer;

	public Dealer getDealer() {
		return dealer;
	}

	public void setDealer(Dealer dealer) {
		this.dealer = dealer;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getShortListId() {
		return shortListId;
	}

	public void setShortListId(int shortListId) {
		this.shortListId = shortListId;
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserBillingAddress getUserBillingAddress() {
		return userBillingAddress;
	}

	public void setUserBillingAddress(UserBillingAddress userBillingAddress) {
		this.userBillingAddress = userBillingAddress;
	}

	public UserPermanentAddress getUserPermanentAddress() {
		return userPermanentAddress;
	}

	public void setUserPermanentAddress(UserPermanentAddress userPermanentAddress) {
		this.userPermanentAddress = userPermanentAddress;
	}

	public ShortList getShortList() {
		return shortList;
	}

	public void setShortList(ShortList shortList) {
		this.shortList = shortList;
	}

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

		
}
