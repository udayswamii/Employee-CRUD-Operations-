<%@page import="jsp_employee.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
 <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            width: 400px;
            box-sizing: border-box;
        }
        form:hover{
        	box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
        	
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input {
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="reset"] {
            background-color:  #2980b9;
        }

        button:hover {
            background-color: #e74c3c;
        }
    </style>
</head>
<body>
	<% 
		Employee employee=(Employee)request.getAttribute("emp"); 
	%>
	<form action="edit" method="post">
		<label for="id">ID:</label>
        <input type="text" id="id" name="id"  value=<%=employee.getId() %> readonly="readonly">
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value=<%=employee.getName() %> >
        
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" value=<%=employee.getPhone()%> ><br>
        
        <label for="address">Address:</label>
        <input id="address" name="address" value=<%=employee.getAddress()%> >
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value=<%=employee.getEmail()%>>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value=<%=employee.getPassword()%> >
		
		<button type="submit">Update</button>
		<button type="reset">Reset</button>
	</form>
</body>
</html>