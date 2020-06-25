<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/postAjob.css" />  
<link rel="stylesheet" type="text/css" href="css/footer2.css"/>
  <script src="js/index.js"> </script>
 

  <title>Document</title>
 </head>
 <body>
	<div id="container">
<c:import url="addheader.jsp" />
			<form action="#">
				<table id="table_box" align="center"> 
				 <caption>POST A JOB</caption>
					<tr>
						<td class="lft">Your Job Name</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Proffessional title" size="50" ></td>
					</tr>
					<tr>
						<td class="lft">Job Description</td>
						<td class="mdl">:</td>
						<td class="rht"><textarea rows="5" cols="20" name="Overview" size="120"></textarea></td>
					</tr>
					<tr>
						<td class="lft">Last Date of Job Application</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Hourly rate" ></td>	
					</tr>
						
					</tr>
						<td class="lft">Paid by</td>
						<td class="mdl">:</td>
							<td class="rht">
							Weekly<input type="radio" name="gender" value="Weekly" />&nbsp
							Monthly<input type="radio" name="gender" value="Monthly" />
							After Completion<input type="radio" name="gender" value="After Completion" />
							</td>
					</tr>
									
				<tr>
						<td class="lft">Rate</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name=" rate" ></td>
				<tr>
						<td class="lft"> Your are</td>
						<td class="mdl">:</td>
							<td class="rht">
								<Select name="you are" id="sel"   >	
									
									<option>Individual</option>
									<option>Comapany</option>
									<option>java</option>
									
								</Select>
							</td>
							</tr>
					<tr>
						<td class="lft">Experience</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Hours Available"  ></td>
					</tr>

					<tr>
						<td class="lft">Location</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="Institute"  size="50"></td>
					</tr>

					
					<tr>
						<td colspan="3" id="svbtn_box">
						<input type="submit" value="Post" id="svbtn"  /></td>
					</tr>
				
			</table>
			
		</form>
	</br></br></br></br></br></br></br></br>
				<div id="footer2">
						
					<span id="ft">
						<a href="#" ><h4>Help</h4></a></br>
						<a href="show_aboutus.do" >About us</a></br></br>
						<a href="show_howitworks.do" >How it works</a></br></br>
						<a href="show_contactus.do" >Contact us</a></br></br>
						<!--<a href="#">Logout</a>-->
					</span>
				</div>
		
	

		<!-- ####################### -->
				
		<c:import url="footer.jsp" />
	</div>	
 </body>
</html>
