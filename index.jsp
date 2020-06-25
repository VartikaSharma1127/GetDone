<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/index.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" /> 
    <link rel="stylesheet" type="text/css" href="css/footer2.css" />

  <script src="js/index.js"> </script>
  <script src="js/menu.js"> </script>
  <script src="js/service.js"> </script>

  <title>Document</title>
 </head>
 <body>

	<div id="container">
		<c:import url="header.jsp" />
		<a href=""><%@ include file="menu.jsp"  %></a>

		<div id="dd"></div>

		<!-- ####################### -->
		<div id="main_body" >
			<h2 id="heading"><u>Services We Provide</u></h2>
			<img src="images/vd2.png" class="img"/>
			<img src="images/mu1.jpg"  class="img"/>
			<img src="images/wr.jpg" class="img"/>
			<img src="images/gd1.jpg"class="img" />

			
			</br></br></br>

				<div id="service">
				<span id="tab">
						<a href="#" >Web&App Developer</a>
						<a href="#">Music </a>
						<a href="#" >Writing</a>
						<a href="#" >Graphic Designing</a>
					<!--<a href="#">Logout</a>-->
				</span>
			</div>
				</br></br></br></br>
			<a href="show_category.do" id="cat" class="headop">Browse for more category</a>
			</br></br></br></br>
			
		
		
		</div>
		<div id="hiw" ><h2>Why Use This Website</h2></div>
					<div id="dv0" >
					<br />
					<div id="dv1">
					<img src="images/user1.png" id="im1"/>
					Access to the world’s most talented freelancers.
					Vetted, handpicked freelancers to grow your business from our network.</div>

					<br /><br />
					<div id="dv2">
					<img src="images/or.png" id="im2" />					
					Global flexibility.
					Robust yet flexible workforce planning that allows you to provide services anywhere in the world. Hire freelancers in-house or remotely.
					</div>

					<br /><br />
					<div id="dv3">
					<img src="images/im3.png" id="im3" />					
					No upfront cost.
					Post your job for free and only pay when you’ve found the perfect freelancer.					
					</div>

					<div id="dv4">
					<img src="images/im4.png" id="im4" />					
					Creative, development, marketing and more.
					Our freelancers can create anything your business needs like logos, explainer videos, web builds, ad campaigns, music and and more.									
					</div>

					<div id="dv5">
					<img src="images/im5.png" id="im5" />					
					Browse portfolios to make your decision easier.
					All GetDone's freelancers have a portfolio to make it quicker to find the perfect person to match your needs.													
					</div>

					<div id="dv6">
					<img src="images/im6.png" id="im6" />					
					We’re not a recruitment agency.
					The antidote to recruitment. This platform is faster, more affordable and maintains a higher quality level.					
					</div>

					<div id="dv7">
					<img src="images/im7.png" id="im7" />					
					We help you every step of the way.
					We're with you to help when it's needed. If you have any question, ask here.								
					</div>

										
					<div id="dv8">
					<img src="images/im8.png" id="im8" />					
					Security.
					Use our escrow so you can safely pay for a job, knowing you will get the end result, or your money back.												
					</div>

										
				
					<br/></br><br/></br>		
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
		