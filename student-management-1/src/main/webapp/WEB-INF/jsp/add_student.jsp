<html>
<head>
    <title>Add Student</title>

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

        <h3 class="text-center text-success mb-4">Add Student</h3>

        <form action="saveStudent" method="post">

            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" placeholder="Enter name" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Enter email" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Course</label>
                <input type="text" name="course" class="form-control" placeholder="Enter course" required>
            </div>

            <div class="d-flex justify-content-between">
                <a href="/" class="btn btn-secondary">Back</a>
                <button type="submit" class="btn btn-success">Save</button>
            </div>

        </form>

    </div>

</div>

</body>
</html>