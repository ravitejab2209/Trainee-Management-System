<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unsuccessful</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CSS -->

<style>

body, html {
    height: 100%;
    margin: 0;
    display: flex;
    flex-direction: column; /* Ensure elements are stacked vertically */
    justify-content: center;
    align-items: center;
    background-color: #f2f2f2;
}

.container {
    text-align: center;
    position: relative;
}

.fa-circle-exclamation {
    font-size: 72px; /* Increase the icon size */
    color: #de2121; /* Change color of the icon */
}

h1 {
    color: #de2121;
}

.unsuccess {
    margin-top:-10px; /* Adjust the margin between container and unsuccess div */
    display: flex; /* Make child elements appear side by side */
    align-items: center; /* Center the items vertically */
}

.unsuccess a {
    margin-left: 10px; /* Add some space between the icon and the link */
    color: #007bff; /* Blue link color */
    text-decoration: none;
    font-size: 18px;
}

.unsuccess a:hover {
    text-decoration: underline; /* Underline on hover */
}

   
</style>
</head>
<body>


	<div class="container">
	<i class="fa-solid fa-circle-exclamation" style="color: #de2121;"></i>
		<h1>Login Failed</h1>
	</div>
	
	<div class="unsuccess">
	<i class="fa-solid fa-user-lock" style="color: #4375cb;"></i>
	<a href="index.html" style="color: #4375cb;">try again</a>
	</div>
	
	
	

</body>
</html>