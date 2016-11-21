package com.monespace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monespace.Service.DealerService;
import com.monespace.model.Dealer;

@Controller
public class DealerController {

	@Autowired
	private DealerService dealerService;
	
	@RequestMapping(value= "/add/dealer", method=RequestMethod.POST)
	public String addDealer (@ModelAttribute("dealer") Dealer dealer) {
		this.dealerService.createDealer(dealer);
		return "redirect:/dealer";
	}
	
	@RequestMapping("/dealer")
	public String getDealer (Model model) {
		model.addAttribute("dealer", new Dealer());
		model.addAttribute("listDealer", dealerService.listDealer());
		model.addAttribute("dealerListJson", dealerService.getDealerJson());
		return "dealer";
	}
	
	@RequestMapping(value="/editDealer-{dealerId}", method=RequestMethod.GET)
	public String editDealer(@PathVariable("dealerId")int dealerId, Model model) {
		model.addAttribute("dealer", dealerService.getbyId(dealerId));
		return "dealer";
	}
	
	@RequestMapping(value="/deleteDealer-{dealerId}", method=RequestMethod.GET)
	public String deleteDealer(@PathVariable("dealerId")int dealerId) {
		dealerService.deleteDealer(dealerId);
		return "redirect:/dealer";
	}
}
