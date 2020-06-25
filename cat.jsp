<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
	<link rel="stylesheet" type="text/css" href="css/signup.css" />  
	<link rel="stylesheet" type="text/css" href="css/footer2.css" />  
	<link rel="stylesheet" type="text/css" href="css/Browseformorecategory.css" />  
	
	<script src="js/index.js"> </script>
	<script src="js/menu.js"> </script>
  <title>Document</title>
 </head>
 <body>
 <div id="container">

	 <!-- ####################### -->
	 <div id="main_body">
		 <form action="add_details.do" method="get">
			
				
				<div id="mdv" ><h1>Browse for more category</h1></div>
				 
				<table  width="100%"  cellspacing="40" id="t"  >	
				
				<tr>	
					<td  class="dif" >Web Developer</td>
					<td class="dif" >Graphic Designing</td>
					<td class="dif" >Music</td>
					<td class="dif" >Writing</td>
					</tr>

					<tr class="op">
					<td class="menuop">Frontend Developer</td>
					<td class="menuop" >Get a logo design</td>
					<td class="menuop">Classical Music</td>
					<td class="menuop">Article/Feature Writing  </td>

				</tr>

				<tr class="op">	

					<td class="menuop">Backend Developer</td>
					<td class="menuop">Get a branding</td>					
					<td class="menuop">Jazz Music</td>					
					<td class="menuop">Copy/Content Writing  </td>					
				</tr>
									
				<tr class="op">	
					<td class="menuop">FullStack Developer</td>
					<td class="menuop">Get a brochure</td>
					<td class="menuop">Folk Music</td>
					<td class="menuop">Blogging</td>
					
				</tr>

				
			</table>
			<br /><br /><br /><br /><br />

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
