package mum.edu.cs544.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mum.edu.cs544.model.Customer;
import mum.edu.cs544.model.Role;
import mum.edu.cs544.service.UserService;




@Controller
@SessionAttributes("userSession")
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String signUp(@ModelAttribute("newUser") Customer customer){
		return "signUp";
	}
	@RequestMapping(value="/signUp",method=RequestMethod.POST)
	public String afterSignUp(@ModelAttribute("newUser") @Valid Customer customer,BindingResult result,RedirectAttributes redirectAttributes ){
		customer.getUser().setHasRole(Role.ROLE_CUSTOMER);
		if(result.hasErrors()){
			return "signUp";
		}
		userService.add(customer);
		redirectAttributes.addFlashAttribute("users",customer);
		return "Homepage";
	}
	@RequestMapping(value="/users",method=RequestMethod.GET)
public String allUser(Model model){

	model.addAttribute("users",userService.getAll());
	return "users";
}
	@RequestMapping(value="/user/{id}",method=RequestMethod.GET)
public String delete(@PathVariable("id") Long id){
		//Customer customer=userService.findOne(id);
		userService.delete(id);
	return "redirect:/users";
}
	@RequestMapping(value="/user/update{id}")
	public String updateUser(@RequestParam("id") Long userId,@ModelAttribute("updateCustomer")Customer updateCustomer, Model model) {
		Customer customer = userService.getCustomerById(userId);
  	
  		model.addAttribute("users", customer);
		return "editUser";
	}
  	@RequestMapping(value="/user/update{id}", method=RequestMethod.POST)
  	public String updatedUser(@RequestParam("id") Long userId,@ModelAttribute("updateCustomer")Customer updateCustomer, Model model){
  		updateCustomer.setId(userId);
  		userService.add(updateCustomer);
  		
  		return "redirect:/Homepage";
  	}
	
	
}
