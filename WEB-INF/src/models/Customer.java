 package models;
 import java.sql.*;

public class Customer extends CUser{ 
		private Integer jobPosterId;
		private String  name;
		private String  address;
		private String  phoneNumber;
		private String areaOfStudy;
		private  String state;
		private String city;
		
		public  Customer()
						   {
						   }
		public Customer( Integer jobPosterId,String   name , String areaOfStudy , String  address ,String   phoneNumber ,String state , String city)
	{
		this. jobPosterId= jobPosterId;
			this.name=  name ;
			this.areaOfStudy =areaOfStudy ;
			this.address=address ;
			this.phoneNumber=phoneNumber ;
			this.state= state ;
			this.city=city ;
		
	}
		public void saveCustomer(){
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone?user=root&password=1234");
			
			String query = "insert into jobPoster (name,AreaOfStudy,address,phoneNumber,state,city) value (?,?,?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query);
				pst.setString(1,name );
				pst.setString(2, areaOfStudy );
				pst.setString(3, address );
				pst.setString(4,phoneNumber );
				pst.setString(5, state );
				pst.setString(6,city );
				 pst.setInt(7,getUserAccountId());
				
				pst.executeUpdate();


			con.close();
	}
	catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
}

//############Getter Setter###########################################

		public  void  setName (String name)
			{ this .name =name;}
		public  String getName() 
			{ return name;}


		public  void  setAreaOfStudy( String areaOfStudy)
			{ this .areaOfStudy =areaOfStudy;}
		public  String getAreaOfStudy()
			{ return areaOfStudy;}

		public  void  setAddress( String address)
			{ this .address =address;}
		public  String getAddress()
			{ return address;}


		public void setPhoneNumber(String  phoneNumber )
			{this. phoneNumber= phoneNumber ;}
		public String  getPhoneNumber()
			{return phoneNumber;}
		
		
		public  void  setState( String state)
			{ this .state =state;}
		public  String getState() 
			{ return state;}

		public  void  setCity( String city)
			{ this .city =city;}
		public  String getCity() 
			{ return  city;}
	

}