package models;

import java.sql.*;

import java.util.ArrayList;
import org.jasypt.util.password.StrongPasswordEncryptor;
public class CUser{
	private Integer userAccountId;
	private String email;
	private String password;
	private Integer userType;

	public CUser(){
	
	}

	public CUser(Integer userAccountId,String email,String password,Integer userType){
		this.userAccountId = userAccountId;
		this.email = email;
		this.password = password;
		this.userType=userType;

	}
	public CUser(String email,String password){
	
		this.email = email;
		this.password = password;


	}

	public static ArrayList<CUser> collectUsersF(){
		ArrayList<CUser> users = new ArrayList<CUser>();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			String query = "select * from userAccount";

			PreparedStatement pst = con.prepareStatement(query);

			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
			CUser user = new CUser(rs.getInt("userAccount_id"),rs.getString("email"),rs.getString("password"),rs.getInt(" userType_id"));
			users.add(user);}
			}
			catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}

		return users;
	}
//********************************************************************************
public boolean saveUserC(){
		boolean flag = false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			String query = "insert into userAccount (email,password,userType_id) value (?,?,?)";

			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1,email);
			//pst.setString(2,password);
			StrongPasswordEncryptor spe = new StrongPasswordEncryptor();
			String encPass = spe.encryptPassword(password);
			pst.setString(2,encPass);
			pst.setInt(3,userType);

			int res = pst.executeUpdate();

			if(res==1){
				flag = true;
			}			


			con.close();
		}catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
				}

				return flag;
			}
//*************************************************************************************
public boolean loginUserC(){
		boolean flag = false;

		try{
			Class.forName("com.mysql.jdbc.Driver");		
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			//String query = "select password,userType_id,from userAccount where email=?";
			String query = "select password,userAccount_id ,userType_id from userAccount where email=?";
						 
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1,email);			

			ResultSet rst = pst.executeQuery();
			
			StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

			if(rst.next()){
				if(spe.checkPassword(password,rst.getString(1))){
					userAccountId = rst.getInt(2);
					userType = rst.getInt(3);			
						flag = true;
				}
			}

			con.close();
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}

		return flag;
	}


	public void setPassword(String password){this.password = password;}
	public String getPassword(){return password;}

	public void setEmail(String email){this.email = email;}
	public String getEmail(){return email;}

	
	public void setUserAccountId(Integer userAccountId){this.userAccountId = userAccountId;}
	public Integer getUserAccountId(){return userAccountId;}

	public void setUserType(Integer userType){this.userType = userType;}
	public Integer getUserType(){return userType;}



}