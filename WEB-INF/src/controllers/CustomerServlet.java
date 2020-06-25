package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class  CustomerServlet  extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		HttpSession session = request.getSession();

		String nextPage = "Customer.jsp";

		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}