package com.monespace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monespace.Service.DealsCategoryService;
import com.monespace.Service.PropertyDealsSubCategoryService;
import com.monespace.Service.UserService;
//import com.monespace.Service.ShortListedPropertyService;
import com.monespace.Service.ViewPropertyService;

@Controller
public class HomeController {

	@Autowired
	private DealsCategoryService dealsCategoryService;
	
	@Autowired
	private PropertyDealsSubCategoryService propertyDealsSubCategoryService;
	
	@Autowired
	private ViewPropertyService viewPropertyService;
	
	@Autowired
	private UserService userService;
	
//	@Autowired
//	private ShortListedPropertyService shortListedPropertyService;
	
	@RequestMapping("/home")
	public String Hompage(Model model) {
		
		model.addAttribute("listDealsCategory", dealsCategoryService.listDealsCategories());
		model.addAttribute("listDealsCategories", propertyDealsSubCategoryService.propertyDealsSubCategoryList());
		model.addAttribute("listViewproperty", viewPropertyService.stringViewProperty());
		model.addAttribute("userList",userService.userListJson());
//		model.addAttribute("ShortListedPropertyList");
		return "home";
	}
}
