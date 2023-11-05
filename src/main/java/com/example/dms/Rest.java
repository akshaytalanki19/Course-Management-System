package com.example.dms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.example.dms.model.Admin;
import com.example.dms.model.Staff;
import com.example.dms.model.User;
import com.example.dms.repository.UserRepository;
import com.example.dms.service.AdminService;
import com.example.dms.service.StaffService;
import com.example.dms.service.UserService;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class Rest {
	@Autowired
	private UserService userService;
	@Autowired
	UserRepository userRepository;
	@Autowired
	private StaffService staffService;
		@RequestMapping("/")
		public String start()
		{
			return "index";
		}
	@GetMapping("home")
	public ModelAndView home(HttpServletRequest request)
	{
       HttpSession session=request.getSession();
		int uid=(int)session.getAttribute("uid"); 
		String uname=(String)session.getAttribute("uname"); 
		
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("home");
	    
	    mv.addObject("uid", uid);
	    mv.addObject("uname", uname);
	    
	    return mv;
	}
	@GetMapping("feedback") //URI & method name can be different 
	 public ModelAndView feedback() 
	 { 
	  ModelAndView mv=new ModelAndView(); 
	  mv.setViewName("feedback"); 
	  return mv; 
	 }
	@GetMapping("insertfaculty")
	@PostMapping("insertfaculty")
	public ModelAndView insert(HttpServletRequest request)
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
		try
		{
			String name=request.getParameter("name");
			String password=request.getParameter("pwd");
			Staff s=new Staff();
			s.setUsername(name);
			s.setPassword(password);
			msg=staffService.addstaff(s);
			mv.setViewName("adminhome");
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("insertfaculty");
			mv.addObject("message", msg); //msg-attribute
		}
		
		return mv;
	}
	@Autowired
	public AdminService adminService;
	@PostMapping("checkadminlogin")
	public ModelAndView chekadminlogin(HttpServletRequest request)
	{
       ModelAndView mv = new ModelAndView(); 
	    
	    
	    String uname = request.getParameter("uname");
	     String pwd = request.getParameter("pwd");
	     
	    Admin admin = adminService.checkadminlogin(uname, pwd);
	    
	    if(admin!=null)
	    {
	      mv.setViewName("adminhome");
	      long count =adminService.usercount();
          mv.addObject("ucount", count);
	    }
	    else
	    {	
	      mv.setViewName("adminlogin");
	      mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	}
	
	@PostMapping("checkstafflogin")
	public ModelAndView checkstafflogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("sname");
		String pwd=request.getParameter("spwd");
		Staff staff=staffService.checkStafflogin(email,pwd);
		if(staff != null)
		{
			HttpSession s=request.getSession();
			s.setAttribute("sid", staff.getId());
			s.setAttribute("sname", staff.getUsername());
			mv.setViewName("home");
		}
		return mv;
		
	}
	@GetMapping("view")
	public ModelAndView viewempdemo(@RequestParam("id") int uid)
	{
	    User user = adminService.viewempbyid(uid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewempbyid");
	    mv.addObject("user", user);
	    return mv;
	}
	@GetMapping("viewUsers")
	public ModelAndView viewusers()
	{
		List<User> list=adminService.viewUsers();
		ModelAndView mv=new ModelAndView("viewUsers");
		mv.addObject("userdata", list);
		return mv;
		
	}
	@GetMapping("delete/{id}")
	public String deleteById(@PathVariable("id") int uid)
	{
	    adminService.deleteuser(uid);
	    return "redirect:/deleteuser";
	}
	@GetMapping("deleteuser")
	public ModelAndView deleteuser()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deleteStudent");
		List<User> l=adminService.viewUsers();
		mv.addObject("userdata",l);
		return mv;
	}
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("viewUserCount")
	public ModelAndView viewUSerCount()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewUserCount");
		return mv;
	}
	@GetMapping("stafflogin")
	public ModelAndView stafflogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stafflogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminHome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@GetMapping("login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping("/NewSurvey")
	public String NewSurvey()
	{
		return "NewSurvey";
	}
	@RequestMapping("registration")
	public String registration()
	{
		return "registration";
	}
	@RequestMapping("/Search")
	public String Search()
	{
		return "Search";
	}
	@PostMapping("insertuser")
	public ModelAndView insertUser(HttpServletRequest request)
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
		try {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User u =new User();		
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);	
		
		msg=userService.addUser(u);
		mv.setViewName("/login");
		}
		catch(Exception e) {
			msg=e.getMessage();
			mv.setViewName("/");
			mv.addObject("message", msg); 
		}
		return mv;
	}
	@PostMapping("loginuser")
	public  ModelAndView loginUser(HttpServletRequest request)
	{ 
        ModelAndView mv=new ModelAndView();
		String email = request.getParameter("email");
	    String pwd = request.getParameter("pwd");
	    User u=userService.checkUserlogin(email,pwd);
	    if(u!=null)
	    {
	    	HttpSession session=request.getSession();
	    	session.setAttribute("uid", u.getId()); 
	    	session.setAttribute("uname", u.getName()); 
	    	mv.setViewName("/home");
	    }
	    else
	    {
	    	mv.setViewName("/login");
	    	mv.addObject("message", "Login Failed");
	    }
	    
		return mv;
		
	}
	@GetMapping("about")
	public ModelAndView about()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	@GetMapping("classes")
	public ModelAndView classes()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("classes");
		return mv;
	}
	@GetMapping("courses")
	public ModelAndView courses()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("courses");
		return mv;
	}
	@GetMapping("gallery")
	public ModelAndView gallery()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("gallery");
		return mv;
	}
	
}
