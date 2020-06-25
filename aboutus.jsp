<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/header.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/aboutus.css" />  
  <link rel="stylesheet" type="text/css" href="css/menu.css" />  
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
		<div id="main_body"><br/>
			<h1>ABOUT US</h1>

			<div id="dv">

					<h3>Empowering all creators</h3>

					<p>
						 This platform will help companies hire ,high freelancers from our network  in creative, digital and marketing.
						 <br />	<p>

						 <p>
						 <br />
					Companies need freelancers to grow their business but they struggle to find quality. This Platform handpicks the  freelancers for a job by matching over  criteria including location and style of work. This saves companies time and money, whilst ensuring a quality result.<br /><br />	</p>
					<p>
				Our mission is to empower creators, whether companies or freelancers, by creating a billion dollars of value.
					</p>
			
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
		<!-- ####################### -->
				
		<c:import url="footer.jsp" />
	</div>	
 </body>
</html>
