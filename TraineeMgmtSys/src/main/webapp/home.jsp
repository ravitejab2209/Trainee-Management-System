<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
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
            margin-bottom: 20px;
        }
        
        

        table {
            border-collapse: collapse;
            width: 80%;
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

        td a {
            text-decoration: none;
            color: #007bff; /* Blue link color */
        }

        td a:hover {
            text-decoration: underline; /* Underline link on hover */
        }
        .logout {
            position: absolute;
            top: 30px;
            right: 40px;
            display: flex;
            align-items: center;
            background-color: #d8766f; /* White background for the container */
            border-radius: 5px; /* Rounded corners */
            padding: 5px 10px; /* Add padding */
        }

        .logout a {
            color: #d8766f;
            text-decoration: none;
            margin-right: 5px;
        }
        
        
        
    </style>
</head>
<body>
 <div class="container">
<h1>Trainee Managament System</h1>
<table border='1'>
<tr>
<th>Pick your Operation</th>
</tr>
<tr>
<td><a href="Add.jsp">Add a Trainee</a></td>
</tr>
<tr>
<td><a href="Delete.jsp">Delete a Trainee</a></td>
</tr>
<tr>
<td><a href="Modify.jsp">Modify a Trainee</a></td>
</tr>
<tr>
<td><a href="Retrieve.jsp">Retrieve a Trainee</a></td>
</tr>
<tr>
<td><a href="TraineeServlet?action=RetrieveAll">Retrieve all Trainees</a></td>
</tr>
</table>
</div>

<div class="logout">
<a href="index.html" class="back-link" style="color: #ffffff;">Logout</a>
<i class="fa-solid fa-lock" style="color: #ffffff;"></i>
</div>

</body>
</html>