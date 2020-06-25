<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" type="text/css" href="css/common.css" />  
  <link rel="stylesheet" type="text/css" href="css/login.css" />  
  <link rel="stylesheet" type="text/css" href="css/myjobs.css" />  
  
  <script src="js/index.js"> </script>

  <title>Document</title>
 </head>
 <body>
 <div>
	<c:import url="header.jsp" />
		
		<%@ include file="menu.jsp"  %>
	<br /><br />
		
 <div id="jobs">
	<h2 class="menuop"> 1.Requested Jobs/Projects</h2>
	<h2 class="menuop"> 2.Ongoing Jobs/Projects</h2>
	<h2 class="menuop"> 3.Completed Projects</h2>
  </div>
	<c:import url="footer.jsp" />		
  </div>
 </body>
</html>
