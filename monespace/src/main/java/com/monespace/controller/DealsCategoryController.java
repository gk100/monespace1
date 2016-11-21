package com.monespace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monespace.Service.DealsCategoryService;
import com.monespace.model.DealsCategory;
import org.springframework.ui.Model;

@Controller
public class DealsCategoryController {

	@Autowired
	private DealsCategoryService dealsCategoryService;

	@RequestMapping(value="/add/category", method= RequestMethod.POST)
	public String addDealsCategories(@ModelAttribute("dealsCategory") DealsCategory dealsCategory) {
		this.dealsCategoryService.createDealsCategory(dealsCategory);
		return "redirect:/category";
	}

	@RequestMapping("/category")
	public String getCategory(Model model)
	{
		model.addAttribute("dealsCategory", new DealsCategory());
		model.addAttribute("listDealsCategory", dealsCategoryService.getCategories());
		model.addAttribute("listDealsCategories", dealsCategoryService.listDealsCategories());
		return "category";
	}
	
	@RequestMapping(value= "/editCategory-{dealsCategoryId}", method= RequestMethod.GET)
	public String editCategory(@PathVariable("dealsCategoryId") int dealsCategoryId, Model model) {
		model.addAttribute("dealsCategory", dealsCategoryService.getById(dealsCategoryId));
		model.addAttribute("listDealsCategory", dealsCategoryService.getCategories());
		return "category";
	}
	
	@RequestMapping(value= "/deleteCategory-{dealsCategoryId}", method= RequestMethod.GET)
	public String delete(@PathVariable("dealsCategoryId") int dealsCategoryId) {
		dealsCategoryService.deleteCategory(dealsCategoryId);
		return "redirect:/category";
	}
}
