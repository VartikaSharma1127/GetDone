<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/footer2.css" />  
 
  <link rel="stylesheet" type="text/css" href="css/customer.css" />  


  <script src="js/index.js"> </script>
  <script src="js/menu.js"> </script>
  <script src="js/customer.js"> </script>

  <title>Document</title>
 </head>
 <body >
        <div id="container">
		<c:import url="ProfileheaderCustomer.jsp" />
		</div>
		
		<div id="header">
		<a href="show_Myjobs.do" class="headop">Search for Freelancers</a>
		<a href="cat.jsp" class="headop">Categories</a>
		<a href="postAjob.jsp" class="headop">Post a job</a>
		<a href="show_messges.do" class="headop">Messages</a>
		<input type="text" id="search" />
</div>
<h1 align="center" id="a"><u>WELCOME TO YOUR PROFILE PAGE</u></h1></br>
<div id="dv" ></div>

<div id="main_body">
		<form action="#" method="get" id="fm">
			 <table id="box">				
			       <tr>
							<td class="lft">Your Name</td>
							<td class="mdl">:</td>
							<td class="rht"><input type="text" name="Proffessional title" size="50" ></td>
					</tr>
					 <tr>
							 <td class="lft">Area of Study</td>
							 <td class="mdl">:</td>
							 <td class="rht"><textarea rows="5" cols="20" name="Overview" size="120"></textarea></td>
					</tr>
					<tr>
							 <td class="lft">State</td>
							 <td class="mdl">:</td>
							 <td class="rht"><input type="text" ></td> 
					</tr>
					<tr> 
							<td class="lft">City</td>
							<td class="mdl">:</td>
							<td class="rht"><input type="text" ></td>
					</tr>
					<tr>
							<td class="lft">Address</td>
							<td class="mdl">:</td>
							<td class="rht"><input type="text" name="Hourly rate" ></td>
					</tr>
					<tr>
							<td class="lft">Phone Number</td>
						    <td class="mdl">:</td>
							<td class="rht"><input type="text" size="50"></td>
					</tr>
					
													
				</table>
			</form>
		</div>
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
		

	<c:import url="footer.jsp" />	

	</div>

 </body>
</html>
