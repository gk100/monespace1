package com.monespace.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.Service.PropertyService;
import com.monespace.Service.ShortListedPropertyService;
import com.monespace.Service.UserService;
import com.monespace.model.ShortListedProperty;

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
		
	@RequestMapping(value="/deleteShortListedProperty")
	public String deleteShortListedProperty(HttpSession session) {
		int propertyId = (Integer) session.getAttribute("propertyId");
		propertyService.updtePropertyPlus(propertyId);
		shortListedPropertyService.deleteShortListedList((Integer) session.getAttribute("shortListedPropertyId"));
		return "redirect:/home";
	}
	
	@RequestMapping(value="/updateShortListFlag")
	public String updateShortListedPropertyFlag (HttpSession session) {
		shortListedPropertyService.updateShortListedPropertyFlag((Integer) session.getAttribute("shortListedPropertyId"));
		return "redirect:/home";
	}
	
	@RequestMapping(value="/deleteShortListedProperty-{propertyId}",method=RequestMethod.GET)
	public String deleteShortListedProperty(@PathVariable("propertyId") int propertyId, HttpSession session) {
		propertyId=(Integer) session.getAttribute("propertyId");
		propertyService.updtePropertyPlus(propertyId);
		shortListedPropertyService.deleteShortListedList((Integer) session.getAttribute("shortListedPropertyId"));
		return "redirect:/home";
	}
	
	@RequestMapping("/shortListProperty-{propertyId}")
	public String addToBookNow(@ModelAttribute("shortListedProperty") ShortListedProperty shortListedProperty, @PathVariable("propertyId") int propertyId, Model model, HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		shortListedProperty.setUserId(userId);
		shortListedProperty.setShortListId(userId);
		shortListedProperty.setFlag(false);
		shortListedProperty.setPropertyId(propertyId);
		session.setAttribute("propertyId", propertyId);
		propertyId=(Integer) session.getAttribute("propertyId");
		shortListedProperty.setPropertyName(propertyService.getPropertyById(propertyId).getPropertyName());
		shortListedProperty.setPropertyPrice(propertyService.getPropertyById(propertyId).getPropertyPrice());
		shortListedProperty.setRate(propertyService.getPropertyById(propertyId).getPropertyPrice());
		shortListedProperty.setPropertyDescription(propertyService.getPropertyById(propertyId).getPropertyDescription());
		Date systemdate=new Date();
		shortListedProperty.setOrderDate(systemdate);
		shortListedProperty.setPropertyDiscount(propertyService.getPropertyById(propertyId).getPropertyDiscount());
		shortListedProperty.setQuantity(1);
		shortListedPropertyService.createPropertyShortList(shortListedProperty);
		propertyService.updatePropertyMinus(propertyId);
		session.setAttribute("shortListedPropertyId", shortListedProperty.getShortListedPropertyId());
		return "redirect:/shortListPropertyList-"+shortListedProperty.getShortListedPropertyId();
	}
	
	@RequestMapping("/shortListPropertyList-{shortListedPropertyId}")
	public String propertyListBuyNow(Model model, @PathVariable("shortListedPropertyId")int shortListedPropertyId) {
		ShortListedProperty sp= shortListedPropertyService.shortListedPropertyList(shortListedPropertyId);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json=gson.toJson(sp);
		model.addAttribute("shortListedPropertyList",json);
		return "shortListedProperty";
	}
	
	@RequestMapping("/checkout")
	public String getCheckOut(HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId= userService.getUserDetailByName(user).getUserId();
		session.setAttribute("userId", userId);
		return "redirect:/check?userId="+userId;
	}
}
