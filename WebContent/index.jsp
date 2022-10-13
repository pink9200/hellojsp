<%@ page import="com.logic.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello from JSP</title>
</head>
<body>
    
   <% out.print("<h1> My Addition Application</h1>");%>
   <hr>
        Welcome to the addition Application<br>
        Current Time is:<%=new java.util.Date()%>
   <hr>
   <%
        javax.naming.InitialContext ic = new javax.naming.InitialContext();
        AdditionRemote abc=(AddittionRemote)ic.lookup("ejb:MyAdditionEJB//Addition!com.logic.AddionRemote");
        int a=abc.add(5, 7);
        out.println("Result is :"+a);
        
   %> 

</body>
</html>