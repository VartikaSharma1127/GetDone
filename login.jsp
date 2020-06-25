<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/login.css" />  
  <link rel="stylesheet" type="text/css" href="css/body.css" />  
  <link rel="stylesheet" type="text/css" href="css/footer2.css" />  



  <title>Document</title>
 </head>
 <body>
	<div id="container">
		<c:import url="header.jsp" />		
		<a href=""><%@ include file="menu.jsp"  %></a>
		

		
		<!-- ####################### -->
		<div id="main_body">
			<form action="login.do" method="get" id="fm">
				<table id="login_form_box">
					<caption>LOGIN</caption>
					
					<tr>
						<td class="lft">Email</td>
						<td class="mdl">:</td>
						<td class="rht"><input class="fld" type="email" name="email" /></td>
					</tr>
					<tr>
						<td class="lft">Password</td>
						<td class="mdl">:</td>
						<td class="rht"><input class="fld" type="password" name="passw" /></td>
					</tr>
					<tr>
						<td colspan="3" id="btn_box">
							 

							<input type="submit" value="Login" id="lgnbtn" /><br /><br />	
						<a href="index.jsp" id="h" align="center">New user please sign up</a>
						</td>
						
					</tr>
					
				</table>
			</form>
	<br/></br><br/></br><br/></br><br/></br>		<br/></br><br/></br><br/></br><br/></br>
		</div><div id="footer2">
						
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
