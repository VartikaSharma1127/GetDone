package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


import models.FUser;

public class LoginServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();

		String nextPage = "login.jsp";
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("passw");
		FUser user = new FUser( email,password);

	
		if(user.loginUserF()){
			nextPage = "Freelancer.jsp";

			session.setAttribute("user",user);
		}

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}
