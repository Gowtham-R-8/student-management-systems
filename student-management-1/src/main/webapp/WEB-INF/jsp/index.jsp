<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>Student Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-primary">Student Dashboard</h2>
        <a href="/logout" class="btn btn-danger">Logout</a>
    </div>

    <!-- Buttons -->
    <div class="mb-3">
        <a href="/showNewStudentForm" class="btn btn-success"> Add Student</a>
        <a href="/viewStudents" class="btn btn-primary">View Students</a>
    </div>

    <!-- Table -->
    <div class="card shadow">
        <div class="card-body">

            <table class="table table-bordered text-center">

                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Course</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="student" items="${listStudents}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.email}</td>
                        <td>${student.course}</td>
                        <td>
                            <a href="/showFormForUpdate/${student.id}" class="btn btn-warning btn-sm">Edit</a>
                            <a href="/deleteStudent/${student.id}" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Delete this student?')">
                               Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>
    </div>

</div>

</body>
</html>