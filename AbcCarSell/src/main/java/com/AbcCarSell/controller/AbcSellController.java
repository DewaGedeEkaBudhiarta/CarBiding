package com.AbcCarSell.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.AbcCarSell.dto.AbcUserBeans;
import com.AbcCarSell.dto.CarBidBeans;
import com.AbcCarSell.dto.CarPostBeans;
import com.AbcCarSell.security.ApplicationUserDetail;
import com.AbcCarSell.service.userService;

@ComponentScan(basePackages = {"com.AbcCarSell.service"})
@Controller
public class AbcSellController {
	
	@Autowired
    userService userService;
    List<AbcUserBeans> AllDataUser = new ArrayList<AbcUserBeans>();
	
	//landing page
	@GetMapping(value= {"/", "/landing"})
	public String landing(HttpSession session) {
		session.removeAttribute("user_id");
		session.removeAttribute("user_role");
		System.out.println("landingPage");
		return "landingPage";	
	}
	
	//home page
		@GetMapping(value="/home")
		public String home(@AuthenticationPrincipal ApplicationUserDetail apkUserDetail, HttpSession session, Model model) {
			String username = apkUserDetail.getUsername();
			AbcUserBeans user = userService.login(username);
			session.setAttribute("user_id", user.getId_user());
			session.setAttribute("user_role", user.getRole());
			
			List<CarPostBeans> dataCar= userService.showAllCar();
			model.addAttribute("showCar", dataCar);
			
			return "homePage";
		}
		
	//car bidding page
		@GetMapping(value="/carBid/{car_id}")
		public ModelAndView carBiding(@PathVariable("car_id")Integer id, @ModelAttribute("carBidding") CarBidBeans carBid, Model model) {
			CarPostBeans c=userService.findByIdcar(id);
			
			System.out.println("carBid");
			
			List<CarBidBeans> bid=userService.showAllBidder();
			model.addAttribute("bidder", bid);
			
			return new ModelAndView("carBid", "car", c);
		}

		//carBidding function
		@PostMapping(value= "/carBidd")
		public String carBidding(@ModelAttribute("carBidding") CarBidBeans carBid) {
			System.out.println("carBidding");
			userService.bidding(carBid);
			return "redirect:/home";
		}
		
		
	//login page
		@GetMapping(value="/login")
		public String login(Model model, String error) {
			if(error !=null) {
				System.out.println(error);
				model.addAttribute("msg", "Your email or password are incorrect");
			}
			System.out.println("loginPage");
			return "loginPage";	
		}
		
	
	//register page
		@GetMapping(value="/register")
		public String register(@ModelAttribute("data") AbcUserBeans user) {
			System.out.println("registerPage");
			return "registerPage";	
		}	
	
	//register Function
		@PostMapping(value="/registered")
		public String registered(@ModelAttribute("data") AbcUserBeans user)
		{
			userService.addUser(user);
			System.out.println("registered");
			return "redirect:/login";
		}
	

	//manageCar page
		@GetMapping(value="/mngCar")
		public ModelAndView mngCar() {
			List<CarPostBeans> mngCar = userService.showAllCar();
			System.out.println(mngCar);
			
			return new ModelAndView("manageCar", "listCar", mngCar);
		}
		
	//manageUser page
		@GetMapping(value="/mngUser")
		public ModelAndView mngUser() {
			List<AbcUserBeans> mngUser = userService.showAllUser();
			System.out.println(mngUser);
			
			return new ModelAndView("manageUser", "listUser", mngUser);	
		}
		
	//postCar page
		@GetMapping(value="/postCar")
		public String postCar(@ModelAttribute("carPost") CarPostBeans postCar) {
			System.out.println("postCarPage");
			return "postCar";	
		}
		
		//car posting function
		@PostMapping(value= "/postCar")
		public String carPosting(@ModelAttribute("carPost") CarPostBeans postCar) {
			userService.carPost(postCar);
			System.out.println("postcar");
			return "redirect:/home";
		}
		
	//profile page
		@GetMapping(value="/profileUser/{id_user}")
		public ModelAndView profile(@PathVariable("id_user")Integer id) {
			AbcUserBeans u=userService.findById(id);
			System.out.println("profile");
			return new ModelAndView("profile", "viewProfile", u);
		}
		
	//updateUser page for admin
		@GetMapping(value="/updateUser/{id_user}")
		public ModelAndView update (@PathVariable("id_user")Integer id) {
			AbcUserBeans  u=userService.findById(id);
			System.out.println("id");
			return new ModelAndView("updateUser", "updateProfile", u);
		}
		//update function for admin
		@GetMapping(value="/updateConfirm")
		public String updateData(@RequestParam int uid,
			@RequestParam("Username") String username,
			@RequestParam("Email") String email,
			@RequestParam("Password") String password,
			@RequestParam("Role") String role)
			
		{
			System.out.println(uid+" "+ username);
			AbcUserBeans u= new AbcUserBeans(uid, username, email, password, role );
			userService.encode(u);
			
			return "redirect:/mngUser";
		}
		
		
	//search funtion
	@PostMapping(value="/search")
	public ModelAndView search(@RequestParam String search) {
		System.out.println(search);
		List<CarPostBeans> dataCar= userService.search(search);
		
		return new ModelAndView("homePage", "showCar", dataCar);	
	}
	
	//delete user for admin
	@GetMapping (value="/deleteUser")
	public String deletepage(@RequestParam("pid")Integer user_id) {
		userService.deleteData(user_id);
		return "redirect:/mngUser";
	}
	
	//delete car for admin
		@GetMapping (value="/deleteCar")
		public String deletcar(@RequestParam("cid")Integer car_id) {
			userService.deleteDataCar(car_id);
			return "redirect:/mngCar";
		}
		
	
		
}
