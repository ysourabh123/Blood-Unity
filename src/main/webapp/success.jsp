<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f8f9fa;
}

.container {
	text-align: center;
	background-color: white;
	border-radius: 8px;
	padding: 40px;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #28a745; /* Bootstrap success color */
	margin-bottom: 20px;
}

.btn {
	background-color: #007bff; /* Bootstrap primary color */
	color: white;
	text-decoration: none;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #0056b3; /* Darker shade on hover */
}
</style>
</head>
<body>
	<div class="container">
		<h1>Thank you for registering as a donor!</h1>
		<p>Your support can save lives.</p>
		<a href="index.jsp" class="btn">Go to Home</a>
	</div>
</body>
</html>
