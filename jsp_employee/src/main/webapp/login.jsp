<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
    <style>
    body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to bottom, #e6e6e6, #f5f5f5);
    margin: 0;
    padding: 0;
}
   .login-container {
    width: 300px; /* Adjust the width as needed */
    margin: 50px auto; /* Center the container on the page */
    padding: 20px;
    background-color: #f5f5f5; /* Background color */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle shade */
}

.login-container h2 {
    text-align: center;
}

.login {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 8px;
}

input {
    padding: 8px;
    margin-bottom: 16px;
}

button {
    padding: 10px;
    background-color: #4caf50; /* Green background color for the button */
    color: white; /* Text color for the button */
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #45a049; /* Darker green on hover */
}

    </style>
</head>
<body>
	<h2>
		 <% String message = (String)request.getAttribute("message");
			if(message!=null){
		 %>
			<%= message%>
				<%
				 } 
				%>
	</h2>

	 <div class="login-container" >
        <h2>Employee Login</h2>
        <form class="login" action="login" method="post">
            <label for="email">Email:</label>
            <input type="email" id="username" name="email" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
    </div>

</body>
</html>