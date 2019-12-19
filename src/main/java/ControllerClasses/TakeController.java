package ControllerClasses;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TakeController {


		@RequestMapping("/hello")
		public ModelAndView Take(HttpServletRequest request,HttpServletResponse responce) {
			
			String name=request.getParameter("t1");
			String password=request.getParameter("t2");
			
			
			MvcService c=new MvcService();
			
			ModelAndView m=new ModelAndView();
			boolean k=c.login(name, password);
			if(k==true) {
			m.setViewName("HomePage");
			//m.addObject("result","");
			return m;
			}
			else {
				m.setViewName("LoginError");
				return m;
			}
				
			//System.out.println(name+"  "+password+" "+k+" "+m);
		}
		
		
		
		@RequestMapping("/Register1")  
	    public String redirect()  
	    {  
	        return "Register";  
	    } 
		
		
		
		@RequestMapping("/in")
		public String register(HttpServletRequest request,HttpServletResponse responce) {
		
			String name=request.getParameter("name");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String phoneno=request.getParameter("phoneno");
			int amount=Integer.parseInt(request.getParameter("amount"));
			
			Register register=new Register();
			String check=register.registerDetails(name,username,password,phoneno,amount);
			if(check=="true")
				return "RegisterSuccess";
			else
				return "Register1";
				
		}
		
		@RequestMapping("/Login")  
	    public String redirect1()  
	    {  
	        return "LoginPage";  
	    } 
		
	
@RequestMapping("/CheckBalance")
public ModelAndView checkBalance() {
			
			CheckBalance balance=new CheckBalance();
			boolean k=balance.checkBalance(MvcService.phoneno);
			
			
			ModelAndView m=new ModelAndView();
			
			if(k==true) {
			m.setViewName("Balance");
			m.addObject("result",CheckBalance.amount);
			return m;
			}
			else {
				m.setViewName("HomePage");
				return m;
			}
		}


@RequestMapping("/HomePage")  
public String redirect2()  {  
    return "HomePage";  
}

@RequestMapping("/ChangePassword")
public String redirect3() {
	return "ChangePassword";
	
}

@RequestMapping("/ChangePassword1")
public String ChangePassword(HttpServletRequest request,HttpServletResponse responce) {
	
	String password=request.getParameter("password");
	
	ChangePassword change=new ChangePassword();
	change.changePassword(MvcService.phoneno,password);
	
	
	return null;
	
	
}



}
