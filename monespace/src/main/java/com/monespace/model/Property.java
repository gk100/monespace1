
package com.monespace.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class Property implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int propertyId;
	@Expose
	@NotEmpty(message="Cannot be Empty")
	private String propertyName;
	@Expose
	private String propertyDescription;
	@Expose
	private int propertyDiscount;
	@Expose
	private int propertyPrice;	/*check if added in .jsp      int*/
	@Expose
	private int quantity;	/*check if added in .jsp      int*/

	@Expose
	private int propertyDealsSubCategoryId;
	@Expose
	private int dealerId;
	@Expose
	private int dealsCategoryId;
	
	
/**/	
	@Expose
	private String propertyOverview1;	/*check if added in .jsp*/
	@Expose
	private String propertyOverview2;	/*check if added in .jsp*/
	@Expose
	private String propertyLocationAdvantage1;	/*check if added in .jsp*/
	@Expose
	private String propertyLocationAdvantage2;	/*check if added in .jsp*/
	@Expose
	private String propertyAmenities1;	/*check if added in .jsp*/
	@Expose
	private String propertyAmenities2;	/*check if added in .jsp*/
	@Expose
	private String propertySpecifications1;	/*check if added in .jsp*/
	@Expose
	private String propertySpecifications2;		/*check if added in .jsp*/
	@Expose
	private String propertySpecifications3;		/*check if added in .jsp*/
	@Expose
	private String propertyAdvertiser1;	/*check if added in .jsp*/
	@Expose
	private String propertyAdvertiser2;		/*check if added in .jsp*/
	@Expose
	private String propertyContactDetails1;	/*check if added in .jsp*/
	@Expose
	private String propertyContactDetails2;	/*check if added in .jsp*/
/**/	
	@Transient
	@Expose
	private MultipartFile uploadImage;
	
	@ManyToOne
	@JoinColumn(name="dealerId", nullable=false, insertable=false, updatable=false)
	private Dealer dealer;
	
	@ManyToOne
	@JoinColumn(name="propertyDealsSubCategoryId", nullable=false, insertable=false, updatable=false)
	private PropertyDealsSubCategory propertyDealsSubCategory;
	
	@ManyToOne
	@JoinColumn(name="dealsCategoryId", nullable=false, insertable=false, updatable=false)
	private DealsCategory dealsCategory;

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

	public String getPropertyDescription() {
		return propertyDescription;
	}

	public void setPropertyDescription(String propertyDescription) {
		this.propertyDescription = propertyDescription;
	}

	public int getPropertyDealsSubCategoryId() {
		return propertyDealsSubCategoryId;
	}

	public void setPropertyDealsSubCategoryId(int propertyDealsSubCategoryId) {
		this.propertyDealsSubCategoryId = propertyDealsSubCategoryId;
	}

	public int getDealerId() {
		return dealerId;
	}

	public void setDealerId(int dealerId) {
		this.dealerId = dealerId;
	}

	public int getDealsCategoryId() {
		return dealsCategoryId;
	}

	public void setDealsCategoryId(int dealsCategoryId) {
		this.dealsCategoryId = dealsCategoryId;
	}

	public Dealer getDealer() {
		return dealer;
	}

	public void setDealer(Dealer dealer) {
		this.dealer = dealer;
	}

	public PropertyDealsSubCategory getPropertyDealsSubCategory() {
		return propertyDealsSubCategory;
	}

	public void setPropertyDealsSubCategory(PropertyDealsSubCategory propertyDealsSubCategory) {
		this.propertyDealsSubCategory = propertyDealsSubCategory;
	}

	public DealsCategory getDealsCategory() {
		return dealsCategory;
	}

	public void setDealsCategory(DealsCategory dealsCategory) {
		this.dealsCategory = dealsCategory;
	}

	public MultipartFile getUploadImage() {
		return uploadImage;
	}

	public void setUploadImage(MultipartFile uploadImage) {
		this.uploadImage = uploadImage;
	}

/*check if added in .jsp*/
	
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


/*check if added in .jsp*/
	
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
	
	public String getPropertyAdvertiser1() {
		return propertyAdvertiser1;
	}

	public void setPropertyAdvertiser1(String propertyAdvertiser1) {
		this.propertyAdvertiser1 = propertyAdvertiser1;
	}

	public String getPropertyContactDetails1() {
		return propertyContactDetails1;
	}

	public String getPropertyAdvertiser2() {
		return propertyAdvertiser2;
	}

	public void setPropertyAdvertiser2(String propertyAdvertiser2) {
		this.propertyAdvertiser2 = propertyAdvertiser2;
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
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
		
}
