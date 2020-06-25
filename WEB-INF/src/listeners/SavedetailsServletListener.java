package listeners;

import javax.servlet.*;
import models.*;
import java.util.*;

public class SavedetailsServletListener implements ServletContextListener {
	public void contextInitialized(ServletContextEvent ev){
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
		ArrayList<SubCategories> subCats = SubCategories.collectSubCategories();
		ev.getServletContext().setAttribute("subcats",subCats);

		ArrayList<Skill> skill = Skill.collectSkills();
		ev.getServletContext().setAttribute("skill",skill);   
	}

	public void contextDestroyed(ServletContextEvent ev){
	
	}
}