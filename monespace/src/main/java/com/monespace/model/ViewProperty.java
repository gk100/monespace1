package com.monespace.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@Entity
public class ViewProperty {

	@Id
	@Expose
	private int propertyId;
	@Expose
	private String propertyName;
	@Expose
	private String dealsCategoryName;
	@Expose
	private String dealsCategoryDescription;
	@Expose
	private String propertyType;
	@Expose
	private String propertyOverview1;
	@Expose
	private String propertyOverview2;
	@Expose
	private String propertyDescription;
	@Expose
	private String propertyPrice;
	@Expose
	private String propertyDiscount;
	@Expose
	private String propertyLocationAdvantage1;
	@Expose
	private String propertyLocationAdvantage2;
	@Expose
	private String propertyAmenities1;
	@Expose
	private String propertyAmenities2;
	@Expose
	private String propertySpecifications1;
	@Expose
	private String propertySpecifications2;
	@Expose
	private String propertySpecifications3;
	@Expose
	private String dealerName;
	@Expose
	private String dealerOrganisation;
	@Expose
	private String dealerContactNumber;
	@Expose
	private String dealerMobileNumber;
	@Expose
	private String dealerEmailId;
	@Expose
	private String propertyAdvertiser1;
	@Expose
	private String propertyAdvertiser2;
	@Expose
	private String propertyContactDetails1;
	@Expose
	private String propertyContactDetails2;
	
	public int getPropertyId() {
		return propertyId;
	}
	
	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}
	
	public String getPropertyName() {
		return propertyName;
	}
	
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	
	public String getDealsCategoryName() {
		return dealsCategoryName;
	}
	
	public void setDealsCategoryName(String dealsCategoryName) {
		this.dealsCategoryName = dealsCategoryName;
	}
	
	public String getDealsCategoryDescription() {
		return dealsCategoryDescription;
	}
	
	public void setDealsCategoryDescription(String dealsCategoryDescription) {
		this.dealsCategoryDescription = dealsCategoryDescription;
	}
	
	public String getPropertyType() {
		return propertyType;
	}
	
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	
	public String getPropertyOverview1() {
		return propertyOverview1;
	}
	
	public void setPropertyOverview1(String propertyOverview1) {
		this.propertyOverview1 = propertyOverview1;
	}
	
	public String getPropertyOverview2() {
		return propertyOverview2;
	}
	
	public void setPropertyOverview2(String propertyOverview2) {
		this.propertyOverview2 = propertyOverview2;
	}
	
	public String getPropertyDescription() {
		return propertyDescription;
	}
	
	public void setPropertyDescription(String propertyDescription) {
		this.propertyDescription = propertyDescription;
	}
	
	public String getPropertyPrice() {
		return propertyPrice;
	}
	
	public void setPropertyPrice(String propertyPrice) {
		this.propertyPrice = propertyPrice;
	}
	
	public String getPropertyDiscount() {
		return propertyDiscount;
	}
	
	public void setPropertyDiscount(String propertyDiscount) {
		this.propertyDiscount = propertyDiscount;
	}
	
	public String getPropertyLocationAdvantage1() {
		return propertyLocationAdvantage1;
	}
	
	public void setPropertyLocationAdvantage1(String propertyLocationAdvantage1) {
		this.propertyLocationAdvantage1 = propertyLocationAdvantage1;
	}
	
	public String getPropertyLocationAdvantage2() {
		return propertyLocationAdvantage2;
	}
	
	public void setPropertyLocationAdvantage2(String propertyLocationAdvantage2) {
		this.propertyLocationAdvantage2 = propertyLocationAdvantage2;
	}
	
	public String getPropertyAmenities1() {
		return propertyAmenities1;
	}
	
	public void setPropertyAmenities1(String propertyAmenities1) {
		this.propertyAmenities1 = propertyAmenities1;
	}
	
	public String getPropertyAmenities2() {
		return propertyAmenities2;
	}
	
	public void setPropertyAmenities2(String propertyAmenities2) {
		this.propertyAmenities2 = propertyAmenities2;
	}
	
	public String getPropertySpecifications1() {
		return propertySpecifications1;
	}
	
	public void setPropertySpecifications1(String propertySpecifications1) {
		this.propertySpecifications1 = propertySpecifications1;
	}
	
	public String getPropertySpecifications2() {
		return propertySpecifications2;
	}
	
	public void setPropertySpecifications2(String propertySpecifications2) {
		this.propertySpecifications2 = propertySpecifications2;
	}
	
	public String getPropertySpecifications3() {
		return propertySpecifications3;
	}
	
	public void setPropertySpecifications3(String propertySpecifications3) {
		this.propertySpecifications3 = propertySpecifications3;
	}
	
	public String getDealerName() {
		return dealerName;
	}
	
	public void setDealerName(String dealerName) {
		this.dealerName = dealerName;
	}
	
	public String getDealerOrganisation() {
		return dealerOrganisation;
	}
	
	public void setDealerOrganisation(String dealerOrganisation) {
		this.dealerOrganisation = dealerOrganisation;
	}
	
	public String getDealerContactNumber() {
		return dealerContactNumber;
	}
	
	public void setDealerContactNumber(String dealerContactNumber) {
		this.dealerContactNumber = dealerContactNumber;
	}
	
	public String getDealerMobileNumber() {
		return dealerMobileNumber;
	}
	
	public void setDealerMobileNumber(String dealerMobileNumber) {
		this.dealerMobileNumber = dealerMobileNumber;
	}
	
	public String getDealerEmailId() {
		return dealerEmailId;
	}
	
	public void setDealerEmailId(String dealerEmailId) {
		this.dealerEmailId = dealerEmailId;
	}
	
	public String getPropertyAdvertiser1() {
		return propertyAdvertiser1;
	}
	
	public void setPropertyAdvertiser1(String propertyAdvertiser1) {
		this.propertyAdvertiser1 = propertyAdvertiser1;
	}
	
	public String getPropertyAdvertiser2() {
		return propertyAdvertiser2;
	}
	
	public void setPropertyAdvertiser2(String propertyAdvertiser2) {
		this.propertyAdvertiser2 = propertyAdvertiser2;
	}
	
	public String getPropertyContactDetails1() {
		return propertyContactDetails1;
	}
	
	public void setPropertyContactDetails1(String propertyContactDetails1) {
		this.propertyContactDetails1 = propertyContactDetails1;
	}
	
	public String getPropertyContactDetails2() {
		return propertyContactDetails2;
	}
	
	public void setPropertyContactDetails2(String propertyContactDetails2) {
		this.propertyContactDetails2 = propertyContactDetails2;
	}
	
}

