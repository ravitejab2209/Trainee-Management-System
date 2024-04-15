<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Operation</title>

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

    input[type="text"] {
        width: calc(100% - 20px); /* Adjust width of input fields */
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    input[type="submit"] {
        width: calc(100% - 0px); /* Adjust width of input fields */
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
</style>
</head>
<body>
 <div class="container">


<h1>Retrieve Operation</h1>
	<form action="TraineeServlet">
		<table border='1'>
			<tr></tr>

			<tr>
				<td>Enter Trainee ID</td>
				<td><input type="text" name="traineeid" width="20" /></td>
				<td><input type="submit" value="Retrieve" name="action" /></td>
			</tr>
		</table>
		</form>
		
		</div>
</body>
</html>