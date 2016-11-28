package com.monespace.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.monespace.Service.UserService;
import com.monespace.model.BookNow;
import com.monespace.model.UserBillingAddress;
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
	
}
