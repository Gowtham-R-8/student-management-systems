<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>View Students</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <h2 class="text-primary mb-4"> Student List</h2>

    <a href="/" class="btn btn-secondary mb-3">Back</a>

    <div class="card shadow">
        <div class="card-body">

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
                <c:forEach var="student" items="${listStudents}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.email}</td>
                        <td>${student.course}</td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>
    </div>

</div>

</body>
</html>