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
  <link rel="stylesheet" type="text/css" href="css/cdetails.css" />  

  <script src="js/index.js"> </script>
 

  <title>Document</title>
 </head>
 <body>
	<div id="container">
		<c:import url="addheader.jsp" />
			<form action="savedetailsc.do">
				<table id="table_box" width="90%"> 
				 <caption><u>ADD DETAILS</u></caption>
					<tr>
						<td class="lft">Name</td>
						<td class="mdl">:</td>
						<td class="rht"><input type="text" name="name" size="50" ></td>
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
