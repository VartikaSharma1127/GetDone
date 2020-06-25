package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

public class SaveSignupServletC extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();
		String nextPage = "signupC.jsp";
						
		
		String email = request.getParameter("email");
		String password = request.getParameter("passw");
		Integer userType= Integer.parseInt(request.getParameter("utype"));

		CUser user = new CUser( );
	
		user.setEmail(email);
		user.setPassword(password);
		user.setUserType(userType);
		
		if(user.saveUserC()){
			session.setAttribute("user",user);
			nextPage = "cdetails.jsp";
		}
		System.out.println("#################################");
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}	
		
		