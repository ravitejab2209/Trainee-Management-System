<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CSS -->

<style>

body, html {
        height: 100%;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f2f2f2;
    }

    .container {
        text-align: center;
        position: absolute;
        top: 30%; /* Adjust initial position to be 10% from top */
    }
    
    .fa-thumbs-up {
        font-size: 64px; /* Make the icon bigger */
        color: green; /* Change color of the icon */
    }
    
    h1{
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
	<i class="fa-solid fa-thumbs-up"></i>
		<h1>Operation Performed Successfully</h1>
	</div>


	<a href="home.jsp" class="back-link"><i class="fa-solid fa-arrow-left" style="color: #007bff;"></i> Back</a>

</body>
</html>