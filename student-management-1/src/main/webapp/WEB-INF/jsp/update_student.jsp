<html>
<head>
    <title>Update Student</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
        }
    </style>
</head>

<body>

<div class="container mt-5">

    <div class="card shadow p-4 mx-auto" style="max-width: 500px;">

        <h3 class="text-center text-warning mb-4"> Update Student</h3>

        <form action="/saveStudent" method="post">

            <!-- Hidden ID -->
            <input type="hidden" name="id" value="${student.id}"/>

            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control"
                       value="${student.name}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control"
                       value="${student.email}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Course</label>
                <input type="text" name="course" class="form-control"
                       value="${student.course}" required>
            </div>

            <div class="d-flex justify-content-between">
                <a href="/" class="btn btn-secondary"> Back</a>
                <button type="submit" class="btn btn-warning">Update</button>
            </div>

        </form>

    </div>

</div>

</body>
</html>