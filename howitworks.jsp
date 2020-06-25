<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/howitworks.css" />  
  <link rel="stylesheet" type="text/css" href="css/footer2.css" />  

  <script src="js/index.js"> </script>
  <script src="js/menu.js"> </script>

  <title>Document</title>
 </head>
 <body>
	<div id="container">
		<c:import url="header.jsp" />	
		<a href=""><%@ include file="menu.jsp"  %></a>
		
		<!-- ####################### -->
		<div id="main_body">

			<div id="mdv" ><h1>How it works</h1></div>
			<div id="dv" >
			
			<br/><br/>
			<h5>Post a job (it’s free)</h5> -  Tell us about your project.We will connect you with freelancers and agencies around the world, or near you.
			<br/></br><br/>

			<h5>Bids come to you</h5> -Get qualified proposals and compare bids, reviews, and prior work. Interview favorites and hire the best fit.
			<br/></br><br/>

			<h5>Collaborate easily</h5> -Use GetDone to chat , share files, and track project milestones from your desktop or mobile.
			<br/></br><br/>

			<h5>Payment simplified</h5> -Pay hourly or fixed-price and receive invoices through GetDone. Pay for work you authorize.<br/></br><br/></br><br/></br>		
			</div>
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
