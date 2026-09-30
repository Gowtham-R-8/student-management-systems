<html>
<head>
    <title>Student Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4 mx-auto" style="max-width:500px">

        <h3 class="text-center text-primary mb-3">Student Registration</h3>

        <!-- ✅ FIXED ACTION -->
        <form action="/register" method="post">

            <div class="mb-2">
                <label>Email (Username)</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-2">
                <label>Password</label>
                <input type="password" name="password" class="form-control" required>
            </div>

            <!-- ❌ REMOVE THESE -->
            <!-- name -->
            <!-- course -->

            <button class="btn btn-success w-100 mt-2">Register</button>

        </form>

    </div>

</div>

</body>
</html>