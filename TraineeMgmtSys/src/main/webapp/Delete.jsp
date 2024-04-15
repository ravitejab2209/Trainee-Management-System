<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Operation</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CSS -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2; /* Light gray background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Ensure full viewport height */
        margin: 0;
        padding: 0;
    }
    
    h1 {
        text-align: center;
        color: #333; /* Dark gray text color */
        margin-bottom: 20px;
    }

    form {
        background-color: #fff; /* White background for the form */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }
    
    .container {
            text-align: center;
        }

    input[type="text"]{
        width: calc(100% - 20px); /* Adjust width of input fields */
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    input[type="submit"] {
        width: 100%; /* Adjust width of input fields */
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #007bff; /* Blue submit button */
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
    
    .message {
    color: green;
}
    
    a.back-link {
        position: absolute;
        top: 50px; /* Adjust distance from top */
        right: 70px; /* Adjust distance from right */
        color: #007bff; /* Blue link color */
        font-size: 24px; /* Adjust font size */
        text-decoration: none;
    }

    a.back-link:hover {
        text-decoration: underline; /* Underline on hover */
    }
</style>
</head>
<body>
	<div class="container">

		<h1>Delete Operation</h1>
		<form action="TraineeServlet" method="get">
			<table border='1'>

				<tr>
					<td>Enter Trainee ID</td>
					<td><input type="text" name="traineeid" width="20" /></td>
					<td><input type="submit" value="Delete" name="action" /></td>
				</tr>
			</table>
			<%
		String deleteMessage = (String) request.getAttribute("deleteMessage");
		if (deleteMessage != null) {
		%>
		<p class="message"><%=deleteMessage%></p>
		<%
		}
		%>
		</form>
		

	</div>

<a href="home.jsp" class="back-link"><i class="fa-solid fa-arrow-left" style="color: #007bff;"></i> Back</a>

</body>
</html>