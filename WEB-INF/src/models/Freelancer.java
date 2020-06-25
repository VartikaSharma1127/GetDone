package models;
import java.sql.*;

   public class Freelancer extends FUser{ 

	   private Integer freelancerId;
	   private String  professionalTitle ;
	   private String  overview ;
	   private  String paidBy ;
	   private String  rate ;
	   //********************//
	   private SubCategories  subCategories ;
	   private FlSkill  flSkill ;
	   //********************//
	   private  Integer hoursAvailable ;
	   private String  educationInstitutionName ;
	   //private Date  startingDate ;
	   //private Date  endingDate ;
	   private String  startingDate ;
	   private String  endingDate ;
	   private String areaOfStudy ;
	   private  String state ;
	   private String city ;
	   private String country;
	   private String  address ;
	   private String  phoneNumber ;
	  

	  public  Freelancer()
						  {
						  }
   public Freelancer( String   professionalTitle , String overview , SubCategories  subCategories ,String paidBy , String rate, FlSkill  flSkill ,  Integer hoursAvailable , 
   String  educationInstitutionName , String startingDate , String  endingDate ,String areaOfStudy ,  String state , String city , String country ,String  address , String  phoneNumber )
		   {
	   this.freelancerId  =freelancerId;
	   this.professionalTitle=  professionalTitle ;
	   this.overview=overview ;
	   this.paidBy=paidBy ;
	   this.rate=  rate ;
	   this.subCategories=   subCategories ;
	   this.flSkill=   flSkill ;
	   this.hoursAvailable=hoursAvailable ;
	   this.educationInstitutionName= educationInstitutionName ;
	   this.startingDate=  startingDate ;
	   this.endingDate=endingDate ;
	   this.areaOfStudy =areaOfStudy ;
	   this.state= state ;
	   this.city=city ;
	   this.country=country ;
	   this.address=address ;
	   this.phoneNumber=phoneNumber ;
   }
//##########################################################################

   public boolean profileF(){
	   boolean flag = false;

	   try{
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
		   
		   //String query = "SELECT professionalTitle,paidBy,AreaOfStudy FROM freelancer f1 INNER JOIN userAccount u1 ON f1.userAccount_id= u1.userAccount_id and email= ? ";
		   String query = "SELECT  professionalTitle,overview,paidBy,rate,hoursAvailable,educationInstitutionName,startingDate,endingDate,AreaOfStudy,address,state,city,country,phoneNumber FROM freelancer f1 INNER JOIN userAccount u1 ON f1.userAccount_id= u1.userAccount_id and email= ? ";
		   PreparedStatement pst = con.prepareStatement(query);
		   pst.setString(1,getEmail());

		   	ResultSet rst = pst.executeQuery();

		   
		   flag = true;
		   con.close();
	   }catch(SQLException|ClassNotFoundException e){
		   e.printStackTrace();
	   }

	   return flag;
   }
//##########################################################





   //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
public boolean saveFreelancer(){
					boolean flag = false;

			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			String query = "insert into freelancer (professionalTitle,overview,subCategories_id,paidBy,rate,hoursAvailable,educationInstitutionName,startingDate,endingDate,AreaOfStudy,state,city,country,address,phoneNumber,useraccount_id) value (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, professionalTitle);
				pst.setString(2,overview);
				pst.setInt(3,subCategories.getSubCategoriesId());

				pst.setString(4, paidBy);
				pst.setString(5, rate) ;
				//pst.setFlSkill(6,  flSkill);
				pst.setInt(6, hoursAvailable );
				pst.setString(7, educationInstitutionName);
				pst.setString(8, startingDate);
				pst.setString(9,endingDate);
				pst.setString(10, areaOfStudy);
				pst.setString(11, state);
				pst.setString(12,city);
				pst.setString(13,country);
				pst.setString(14, address);
				pst.setString(15,phoneNumber);
				pst.setInt(16,getUserAccountId());

				pst.executeUpdate();

				ResultSet rs = pst.getGeneratedKeys();

				if(rs.next()){
					freelancerId = rs.getInt(1);
					flag =true;
				}


			con.close();
	}
	catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
				return flag;

}

//############Getter Setter###########################################

	   public void setFreelancerId(Integer  freelancerId )
		   {this. freelancerId= freelancerId ;}
	   public Integer getFreelancerId()
		   {return freelancerId;}

	   
	   

	   public  void  setProfessionalTitle (String  professionalTitle)
		   { this .professionalTitle =professionalTitle;}
	   public  String getProfessionalTitle () 
		   { return professionalTitle;}


	   public  void  setOverview( String overview)
		   { this .overview =overview;}
	   public  String getOverview() 
		   { return overview;}
	   

	   public  void  setPaidBy( String paidBy)
		   { this .paidBy =paidBy;}
	   public  String getPaidBy()
		   { return paidBy;}

	   public  void  setRate( String rate)
		   { this .rate =rate;}
	   public  String getRate() 
   { return rate;}

	   public  void  setSubCategories (SubCategories   subCategories)
		   { this .subCategories =subCategories;}
	   public  SubCategories getSubCategories ()
		   { return subCategories;}
	   

	   public  void  setFlSkill ( FlSkill  flSkill)
		   { this .flSkill =flSkill;}
	   public  FlSkill getFlSkill () 
		   { return flSkill;}
	   
	   public void setHoursAvailable(Integer  hoursAvailable )
		   {this. hoursAvailable= hoursAvailable ;}
	   public Integer getHoursAvailable()
		   {return hoursAvailable;}

	   public  void  setEducationInstitutionName( String educationInstitutionName)
		   { this .educationInstitutionName =educationInstitutionName;}
	   public  String getEducationInstitutionName()
		   { return educationInstitutionName;}

	   /*
	   public  void  setStartingDate ( Date  startingDate)
		   { this .startingDate =startingDate;}
	   public  Date getStartingDate() 
		   { return startingDate;}

	   public  void  setEndingDate ( Date  endingDate)
		   { this .endingDate =endingDate;}
	   public  Date getEndingDate() 
		   { return endingDate;}
	   */

	   public  void  setStartingDate ( String  startingDate)
		   { this .startingDate =startingDate;}
	   public  String getStartingDate() 
		   { return startingDate;}

	   public  void  setEndingDate ( String  endingDate)
		   { this .endingDate =endingDate;}
	   public  String getEndingDate() 
		   { return endingDate;}


	   public  void  setAreaOfStudy( String areaOfStudy)
		   { this .areaOfStudy =areaOfStudy;}
	   public  String getAreaOfStudy()
		   { return areaOfStudy;}


	   public  void  setState( String state)
		   { this .state =state;}
	   public  String getState() 
		   { return state;}

	   public  void  setCity( String city)
		   { this .city =city;}
	   public  String getCity() 
		   { return  city;}
   
	   public  void  setCountry( String country)
		   { this .country =country;}
	   public  String getCountry() 
		   { return  country;}
   

	   public  void  setAddress( String address)
		   { this .address =address;}
	   public  String getAddress()
		   { return address;}


	   public void setPhoneNumber(String phoneNumber )
		   {this. phoneNumber= phoneNumber ;}
	   public String getPhoneNumber()
		   {return phoneNumber;}

}