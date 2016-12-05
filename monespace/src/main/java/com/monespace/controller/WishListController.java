package com.monespace.controller;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.monespace.Service.PropertyService;
import com.monespace.Service.UserService;
import com.monespace.Service.WishListService;
import com.monespace.model.WishList;

@Controller
public class WishListController {

	@Autowired
	private WishListService wishListService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PropertyService propertyService;
	
	@RequestMapping("/addToWishList-{propertyId}")
	public String addToWishList (@ModelAttribute("wishList")WishList wishList,@PathVariable("propertyId")int propertyId, Model model, HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		wishList.setUserId(userId);
		wishList.setShortListId(userId);
		wishList.setFlag(false);
		wishList.setPropertyId(propertyId);
		session.setAttribute("propertyId",propertyId);
		propertyId=(Integer)session.getAttribute("propertyId");
		wishList.setPropertyName(propertyService.getPropertyById(propertyId).getPropertyName());
		wishList.setPropertyPrice(propertyService.getPropertyById(propertyId).getPropertyPrice());
		wishList.setRate(propertyService.getPropertyById(propertyId).getPropertyPrice());
		wishList.setPropertyDescription(propertyService.getPropertyById(propertyId).getPropertyDescription());
		wishList.setQuantity(1);
		wishListService.createWishList(wishList);
		session.setAttribute("wishListId", wishList.getUserId());
		return "redirect:/wishList-"+wishList.getUserId();
//		return "redirect:/wishList-"+wishList.getWishListId();
	}
	
//	@RequestMapping("/wishList-{wishListId}")
	@RequestMapping("/wishList-{userId}")
	public String wishListProperty(Model model,@PathVariable("userId") int userId) {
		List<WishList> wl= wishListService.listWishList(userId);
		Gson gson= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json= gson.toJson(wl);
		model.addAttribute("wilshListedList", json);
		return "wishListedProperty";
	}
	
	@RequestMapping(value="/deleteWishListedProperty-{wishListId}",method=RequestMethod.GET)
	public String deleteWishListedProperty(@PathVariable("wishListId") int wishListId) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		wishListService.deleteWishList(wishListId);
		return "redirect:/wishList-"+userId;
	}
	
	@RequestMapping("/wishList")
	public String showWishList(Model model, HttpSession session) {
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId = userService.getUserDetailByName(user).getUserId();
		List<WishList> wl= wishListService.listWishList(userId);
		Gson gson= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json= gson.toJson(wl);
		model.addAttribute("wilshListedList", json);
		return "wishListedProperty";
	}
}
