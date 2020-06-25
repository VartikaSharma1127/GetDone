package models;
 public class Categories{

	private Integer categoriesId;
	private String categoriesName;

	 public Categories(){}

	 public Categories( Integer categoriesId,String categoriesName){}
	 public Categories( Integer categoriesId){
			this.categoriesId = categoriesId;
	 }

	public void setCategoriesId(  Integer categoriesId){ this.categoriesId=categoriesId;}
	public Integer getCategoriesId(){ return categoriesId;}

	public void setCategoriesdName(  String categoriesName){ this.categoriesName=categoriesName;}
	public String getCategoriesdName(){ return categoriesName;}

}