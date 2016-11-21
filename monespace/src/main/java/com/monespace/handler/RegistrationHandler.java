package com.monespace.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.monespace.Service.UserService;
import com.monespace.model.Dealer;
import com.monespace.model.UserBillingAddress;
import com.monespace.model.UserDetail;
import com.monespace.model.UserPermanentAddress;
import com.monespace.model.UserRole;

@Component
public class RegistrationHandler {

	@Autowired
	public UserService userService;
	
	@Autowired
	public UserPermanentAddress userPermanentAddress;
	
	@Autowired
	public UserBillingAddress userBillingAddress;
	
	@Autowired
	public UserRole userRole;
	
	@Autowired
	public Dealer dealer;
	
	public UserDetail initFlow(){
		return new UserDetail();
	}
	
	public String validateDetail(UserDetail userDetail, MessageContext messageContext) {
		List<UserDetail> listDetail = userService.listDetail();
		
		String status="success";
		if (userDetail.getFirstName().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("firstName").defaultText("First Name is Mandatory").build());
			status="failure";
		}
		if (userDetail.getMobileNumber().isEmpty() || (userDetail.getMobileNumber().length()!=10 && !userDetail.getMobileNumber().isEmpty())) {
			if (userDetail.getMobileNumber().length()!=10 && !userDetail.getMobileNumber().isEmpty()) {
				messageContext.addMessage(new MessageBuilder().error().source("mobileNunber").defaultText("Mobile Number should be of 10 digits").build());
			}
			else {
				messageContext.addMessage(new MessageBuilder().error().source("mobileNumber").defaultText("Mobile Number is Mandatory").build());
			}
			status="failure";
		}
		if (userDetail.getEmailId().isEmpty() || (!userDetail.getEmailId().contains("@") && !userDetail.getEmailId().isEmpty())) {
			if(!userDetail.getEmailId().contains("@") && !userDetail.getEmailId().isEmpty()) {
				messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("Invalid Format. Should contain @").build());
			}
			else {
				messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("Email Id is Mandatory").build());
			}
			status="failure";
		}
		else if (!userDetail.getEmailId().isEmpty()) {
			for(UserDetail d: listDetail) {
				if (d.getEmailId().equals(userDetail.getEmailId())) {
					messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("Email Id is already exists.Please Try Another.").build());
					status="failure";
					break;
				}
			}
		}
		if (userDetail.getUsername().isEmpty() || userDetail.getUsername().length()<=2) {
			messageContext.addMessage(new MessageBuilder().error().source("username").defaultText("User Name is Mandatory").build());
			status="failure";
		}
		else if (userDetail.getUsername().isEmpty()) {
			for (UserDetail d: listDetail) {
				if(d.getUsername().equals(userDetail.getUsername())) {
					messageContext.addMessage(new MessageBuilder().error().source("username").defaultText("username is already exists.Please Try Another.").build());
					status="failure";
					break;
				}
			}
		}
		if (userDetail.getPassword().isEmpty() || (userDetail.getPassword().length()<5 && !userDetail.getPassword().isEmpty())) {
			if (userDetail.getPassword().length()<5 && !userDetail.getPassword().isEmpty()) {
				messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("password should be minimum 5 characters").build());
			}
			else {
				messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password is Mandatory").build());
			}
			status="failure";
		}
		return status;
	}
	public String validatePermanentAddress(UserDetail userDetail, UserPermanentAddress userPermanentAddress, MessageContext messageContext) {
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
	
//	public String addRole(UserDetail userDetail, UserRole userRole) {
//		this.userRole.setRoleId(userRole.getRoleId());
//		return "success";
//	}
	public String addDetail(UserDetail userDetail, UserRole userRole, UserPermanentAddress userPermanentAddress,UserBillingAddress userBillingAddress, MessageContext messageContext) {
//		try {
//			userDetail.setRoleId(userRole.getRoleId());
			userService.saveOrUpdateUser(userDetail);
			userDetail.setUserPermanentAddress(userPermanentAddress);
			userDetail.setUserBillingAddress(userBillingAddress);
			userDetail.setUserRole(userRole);
			
			userPermanentAddress.setUserDetail(userDetail);
			this.userPermanentAddress.setUserDetail(userDetail);
			userBillingAddress.setUserDetail(userDetail);
			this.userBillingAddress.setUserDetail(userDetail);
			userRole.setUserDetail(userDetail);
			this.userRole.setUserDetail(userDetail);
			userService.saveOrUpdateUserPermanentAddress(userPermanentAddress);
			userService.saveOrUpdateUserBillingAddress(userBillingAddress);
			userService.saveOrUpdateUserRole(userRole);
			
//		}
//		catch (Exception e) {
//			messageContext.addMessage(new MessageBuilder().error().source('dberror').defaultText("Server is Down! Try again Later...").build());
//			return "failure";
//		}
		
		return "success";
	}
	
	public String addDetailDealer(UserDetail userDetail, UserRole userRole, Dealer dealer, MessageContext messageContext) {
		
		
		userService.saveOrUpdateUser(userDetail);
		userDetail.setUserRole(userRole);
		userDetail.setDealer(dealer);
		
		userRole.setUserDetail(userDetail);
		this.userRole.setUserDetail(userDetail);
		dealer.setUserDetail(userDetail);
		this.dealer.setUserDetail(userDetail);
		userService.saveOrUpdateUserRole(userRole);
		userService.saveOrUpdateDealer(dealer);
		
		return "success";
	}
	
	public String addPermanentAddress (UserDetail userDetail, UserPermanentAddress userPermanentAddress) {
		this.userPermanentAddress.setHouseNumber(userPermanentAddress.getHouseNumber());
		this.userPermanentAddress.setHouseName(userPermanentAddress.getHouseName());
		this.userPermanentAddress.setStreetName(userPermanentAddress.getStreetName());
		this.userPermanentAddress.setArea(userPermanentAddress.getArea());
		this.userPermanentAddress.setCity(userPermanentAddress.getCity());
		this.userPermanentAddress.setState(userPermanentAddress.getState());
		this.userPermanentAddress.setPincode(userPermanentAddress.getPincode());
		return "success";
	}
	
	public String addBillingAddress (UserDetail userDetail, UserBillingAddress userBillingAddress) {
		this.userBillingAddress.setHouseNumber(userBillingAddress.getHouseNumber());
		this.userBillingAddress.setHouseName(userBillingAddress.getHouseName());
		this.userBillingAddress.setStreetName(userBillingAddress.getStreetName());
		this.userBillingAddress.setLocality(userBillingAddress.getLocality());
		this.userBillingAddress.setCity(userBillingAddress.getCity());
		this.userBillingAddress.setState(userBillingAddress.getState());
		this.userBillingAddress.setPincode(userBillingAddress.getPincode());
		return "success";
	}
	
	public String addDealerDetail (UserDetail userDetail, Dealer dealer) {
		this.dealer.setDealerName(dealer.getDealerName());
		this.dealer.setDealerOrganisation(dealer.getDealerOrganisation());
		this.dealer.setDealerAddress1(dealer.getDealerAddress1());
		this.dealer.setDealerAddress2(dealer.getDealerAddress2());
		this.dealer.setDealerContactNumber(dealer.getDealerContactNumber());
		this.dealer.setDealerMobileNumber(dealer.getDealerMobileNumber());
		this.dealer.setDealerEmailId(dealer.getDealerEmailId());
		return "success";
	}
}
