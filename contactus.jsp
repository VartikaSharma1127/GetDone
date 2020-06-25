<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
	<link rel="stylesheet" type="text/css" href="css/contactus.css" />  
	<link rel="stylesheet" type="text/css" href="css/footer2.css" />  
	
	<script src="js/index.js"> </script>
  <title>Document</title>
 </head>
 <body>
 <div id="container">
	 <c:import url="header.jsp" />		
	 <a href=""><%@ include file="menu.jsp"  %></a>
	 <!-- ####################### -->
	 <div id="main_body"><h2>CONTACT US</h2>	
	 <div id="fm">xyz</div>
		 <form action="add_details.do" method="get">
			 <table id="contactus_form_box">
				 
				
				 <tr>
					 <td class="lft">Name</td>
					 <td class="mdl">:</td>
					 <td class="rht"><input class="fld" type="text" name="name" /></td>
				 </tr>
				 <tr>
					 <td class="lft">Email</td>
					 <td class="mdl">:</td>
					 <td class="rht"><input class="fld" type="email" name="email" /></td>
				 </tr>
				 <tr>
					 <td class="lft">Contact Number</td>
					 <td class="mdl">:</td>
					 <td class="rht"><input class="fld" type="text" name="num" /></td>
				</tr>	
				<tr>
					 <td class="lft">Address</td>
					 <td class="mdl">:</td>
					 <td class="rht"><textarea rows="4" cols="50" id="abc"></textarea>

				</tr></br></br></br>	
				 <tr>
					 <td colspan="3" id="btn_box">
						  

						 <input type="submit" value="submit" id="sgnbtn"  />		
					 </td>
				 </tr>
			 </table>				
		 </form>
	
	 </div>
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
