package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class HowItWorksServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();

		String nextPage = "howitworks.jsp";

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}