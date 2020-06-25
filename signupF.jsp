<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
	<link rel="stylesheet" type="text/css" href="css/signup.css" />  
	<link rel="stylesheet" type="text/css" href="css/footer2.css" />
	  <link rel="stylesheet" type="text/css" href="css/header.css" /> 

	<script src="js/signup.js"> </script>
	
  <title>Document</title>
 </head>
 <body>
 <% String errMsg = (String)request.getAttribute("err_msg"); %>

  <% if(errMsg!=null){ %>
  <div style="color:red">
	<%= errMsg %>
  <% } %>
  <c:import url="header.jsp" />
  <a href=""><%@ include file="menu.jsp"  %></a>
   <form action="signupF.do" id="regform">
    <h2>FREELANCER  SIGNUP  </h2>
	 
	 <div id="box">
	 <br />
	
	
	Email: 
		<input type="email" name="email" id="email" class="headop" />
		<br /><br />
		<span id="emerr" class="errmsg">Invalid Email!!</span>	
		<br />
	
	
	Password: 
		<input type="password" name="passw" id="passw" class="headop" />
		<br /><br />
		<span class="errmsg" id="perr">Password must be at least 6 character and at max 12 characters length</span>
		<br />
		
	
	Retype Password: 
		<input type="password" name="repass" id="repass" class="headop" />
		<br /><br />
		<span id="rperr" class="errmsg">Password and RePassword Must Match</span>
		<br />
		<input type="hidden" name="utype" id="email" class="headop" value="2" />
						

	<input type="submit" value="Signup" id="btn"/>
	<br /><br />

	
  </form>
  </div>
		
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
 </body>
</html>
