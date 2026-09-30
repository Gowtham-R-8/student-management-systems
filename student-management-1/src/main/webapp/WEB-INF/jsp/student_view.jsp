<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>Student View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <h2 class="text-primary">Student Dashboard</h2>

  
        <tbody>
			<table class="table table-bordered text-center">

			    <thead class="table-dark">
			    <tr>
			        <th>ID</th>
			        <th>Name</th>
			        <th>Email</th>
			        <th>Course</th>
			    </tr>
			    </thead>

			    <tbody>
			        <tr>
			            <td>${student.id}</td>
			            <td>${student.name}</td>
			            <td>${student.email}</td>
			            <td>${student.course}</td>
			        </tr>
			    </tbody>

			</table>

</div>

</body>
</html>