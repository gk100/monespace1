package com.monespace.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class DealsCategory implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Expose
	private int dealsCategoryId;
	@Expose
	@NotEmpty(message="This Field Should not be Empty")
	private String dealsCategoryName;
	@Expose
	@NotEmpty(message="Description Field Should not be Empty")
	private String dealsCategoryDescription;

	//for dynamic display
	@OneToMany(fetch= FetchType.EAGER,mappedBy="dealsCategory", cascade=CascadeType.ALL)
	private Set<PropertyDealsSubCategory> propertyDealsSubCategory;

	public int getdealsCategoryId() {
		return dealsCategoryId;
	}

	public void setdealsCategoryId(int dealsCategoryId) {
		this.dealsCategoryId = dealsCategoryId;
	}

	public String getdealsCategoryName() {
		return dealsCategoryName;
	}

	public void setdealsCategoryName(String dealsCategoryName) {
		this.dealsCategoryName = dealsCategoryName;
	}

	public String getDealsCategoryDescription() {
		return dealsCategoryDescription;
	}

	public void setDealsCategoryDescription(String dealsCategoryDescription) {
		this.dealsCategoryDescription = dealsCategoryDescription;
	}

	public Set<PropertyDealsSubCategory> getPropertyDealsSubCategory() {
		return propertyDealsSubCategory;
	}

	public void setPropertyDealsSubCategory(Set<PropertyDealsSubCategory> propertyDealsSubCategory) {
		this.propertyDealsSubCategory = propertyDealsSubCategory;
	}
	
//	public int getdealsCategoryId() {
//		return dealsCategoryId;
//	}
//
//	public void setdealsCategoryId(int dealsCategoryId) {
//		this.dealsCategoryId = dealsCategoryId;
//	}
//
//	public String getdealsCategoryName() {
//		return dealsCategoryName;
//	}
//
//	public void setdealsCategoryName(String dealsCategoryname) {
//		this.dealsCategoryName = dealsCategoryname;
//	}
//
//	public String getdealsCategoryDescription() {
//		return dealsCategoryDescription;
//	}
//
//	public void setdealsCategoryDescription(String dealsCategoryDescription) {
//		this.dealsCategoryDescription = dealsCategoryDescription;
//	}
}
