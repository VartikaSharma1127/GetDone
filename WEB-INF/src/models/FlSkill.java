package models;
import java.sql.*;
 public class FlSkill{
		
    private  Integer flSkillId;
	private Freelancer freelancer;
	private  Skill skill;

		
		public FlSkill(){ }

		public FlSkill(Integer flSkillId, Freelancer freelancer ,Skill skill){}



		public static boolean saveFreelancerSkills(Integer freelancerId,String[] skills){
			boolean flag =false;
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			String query = "insert into flSkill(freelancer_id,skill_id) value (?,?)";

			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1,freelancerId);

			for(String skill : skills){
				pst.setInt(2,Integer.parseInt(skill));
				pst.executeUpdate();
			}

			flag= true;
			con.close();
	}
	catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}return flag;

		}









		public void setFlSkillId(  Integer flSkillId)
			{ this.flSkillId=flSkillId;}
		public Integer getFlSkillId()
			{ return flSkillId;}

		public void setFreelancer(Freelancer  freelancer )
			{this. freelancer= freelancer ;}
		public Freelancer getFreelancer()
			{return freelancer;}

		public void setSkill(  Skill skill)
			{ this.skill=skill;}
		public Skill getSkill()
			{ return skill;}


}