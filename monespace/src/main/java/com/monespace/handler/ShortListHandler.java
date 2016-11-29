package com.monespace.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.monespace.Service.UserService;
import com.monespace.model.BookNow;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;


@Component
public class ShortListHandler {

	@Autowired
	public UserService userService;
	
	@Autowired
	public UserPermanentAddress userPermanentAddress;
	
	@Autowired
	public UserBillingAddress userBillingAddress;
	
	public BookNow initFlow() {
		return new BookNow();
	}
	
	public String validatePermanentAddress(BookNow bookNow, UserPermanentAddress userPermanentAddress, MessageContext messageContext) {
		String status = "success";
		// ****************
		if (userPermanentAddress.getHouseName().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("houseName").defaultText("Please Fill the Details").build());
			status = "failure";
		}
		if (userPermanentAddress.getArea().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("area").defaultText("Please Fill the area Details").build());
			status ="failure";
		}
		if (userPermanentAddress.getCity().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		if (userPermanentAddress.getState().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		if (userPermanentAddress.getPincode().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("pinCode").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		return status;
	}
	
	public String validateBillingAddress(BookNow bookNow, UserBillingAddress userBillingAddress, MessageContext messageContext) {
		String status = "success";
		// ****************
		if (userBillingAddress.getHouseName().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("houseName").defaultText("Please Fill the Details").build());
			status = "failure";
		}
		if (userBillingAddress.getLocality().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("Locality").defaultText("Please Fill the area Details").build());
			status ="failure";
		}
		if (userBillingAddress.getCity().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		if (userBillingAddress.getState().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		if (userBillingAddress.getPincode().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("pinCode").defaultText("Please Fill the Details").build());
			status ="failure";
		}
		return status;
	}
	
	
	
	
	public String addPermanentAddress (BookNow bookNow, UserPermanentAddress userPermanentAddress) {
		this.userPermanentAddress.setHouseNumber(userPermanentAddress.getHouseNumber());
		this.userPermanentAddress.setHouseName(userPermanentAddress.getHouseName());
		this.userPermanentAddress.setStreetName(userPermanentAddress.getStreetName());
		this.userPermanentAddress.setArea(userPermanentAddress.getArea());
		this.userPermanentAddress.setCity(userPermanentAddress.getCity());
		this.userPermanentAddress.setState(userPermanentAddress.getState());
		this.userPermanentAddress.setPincode(userPermanentAddress.getPincode());
		return "success";
	}
	
	public String addBillingAddress (BookNow bookNow, UserBillingAddress userBillingAddress) {
		this.userBillingAddress.setHouseNumber(userBillingAddress.getHouseNumber());
		this.userBillingAddress.setHouseName(userBillingAddress.getHouseName());
		this.userBillingAddress.setStreetName(userBillingAddress.getStreetName());
		this.userBillingAddress.setLocality(userBillingAddress.getLocality());
		this.userBillingAddress.setCity(userBillingAddress.getCity());
		this.userBillingAddress.setState(userBillingAddress.getState());
		this.userBillingAddress.setPincode(userBillingAddress.getPincode());
		return "success";
	}
}
