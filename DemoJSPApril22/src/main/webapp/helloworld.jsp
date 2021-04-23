<html>
<body>

<h3> Hello World  of Java JSP</h3>
<!-- 

  The below is called JSP expression
  It has object's tostring method (example Date object)

-->

The time on the tomcat server now is <%= new Date() %>
<%@page import="java.util.*"%>
<br />
<!-- 
  You can call a object's method example String.toUpperCase()

 -->
<!-- Here we are introducing JSP declaration too -->
<%! String Name = "krishna murty vucha"; %>


The upper case of Name is <%= new String(Name).toUpperCase() %>	


<!-- 
  You can give arithmetic expression
  you can give boolean expression

 -->
 
 <!-- Expressions for arithmetic expression  -->
<br />
Number 25 multiplied by 4 is <%= 25*4 %>		
	
	<!--  you can give boolean expression
	 -->
	 
	 
	 <br />
      Is 69 less than 75 <%= 69 < 75 %>
	
	 
	
</body>


</html>