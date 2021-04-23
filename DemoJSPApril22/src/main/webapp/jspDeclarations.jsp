<html>
<body>





<%!  float pi = 3.14f; 
     String name = "Krishna";
     boolean istemphottoday = false;
%>
<!-- This method you use it in same page -->
<!-- Show example of CheckSomething, where you acutally need to create a object -->
Using expression <%= makeItLower("HELLO WORLD") %>


<!-- 

dsfd
dsfsd
f
dsf
sdf
sd


 -->
<%!
	String makeItLower(String data) {
	       return data.toLowerCase();
   }
%>


</body>
</html>