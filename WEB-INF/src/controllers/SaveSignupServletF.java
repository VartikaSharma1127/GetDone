package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

public class SaveSignupServletF extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();
		String nextPage = "signupF.jsp";
						
		
		String email = request.getParameter("email");
		String password = request.getParameter("passw");
		Integer userType= Integer.parseInt(request.getParameter("utype"));

		FUser user = new FUser( );
	
		user.setEmail(email);
		user.setPassword(password);
		user.setUserType(userType);
		
		if(user.saveUserF()){
			session.setAttribute("user",user);
			nextPage = "details.jsp";
		}
		System.out.println("#################################");
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}	
		
		