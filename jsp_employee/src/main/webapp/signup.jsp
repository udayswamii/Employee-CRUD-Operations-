<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration Form</title>
    <style>
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to bottom, #e6e6e6, #f5f5f5);
    margin: 0;
    padding: 0;
}

h2 {
    text-align: center;
    color: #333;
}

form {
    max-width: 400px;
    margin: 20px auto;
    background: #fff url('path/to/your/image.jpg') center center no-repeat; /* Add your background image path */
    background-size: cover; /* This will cover the entire form with the background image */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Adjust shadow as needed */
}

label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

input,
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 16px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4caf50;
    color: white;
    padding: 12px 18px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #45a049;
}

label input[type="radio"] {
    margin-right: 1px;
}

textarea {
    resize: vertical;
}

/* Adjustments for radio buttons and spacing */
label input[type="radio"],
label {
    display: flex;
}

/* Add some spacing between radio buttons and the button */
label input[type="radio"],
button {
    margin-top: 5px;
    margin-left: 10px;
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
    <h2>Employee Registration Form</h2>
    
    <form action="signup" method="post" id="registrationForm">

        <label for="id">ID:</label>
        <input type="text" id="id" name="id" required>
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required><br>
        
        <label for="address">Address:</label>
        <textarea id="address" name="address" required></textarea>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
		
		<button type="submit">Sign Up</button>
		</form>

</body>
</html>