package models;
class FlSubCategories{
		
    private  Integer flSubCategoriesId;
	private Freelancer freelancer;
	private  SubCategories subCategories;
		
		public FlSubCategories(){}

		public FlSubCategories(Integer flSubCategoriesId, Freelancer freelancer,SubCategories subCategories){
		
		}

		public void setFlSubCategoriesId(  Integer flSubCategoriesId){ this.flSubCategoriesId=flSubCategoriesId;}
		public Integer getFlSubCategoriesId(){ return flSubCategoriesId;}

		public void setFreelancer(Freelancer  freelancer ){this. freelancer= freelancer ;}
		public Freelancer getFreelancer(){return freelancer;}

		public void setSubCategoriesd(  SubCategories subCategories){ this.subCategories=subCategories;}
		public SubCategories getSubCategoriesd(){ return subCategories;}

}
