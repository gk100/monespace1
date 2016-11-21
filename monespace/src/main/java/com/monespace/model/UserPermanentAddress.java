package com.monespace.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class UserPermanentAddress implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int permanentId;
	@Expose
	private int houseNumber;
	@Expose
	private String houseName;
	@Expose
	private String streetName;
	@Expose
	private String area;
	@Expose
	private String city;
	@Expose
	private String state;
	@Expose
	private String pincode;
	
	@OneToOne
	private UserDetail userDetail;

	public int getPermanentId() {
		return permanentId;
	}

	public void setPermanentId(int permanentId) {
		this.permanentId = permanentId;
	}

	public int getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getHouseName() {
		return houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

}
