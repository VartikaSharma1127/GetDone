package  models;
import java.util.ArrayList;
import java.sql.*;

 public class Skill{

	private Integer skillId;
	private String skillName;

	 public Skill(){
	 }
	 	
	 public Skill( Integer skillId,String skillName){
		this.skillId=skillId;
		this.skillName=skillName;
	 }
	 //##############################
	 public static ArrayList<Skill> collectSkills(){

				 ArrayList<Skill> skill = new ArrayList<Skill>();
				 
				 try{
				 Class.forName("com.mysql.jdbc.Driver");
				 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
				 
				 String query = "select *  from skill";

				 PreparedStatement pst = con.prepareStatement(query);
				 ResultSet rs = pst.executeQuery();
				 while(rs.next()){

					 Skill sl = new Skill(rs.getInt(1),rs.getString(2));
					 skill.add(sl);
				 }

				 con.close();
			 }catch(ClassNotFoundException|SQLException e){
				 e.printStackTrace();
				 }

				 return skill;
				 }
	 //############################################
		 
		 

	public void setSkillId(  Integer skillId){ 
		this.skillId=skillId;
	}
	public Integer getSkillId(){
		return skillId;
	}

	public void setSkillName(  String skillName){
		this.skillName=skillName;
	}
	public String getSkillName(){ 
		return skillName;
	}

}