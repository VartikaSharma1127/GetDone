package  models;
import java.util.ArrayList;
import java.sql.*;

public class SubCategories{
private  Integer subCategoriesId;
private  String subCategoriesName;
private  Categories  categories;

	public SubCategories( Integer subCategoriesId,String subCategoriesName){
		this.subCategoriesId = subCategoriesId;
		this.subCategoriesName = subCategoriesName;
	}

	public SubCategories( Integer subCategoriesId){
		this.subCategoriesId = subCategoriesId;
	}


//##############################
	public static ArrayList<SubCategories> collectSubCategories(){
			ArrayList<SubCategories> subCats = new ArrayList<SubCategories>();
			
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/getdone1?user=root&password=1234");
			
			String query = "select *  from subcategories";

			PreparedStatement pst = con.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				SubCategories sc = new SubCategories(rs.getInt(1),rs.getString(2));
				subCats.add(sc);
			}

			con.close();
		}catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
			}

			return subCats;
			}
//############################################
	
	
	
	
	
	
	
	public void setSubCategoriesId( Integer subCategoriesId){
		this.subCategoriesId=subCategoriesId;
	}
	public Integer getSubCategoriesId(){ 
		return subCategoriesId;
	}

	public void setSubCategoriesName(  String subCategoriesName){
		this.subCategoriesName=subCategoriesName;
	}
	public String getSubCategoriesName(){
		return subCategoriesName;
	}

	public void getCategories(  Categories categories){
		this.categories=categories;
	}
	public Categories setCategoriesId(){ 
		return categories;
	}

}