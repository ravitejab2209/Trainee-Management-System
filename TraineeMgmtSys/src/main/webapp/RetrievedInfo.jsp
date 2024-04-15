<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieved Info</title>
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
    
    .container {
            text-align: center;
        }
    
    h1 {
        text-align: center;
        color: #333; /* Dark gray text color */
        margin-bottom: 20px; /* Add space between h1 and form */
        margin-right: 20px;
    }

    table {
        border-collapse: collapse;
        width: 100%; /* Adjust table width as needed */
        max-width: 600px; /* Limit the table width */
        background-color: #fff; /* White background for the table */
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
    }

    th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
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
 

<h1>Trainee Info</h1>
	<table border="1">
	<tr>
				<td>Trainee ID</td>
				<td>Trainee Name</td>
				<td>Trainee Domain</td>
				<td>Traianee Location</td>
			</tr>
			<tr>
				<td>${trainee.traineeId}</td>
				<td>${trainee.traineeName}</td>
				<td>${trainee.traineeLocation}</td>
				<td>${trainee.traineeDomain}</td>
			</tr>
	</table>
	
<a href="home.jsp" class="back-link"><i class="fa-solid fa-arrow-left" style="color: #007bff;"></i> Back</a>


</div>
</body>
</html>