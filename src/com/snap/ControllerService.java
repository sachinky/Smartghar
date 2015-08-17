package com.snap;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CookDao;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.pojo.Cook;
import com.pojo.User;

@Controller
public class ControllerService
{
	@Autowired
	private UserDaoImpl userDao; 
	
	private CookDao cd;
	//private UserDao ud;
	
	HttpSession session;
	
	@RequestMapping(value = "addcook.htm", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("cook", new Cook());
		
		return "add";
	}
	
	@RequestMapping(value = "adduser.htm", method = RequestMethod.GET)
	public String addUserController(ModelMap model) {

		model.addAttribute("user", new User());
		
		return "useradd";
	}
	
	@RequestMapping(value = "insertcook.htm", method = RequestMethod.POST)
	public ModelAndView insertCookData(@ModelAttribute("cook")Cook co,ModelMap model) {
		
		cd.add(co);
		
		ModelAndView mview = new ModelAndView();
		mview.addObject("MESSAGE", "Registered Successfully");
		mview.setViewName("reglogin");
		
		return mview;
	}
	

//	@RequestMapping(value = "insertuser.htm", method = RequestMethod.POST)
//	public String insertUserData(@ModelAttribute("user")User u,ModelMap model) {
//		
//		ud.add(u);
//		return "add1";
//	}
	
	@RequestMapping(value = "loginpage.htm", method = RequestMethod.GET)
	public String loginController(ModelMap model) {
		
		return "login";
	}
	
	@RequestMapping(value = "logout.htm", method = RequestMethod.GET)
	public String logoutController(ModelMap model) {
		
		return "logout";
	}
	
	
	@RequestMapping(value = "login.htm", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String pass = cd.getPassword(username);
		
		int flag = Integer.parseInt(String.valueOf(pass.charAt(0)));
		
		pass = pass.substring(1);
		ModelAndView mview = new ModelAndView();
		
		//System.out.println(pass + "   ---   " + flag);
		
		if(pass.equals("null") || !pass.equals(password))
		{
			mview.addObject("MESSAGE", "Invalid Credentials");
			mview.setViewName("reglogin");
		}
		
	
		// Flag=0 for normal User
		if(pass.equals(password) && flag==0)
		{
		
			session = request.getSession(true);
			session.setAttribute("username", username);
			
			mview.setViewName("search");
			
		}
		
		// Flag=1 for Professional
		if(pass.equals(password) && flag==1)
		{
		
			session = request.getSession(true);
			session.setAttribute("username", username);
			
			mview.setViewName("servicehome");
		}
		
		
		return mview;
	}
	
	@RequestMapping(value = "search.htm", method = RequestMethod.GET)
	public String searchController(ModelMap model) {
		
		return "search";
	}
	
	@RequestMapping(value = "updateservice.htm", method = RequestMethod.GET)
	public ModelAndView updateServiceController(@ModelAttribute("cook") Cook co)
	{
		String username = (String) session.getAttribute("username");
		
		List<Cook> list = cd.getCook(username); 
		
		System.out.println(list);
		
		ModelAndView mview = new ModelAndView();
		mview.addObject("list", list);
		mview.setViewName("update");
	
		return mview;
	}
	
	@RequestMapping(value = "updatecook.htm", method = RequestMethod.POST)
	public ModelAndView updateCookData(@ModelAttribute("cook") Cook co,ModelMap model) {
		
		//System.out.println(co.getUsername());
		
		cd.update(co);
		
		ModelAndView mview = new ModelAndView();
		mview.addObject("MESSAGE", "Updated Successfully");
		mview.setViewName("servicehome");
		
		return mview;
	}
	
	
	
	@RequestMapping(value = "searchresult.htm", method = RequestMethod.POST)
	public ModelAndView searchData(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		String service = request.getParameter("service");
		String location = request.getParameter("location");
		
		//System.out.println(service + location);
		service = "Cook";
		location = "Gurgaon";
		List<Cook> list = cd.listCook(service, location);
		
//		for(int i=0;i<list.size();i++)
//			System.out.println(list.get(i));
		
		ModelAndView mview = new ModelAndView();
		mview.addObject("list", list);
		mview.setViewName("display");
		
		return mview;
		
	}

	@Autowired
	public void setCd(CookDao cd) {
		this.cd = cd;
	}
//	@Autowired
//	public void setUd(UserDao ud) {
//		this.ud = ud;
//	}
//	
	
	@RequestMapping(value="insertuser.htm", method = RequestMethod.POST)
	public ModelAndView req(@ModelAttribute User user)
	{
		UserDao userdao = userDao;
		userdao.add(user);
		ModelAndView mview = new ModelAndView();
		mview.addObject("MESSAGE", "Registered Successfully");
		mview.setViewName("reglogin");
		
		return mview;
	}

}
