<em></em><%@ page import="models.*,java.util.*,listeners.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/footer2.css" />  
  <link rel="stylesheet" type="text/css" href="css/details.css" />  

  <script src="js/index.js"> </script>
 

  <title>Document</title>
 </head>
 <body>
	<div id="container">
		<c:import url="addheader.jsp" />
			<form action="savedetailsf.do">
				<table id="table_box" width="90%"> 
				 <caption><u>ADD DETAILS</u></caption>
					<tr>
						<td class="lft">Proffessional title</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Protile" size="50" ></td>
					</tr>
					<tr>
						<td class="lft">Overview</td>
						<td class="mdl">:</td>
						<td class="rht"><textarea rows="5" cols="20" name="overview" size="120"></textarea></td>
					</tr>
					<tr>
						<td class="lft">subcategory</td>
						<td class="mdl">:</td>
							<td class="rht">
							<Select name="scat" id="sel"   >	
							<option>Select sub  Category</option>
							<% ArrayList<SubCategories> subCats = (ArrayList)application.getAttribute("subcats"); %>
							<% for(SubCategories sc : subCats){ %>	
							<option value="<%= sc.getSubCategoriesId() %>"><%= sc.getSubCategoriesName() %></option>
							<%}%>

									
							</Select>
							</td>
							</tr>
									
						<td class="lft">Paid by</td>
						<td class="mdl">:</td>
							<td class="rht" id="radio">
							Weekly<input type="radio" name="paidby" value="Weekly" />&nbsp
							Monthly<input type="radio" name="paidby" value="Monthly" />
							After Completion<input type="radio" name="paidby" value="After Completion" />
						
							</td>
									
				<tr>
						<td class="lft">Hourly Rate</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Hrate" ></td>
				<tr>
						<td class="lft"> Your Skills</td>
						<td class="mdl">:</td>
							<td class="rht">
							<Select name="skills" id="sel" multiple="multiple">
									
							<option>Select skill</option>
							<% ArrayList<Skill> SL = (ArrayList)application.getAttribute("skill"); %>
							<% for(Skill sl : SL){ %>	
							<option value="<%= sl.getSkillId() %>"><%= sl.getSkillName() %></option>
							<%}%>
							</Select>	
									

												
							</Select>
							</td>
							</tr>
					<tr>
						<td class="lft">Hours Available</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="hoavi"  ></td>
					</tr>

					<tr>
						<td class="lft">Institute</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="institute"  size="50"></td>
					</tr>

					<tr>
						<td class="lft">Start date</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="sdate"></td>
					</tr>
					<tr>
						<td class="lft">End date</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="edate"></td>
					</tr>
					<tr>
						<td class="lft">Area of Study</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="aos"  size="50"></td>
					</tr>
					
					<tr>
						<td class="lft">Address</td>
						<td class="mdl">:</td>
						<td class="rht"><textarea rows="5" cols="20" name="address" size="180"></textarea></td>
					</tr>

					<tr>
						<td class="lft">City</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="city"  ></td>
					</tr>
					<tr>
						<td class="lft">State</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="state"  ></td>
					</tr>
					<tr>
						<td class="lft">Country</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="country"  </td>
					</tr>
					

					<tr>
						<td class="lft">PhoneNum</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="pnum"  </td>
					</tr>
					<tr>
						<td colspan="3" id="svbtn_box">
						<input type="submit" value="Save & continue" id="svbtn"  /></td>
					</tr>
				
			</table>
			
		</form>
		
	

		<!-- ####################### -->
		<br/></br><br/></br><br/></br><br/></br>
						<div id="footer2">
						
					<span id="ft">
						<a href="#" ><h4>Help</h4></a></br>
						<a href="show_aboutus.do" >About us</a></br></br>
						<a href="show_howitworks.do" >How it works</a></br></br>
						<a href="show_contactus.do" >Contact us</a></br></br>
						<!--<a href="#">Logout</a>-->
					</span>
				</div>
				
		<c:import url="footer.jsp" />
	</div>	
 </body>
</html>
