<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Operation</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CSS -->

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        
         .container {
            text-align: center;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
        background-color: #fff; /* White background for the form */
        padding: 1px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
         text-align: center;
    }

        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 600px; /* Limit the table width */
            background-color: #ffffff; /* White background for the table */
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
            margin: auto; /* Center the table horizontally */
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007bff; /* Blue header background */
            color: #fff; /* White text color for header */
        }

        td input[type="text"],
        td select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        td input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 0;
            border: none; /* Remove button border */
            background-color: #007bff; /* Blue button background color */
            color: #fff; /* Button text color */
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        td input[type="submit"]:hover {
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

		<h1>Enter Trainee Details</h1>
		<form action="TraineeServlet" method="get">
			<table border='1'>
				<tr></tr>

				<tr>
					<td>Trainee ID</td>
					<td><input type="text" name="traineeid" width="20" /></td>
				</tr>
				<tr>
					<td>Trainee Name</td>
					<td><input type="text" name="traineename" width="20" /></td>
				</tr>
				<tr>
					<td>Trainee Location</td>
					<td><input type="text" name="traineelocation" width="20" /></td>
				</tr>
				<tr>
					<td>Trainee Domain</td>
					<td><select name="traineedomain">

							<option value="">Please Select</option>
							<option value="JEE">JEE</option>
							<option value=".Net">.Net</option>
							<option value="Mainframe">Mainframe</option>
					</select></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="Add Trainee"
						name="action" /></td>
				</tr>
			</table>


			<%
			String addMessage = (String) request.getAttribute("addMessage");
			if (addMessage != null) {
			%>
			<p class="message"><%=addMessage%></p>
			<%
			}
			%>
		</form>

	</div>

	<a href="home.jsp" class="back-link"><i
		class="fa-solid fa-arrow-left" style="color: #007bff;"></i> Back</a>

</body>
</html>