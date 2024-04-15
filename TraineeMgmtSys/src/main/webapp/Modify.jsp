<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Operation</title>
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
        margin-bottom: 20px;
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
    input[type="text"],
    input[type="submit"],
    select {
        width: calc(100% - 20px); /* Adjust width of input fields */
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

	
	<form action="TraineeServlet" method="get">
	<h1>Modify Operation</h1>
		<table border='1'>
			<tr></tr>

			<tr>
				<td>Enter Trainee ID</td>
				<td><input type="text" name="traineeid" width="20" /></td>
			</tr>
		</table>


		<h1>Details to Modify</h1>
		<table border="1">
			<tr>
				<td>Enter Trainee Name</td>
				<td><input type="text" name="traineename" width="20" /></td>

				<tr>
		<td>Enter Trainee Location</td>
				<td><input type="text" name="traineelocation" width="20" /></td>
			</tr>
			<tr>
				<td>Enter Trainee Domain
				</td>
				<td> <select name="traineedomain">
				
				<option value="">Please Select</option>
				<option value="JEE">JEE</option>
				<option value=".Net">.Net</option>
				<option value="Mainframe">Mainframe</option>
				</select>
				</td >
			</tr>
			<!-- <tr>
				<td>Enter Trainee Domain</td>
				<td><input type="text" name="traineedomain" width="20" /></td>
			</tr> -->
			<tr align="right">
				<td colspan="2"><input type="submit" value="Modify" name="action" /></td>
			</tr></table>
			
			<%
		String modifyMessage = (String) request.getAttribute("modifyMessage");
		if (modifyMessage != null) {
		%>
		<p class="message"><%=modifyMessage%></p>
		<%
		}
		%>
	</form>
	
	</div>

<a href="home.jsp" class="back-link"><i class="fa-solid fa-arrow-left" style="color: #007bff;"></i> Back</a>

</body>
</html>