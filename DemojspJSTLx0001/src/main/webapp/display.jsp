<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@page import="com.vo.Student"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
<!-- This is Scriplet Way -->   
   <%
   int valK = (int)  session.getAttribute("kval");
   out.println("value of K is " + valK);
   %>

  <br />
 <!-- This is EL Way -->
  Hey the value of K is ${kval}
  
  <br />
  <!-- JSTL way -->
  <c:out value="${kval}" />
  
<!-- ------Student Object -->  

<!-- This is Scriplet Way -->
<!--  need to signify that only we need to use getters and setters -->
<!--  also signify that we definitly need to use @page import -->
  <br />  
   <%
  
   out.println("value of rollno is " + ((Student) session.getAttribute("stu1")).getRollno() );
   out.println("value of rollno is " + ((Student) session.getAttribute("stu1")).getName() );
   %>
  
  <br />
 <!-- This is EL Way -->
 <!--  here see though we have getters and setters, we can directly use .name , .rollno -->
 
 <%--  Hey the RollNo is ${stu1.getRollno()} 
  <br />
  Hey the RollNo is ${stu1.getName()} --%>
  
   Hey the RollNo is ${stu1.rollno} 
   <br />
   Hey the RollNo is ${stu1.name}
   
   
    <br />
  <!-- JSTL way -->
   Hey JSTL way of Rollno	<c:out value="${stu1.rollno}" />
   <br />
   Hey JSTL way of NAME	<c:out value="${stu1.name}" />
  <br />
  
  
  <br />
  <!-- --Arrays -->
  <c:forEach items="${stuArray}" var="s">
  		${s.rollno}                        ${s.name} <br />
  
  
  </c:forEach>
  
 </body>
</html>