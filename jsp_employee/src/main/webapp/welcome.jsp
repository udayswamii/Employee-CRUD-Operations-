<%@page import = "jsp_employee.Employee"%>
<%@page import ="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
 <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        button{
        	background-color:;
        	color: red;
        }
        #btnlogout{
	      padding: 10px;
	    background-color: #4caf50; /* Green background color for the button */
	    color: white; /* Text color for the button */
	    border: none;
	    cursor: pointer;
        }
        #btnlogout:hover {
        	background-color: #45a049;
        }
	
}
    </style>
</head>
<body>
	<%
		String name = (String)request.getAttribute("cookie");
		if(name!=null){
	%>
	<h2>Changed by
		<%=name%>
	</h2>
	<%
		}
	%>
	
	<% 
		List<Employee>list = (List)request.getAttribute("list");
	%>

<table>
 <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Phone</th>
    <th>Address</th>
    <th>Email</th>
    <th>Password</th>
    <th>Delete</th>
    <th>Update</th>
    
 </tr>
 <%
 	for (Employee employee:list){ 
 %>
 	<tr>
 		<td><%=employee.getId()%></td>
 		<td><%=employee.getName()%></td>
 		<td><%=employee.getPhone()%></td>
 		<td><%=employee.getAddress()%></td>
 		<td><%=employee.getEmail()%></td>
 		<td><%=employee.getPassword()%></td>  
 		<td><a href="delete?id=<%=employee.getId()%>"><button>Delete</button></a></td>
 		<td><a href="update?id=<%=employee.getId()%>"><button >Update</button></a></td>
 		
 		</tr>
 		<%
 			} 
 		%>
 	</table>
 	<a href="LogoutController" ><button id="btnlogout">Logout</button></a>
 	</body>
	
</html>