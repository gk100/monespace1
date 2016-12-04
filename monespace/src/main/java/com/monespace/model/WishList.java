package com.monespace.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class WishList implements Serializable {

	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Expose
	@Id
	private int wishListId;
	@Expose
	private int userId;
	@Expose
	private int shortListId;
	@Expose
	private int propertyId;
	@Expose
	private String propertyName;
	@Expose
	private String propertyDescription;
	@Expose
	private int propertyDiscount;
	@Expose
	private int propertyPrice;
	@Expose
	private int rate;
	@Expose
	private int quantity;		
	@Expose
	private Boolean flag;
	
	@ManyToOne
	@JoinColumn(name="userId", nullable=false, insertable=false, updatable=false)
	private User user;
	
	@ManyToOne
	@JoinColumn(name="propertyId", nullable=false, insertable=false, updatable=false)
	private Property property;
	
	@ManyToOne
	@JoinColumn(name="shortListId", nullable=false, insertable=false, updatable=false)
	private ShortList shortList;
	
	public int getWishListId() {
		return wishListId;
	}
	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}
	public String getPropertyName() {
		return propertyName;
	}
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	public String getPropertyDescription() {
		return propertyDescription;
	}
	public void setPropertyDescription(String propertyDescription) {
		this.propertyDescription = propertyDescription;
	}
	public int getPropertyDiscount() {
		return propertyDiscount;
	}
	public void setPropertyDiscount(int propertyDiscount) {
		this.propertyDiscount = propertyDiscount;
	}
	public int getPropertyPrice() {
		return propertyPrice;
	}
	public void setPropertyPrice(int propertyPrice) {
		this.propertyPrice = propertyPrice;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Boolean getFlag() {
		return flag;
	}
	public void setFlag(Boolean flag) {
		this.flag = flag;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Property getProperty() {
		return property;
	}
	public void setProperty(Property property) {
		this.property = property;
	}
	public ShortList getShortList() {
		return shortList;
	}
	public void setShortList(ShortList shortList) {
		this.shortList = shortList;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getShortListId() {
		return shortListId;
	}
	public void setShortListId(int shortListId) {
		this.shortListId = shortListId;
	}
	public int getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}
	
}
