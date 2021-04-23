<html>
<body>


<!-- 
Best Practices
   Minimize the amount of scriplet code in JSP
   Avoid dumping thousands of lines of code in JSP
   If you use lot of code , refactor this into a separate java classes
   make use of MVC
 -->
<%

  for (int i=1; i <= 5;i++) {
	  out.println("<br > I love to code JSP : " + i );
  }
	  
  

%>
</body>
</html>