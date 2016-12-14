package com.monespace.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;

import com.monespace.Service.DealsCategoryService;
import com.monespace.Service.PropertyDealsSubCategoryService;
import com.monespace.model.DealsCategory;
import com.monespace.model.PropertyDealsSubCategory;


@Controller
public class PropertyDealsSubCategoryController {

	@Autowired
	private PropertyDealsSubCategoryService propertyDealsSubCategoryService;
	@Autowired
	private DealsCategoryService dealsCategoryService;
	
	@RequestMapping("/subCategories")
	public String propertyDealsSubCategory(Model model) {
		model.addAttribute("propertyDealsSubCategory", new PropertyDealsSubCategory());
		model.addAttribute("listSubCategory", this.propertyDealsSubCategoryService.propertyDealsSubCategoryListJson());
		model.addAttribute("listCategory", this.dealsCategoryService.listDealsCategories());
		model.addAttribute("listDealsCategories", this.propertyDealsSubCategoryService.propertyDealsSubCategoryList());
		return "subCategories";
	}
	
	@RequestMapping("/addSubCategories")
	public String addPropertyDealsSubCategory(@Valid @ModelAttribute("propertyDealsSubCategory")PropertyDealsSubCategory propertyDealsSubCategory, BindingResult result, Model model){
		DealsCategory dealsCategory= dealsCategoryService.getIdFromName(propertyDealsSubCategory.getDealsCategory().getdealsCategoryName());
		dealsCategoryService.createDealsCategory(dealsCategory);
		propertyDealsSubCategory.setDealsCategory(dealsCategory);
		propertyDealsSubCategory.setDealsCategoryId(dealsCategory.getdealsCategoryId());
		if (result.hasErrors()) {
			model.addAttribute("listSubCategory", this.propertyDealsSubCategoryService.propertyDealsSubCategoryListJson());
			return "subCategories";
		}
		else {
		this.propertyDealsSubCategoryService.createPropertyDealsSubCategory(propertyDealsSubCategory);
		return "redirect:/subCategories";
		}
	}
	
	@RequestMapping(value= "/editSubCategory-{propertyDealsSubCategoryId}", method= RequestMethod.GET)
	public String editSubCategory(@PathVariable("propertyDealsSubCategoryId") int propertyDealsSubCategoryId, Model model) {
		
		model.addAttribute("listCategory", this.dealsCategoryService.listDealsCategories());
		model.addAttribute("propertyDealsSubCategoryList", this.propertyDealsSubCategoryService.propertyDealsSubCategoryList());
		model.addAttribute("propertyDealsSubCategory", propertyDealsSubCategoryService.getbyId(propertyDealsSubCategoryId));
		model.addAttribute("listSubCategory", this.propertyDealsSubCategoryService.propertyDealsSubCategoryListJson());
		model.addAttribute("propertyDealsSubCategoryListJson", this.propertyDealsSubCategoryService.propertyDealsSubCategoryListJson());
		return "subCategories";
	}
	
	@RequestMapping(value="/deleteSubCategory-{propertyDealsSubCategoryId}", method=RequestMethod.GET)
	public String deleteSubCategory(@PathVariable("propertyDealsSubCategoryId") int propertyDealsSubCategoryId) {
		propertyDealsSubCategoryService.deleteSubCategory(propertyDealsSubCategoryId);
		return "redirect:/subCategories";
	}
}