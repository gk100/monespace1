//Every Table or Category starts from Here

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
public class PropertyDealsSubCategory implements Serializable {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Expose
	private int propertyDealsSubCategoryId;
	@Expose
	private String propertyType;
	@Expose
	private int dealsCategoryId;
	@ManyToOne
	@JoinColumn(name="dealsCategoryId", nullable=false, insertable=false, updatable=false)
	private DealsCategory dealsCategory;
	
	public int getPropertyDealsSubCategoryId() {
		return propertyDealsSubCategoryId;
	}
	public void setPropertyDealsSubCategoryId(int propertyDealsSubCategoryId) {
		this.propertyDealsSubCategoryId = propertyDealsSubCategoryId;
	}
	public String getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	public int getDealsCategoryId() {
		return dealsCategoryId;
	}
	public void setDealsCategoryId(int dealsCategoryId) {
		this.dealsCategoryId = dealsCategoryId;
	}
	public DealsCategory getDealsCategory() {
		return dealsCategory;
	}
	public void setDealsCategory(DealsCategory dealsCategory) {
		this.dealsCategory = dealsCategory;
	}
	
}
