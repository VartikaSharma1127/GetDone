<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/footer2.css" />  
  <link rel="stylesheet" type="text/css" href="css/freelancer.css" />  

  

  <script src="js/index.js"> </script>
  <script src="js/menu.js"> </script>
  <script src="js/Freelancer.js"> </script>

  <title>Document</title>
 </head>
 <body >
        <div id="container">
		<c:import url="ProfileheaderFreelancer.jsp" />
		</div>
		
		<div id="header">
		<a href="show_Myjobs.do" class="headop">Search for Jobs</a>
		<a href="cat.jsp" class="headop">Categories</a>
		<a href="applyForJob.jsp" class="headop">Apply for Jobs</a>
		<a href="show_messges.do" class="headop">Messages</a>
		<input type="text" id="search" />
</div>
<h1 align="center" id="a"><u>WELCOME TO YOUR PROFILE PAGE</u></h1></br>
<div id="dv"></div>
<form action="#" method="get">
		<table id="table_box" align="center">
						
						<tr>
						<td class="lft">Proffessional title</td>
						<td class="mdl">:</td>
						<td class="rht"> ${fl.professionalTitle}</td>
					</tr>
	
					<tr>
						<td class="lft">Overview</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.overview}</td>
					</tr>
	
      
					<tr>
						<td class="lft">Paid by</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.paidBy}</td>
					</tr>	
									

					<tr>
						<td class="lft">Hourly Rate</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.rate}</td>
				</tr>
					<tr>
						<td class="lft">Hours Available</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.hoursAvailable}</td>
					</tr>

					<tr>
						<td class="lft">Institute</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.educationInstitutionName}</td>
					</tr>

					<tr>
						<td class="lft">Start date</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.startingDate}</td>
					</tr>
					<tr>
						<td class="lft">End date</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.endingDate}</td>
					</tr>
 
					<tr>
						<td class="lft">Area of Study</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.areaOfStudy}</td>
					</tr>

					<tr>
						<td class="lft">Address</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.address}/textarea></td>
					</tr>

					
					<tr>
						<td class="lft">State</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.state}</td>
					</tr>
					<tr>
						<td class="lft">Country</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.country}</td>
					</tr>
			
					<tr>
						<td class="lft">PhoneNumber</td>
						<td class="mdl">:</td>
						<td class="rht">${fl.phoneNumber}</td>
					</tr>
				
					
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
		
	
			<c:import url="footer.jsp" />

				
			
			
</div>

 </body>
</html>
