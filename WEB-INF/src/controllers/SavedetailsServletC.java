package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.CUser;
import models.Customer;


public class SavedetailsServletC extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
					HttpSession session = request.getSession();
					
					CUser cuser = (CUser)session.getAttribute("user");

					String   name = request.getParameter("name");
					String areaOfStudy = request.getParameter("aos");
					String state = request.getParameter("state");
					String city = request.getParameter("city");
					String  address = request.getParameter("address");
					String  phoneNumber = request.getParameter("pnum");
					Customer customer = new Customer();

		customer.setUserAccountId(cuser.getUserAccountId());
		
		customer.setName(name);
		customer.setAreaOfStudy(areaOfStudy);
		customer.setState(state);
		customer.setCity(city);
		customer.setAddress(address);
		customer.setPhoneNumber(phoneNumber);

		customer.saveCustomer();
			

		request.getRequestDispatcher("Customer.jsp").forward(request,response);
	}

}



	