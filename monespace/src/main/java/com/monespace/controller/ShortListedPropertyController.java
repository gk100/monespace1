package com.monespace.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monespace.Service.PropertyService;
import com.monespace.Service.ShortListedPropertyService;
import com.monespace.Service.UserService;

@Controller
public class ShortListedPropertyController {

	@Autowired
	private ShortListedPropertyService shortListedPropertyService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PropertyService propertyService;
	
	
//		@RequestMapping(value="/deleteShortListedProperty-{shortListedPropertyId}", method=RequestMethod.GET)
//		public String deleteShortListedList(@PathVariable("shortListedPropertyId") int shortListedPropertyId) {
//			shortListedPropertyService.deleteShortListedList(shortListedPropertyId);
//			return "redirect:/";
//		}
		
	public String deleteShortListedProperty(HttpSession session) {
		int shortListedPropertyId = (Integer) session.getAttribute("shortListedPropertyId");
		//propertyService.updtePropertyPlus(propertyId);
		shortListedPropertyService.deleteShortListedList(shortListedPropertyId);
		return "redirect:/";
	}
		
		
		
}
