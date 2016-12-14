package com.monespace.controller;

import java.util.Date;
import java.util.List;

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
	
	/*********************************************** For Book Now *******************************************************************/
	@RequestMapping("/shortListProperty-{propertyId}")
	public String addToBookNow(@ModelAttribute("shortListedProperty") ShortListedProperty shortListedProperty, @PathVariable("propertyId") int propertyId, Model model, HttpSession session) {
		if (propertyService.getPropertyById(propertyId).getQuantity()<=0) {
			return "redirect:/home";
		}
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		shortListedProperty.setUserId(userId);
		shortListedProperty.setShortListId(userId);
		shortListedProperty.setFlag(false);
		shortListedProperty.setPropertyId(propertyId);
		
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
		session.setAttribute("propertyId"+shortListedProperty.getShortListedPropertyId(), shortListedProperty.getPropertyId());
		
		return "redirect:/shortListPropertyList-"+shortListedProperty.getShortListedPropertyId();
	}
	
	@RequestMapping("/shortListPropertyList-{shortListedPropertyId}")
	public String propertyListBookNow(Model model, @PathVariable("shortListedPropertyId")int shortListedPropertyId, HttpSession session) {
		session.setAttribute("checkoutbookNow", "bookNow");
		ShortListedProperty sp= shortListedPropertyService.shortListedPropertyList(shortListedPropertyId);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json=gson.toJson(sp);
		model.addAttribute("shortListedPropertyList",json);
		return "shortListedProperty";
	}
	
	@RequestMapping(value="/deleteShortListedProperty-{shortListedPropertyId}", method=RequestMethod.GET)
	public String deleteShortListedProperty(@PathVariable ("shortListedPropertyId") int shortListedPropertyId, HttpSession session) {
		int propertyId = (Integer) session.getAttribute("propertyId"+shortListedPropertyId);
		propertyService.updtePropertyPlus(propertyId);
		shortListedPropertyService.deleteShortListedList(shortListedPropertyId);
		return "redirect:/home";
	}
	
	/***************************************************To add Property to ShortList ***********************************************/
	
	@RequestMapping("/addShortList-{propertyId}")
	public String addToShortList(@ModelAttribute ("shortListedProperty") ShortListedProperty shortListedProperty,@PathVariable("propertyId") int propertyId, Model model, HttpSession session) {
		if (propertyService.getPropertyById(propertyId).getQuantity()<=0) {
			return "redirect:/home";
		}
		
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		shortListedProperty.setUserId(userId);
		shortListedProperty.setShortListId(userId);
		shortListedProperty.setFlag(false);
		shortListedProperty.setPropertyId(propertyId);
		
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
		session.setAttribute("propertyId"+shortListedProperty.getShortListedPropertyId(), shortListedProperty.getPropertyId());
		
		return "redirect:/listOfShortList";
	}
	
	@RequestMapping("/listOfShortList")
	public String ListOfShortList(Model model,HttpSession session) {
		session.setAttribute("checkoutbookNow", "listOfShortList");
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		List<ShortListedProperty> sp= shortListedPropertyService.listOfShortList(userId);
		session.setAttribute("listOfShortList", sp);
		for (ShortListedProperty k: sp) {
			session.setAttribute("propertyId"+k.getShortListedPropertyId(), k.getPropertyId());
		}
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json=gson.toJson(sp);
		model.addAttribute("listOfShortList", json);
		return "shortListedProperties";
	}
	
	@RequestMapping(value="/deleteOneShortListedProperty-{shortListedPropertyId}", method=RequestMethod.GET)
	public String deleteOneShortListedProperty(@PathVariable ("shortListedPropertyId") int shortListedPropertyId, HttpSession session) {
		int propertyId = (Integer) session.getAttribute("propertyId"+shortListedPropertyId);
		propertyService.updtePropertyPlus(propertyId);
		shortListedPropertyService.deleteShortListedList(shortListedPropertyId);
		return "redirect:/listOfShortList";
	}
	
	/****************************************************************************************************************************/
	
	@RequestMapping("/checkout")
	public String getCheckOut(HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId= userService.getUserDetailByName(user).getUserId();
		session.setAttribute("userId", userId);
		return "redirect:/check?userId="+userId;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/updateFlag")
	public String updateShortListFlag(HttpSession session) {
		List<ShortListedProperty> k = (List<ShortListedProperty>) session.getAttribute("listOfShortList");
		if (k== null || session.getAttribute("checkoutbookNow") == "bookNow") {
			shortListedPropertyService.updateShortListedPropertyFlag((Integer) session.getAttribute("shortListedPropertyId"));
		}
		else {
			for (ShortListedProperty p : k) {
				shortListedPropertyService.updateShortListedPropertyFlag(p.getShortListedPropertyId());
			}
		}
		return "redirect:/home";
	}
	
	@RequestMapping("/confirmedList")
	public String confirmedList(Model model, HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		List<ShortListedProperty> sp=shortListedPropertyService.confirmedList(userId);
		for (ShortListedProperty k: sp) {
			session.setAttribute("propertyId"+k.getShortListedPropertyId(), k.getPropertyId());
		}
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = gson.toJson(sp);
		model.addAttribute("confirmedList",json);
		return "confirmedDeals";
	}
}
