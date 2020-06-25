package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.FUser;
import java.sql.Date;
import models.Freelancer;
import models.SubCategories;
import models.FlSkill;

public class SavedetailsServletF extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
					HttpSession session = request.getSession();
					String nextPage= "details.jsp";
					
					FUser fuser = (FUser)session.getAttribute("user");

					String   professionalTitle = request.getParameter("Protile");
					String overview = request.getParameter("overview");
					int  sbct = Integer.parseInt(request.getParameter("scat"));
					String paidBy = request.getParameter("paidby");
					String  rate = request.getParameter("Hrate");
		            String[]  flSkill = request.getParameterValues("skills");
					Integer hoursAvailable = Integer.parseInt(request.getParameter("hoavi"));
					String  educationInstitutionName = request.getParameter("institute");
					//Date  startingDate = new Date(Long.parseLong( request.getParameter("sdate")));
					//Date  endingDate =new Date(Long.parseLong( request.getParameter("edate")));
					String startingDate =  request.getParameter("sdate");
					String  endingDate =  request.getParameter("edate");
					String areaOfStudy = request.getParameter("aos");
					String state = request.getParameter("state");
					String city = request.getParameter("city");
					String  country = request.getParameter("country");
					String  address = request.getParameter("address");
					String  phoneNumber = request.getParameter("pnum");
  
		Freelancer freelancer = new  Freelancer ();

		freelancer.setUserAccountId(fuser.getUserAccountId());

		freelancer.setProfessionalTitle(professionalTitle);
		freelancer.setOverview(overview);
		freelancer.setPaidBy(paidBy);
		freelancer.setRate(rate);

		//************/
		freelancer.setSubCategories(new SubCategories(sbct));

		//************//
		//freelancer.setFlSkill(flSkill);

		//************//

		freelancer.setHoursAvailable(hoursAvailable);
		freelancer.setEducationInstitutionName(educationInstitutionName);
		freelancer.setStartingDate(startingDate);
		freelancer.setEndingDate(endingDate);
		freelancer.setAreaOfStudy(areaOfStudy);
		freelancer.setState(state);
		freelancer.setCity(city);
		freelancer.setCountry(country);
		freelancer.setAddress(address);
		freelancer.setPhoneNumber(phoneNumber);


		if(freelancer.saveFreelancer()){
			if(FlSkill.saveFreelancerSkills(freelancer.getFreelancerId(),flSkill)){
				System.out.println("#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$###");
				if(freelancer.profileF()){
					System.out.println("#######################1111111");
				nextPage = "Freelancer.jsp";
				session.setAttribute("fl",freelancer);
		}
		}
		}

		request.getRequestDispatcher(nextPage).forward(request,response);
	}

}



	