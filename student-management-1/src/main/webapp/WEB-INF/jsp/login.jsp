<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #4e73df, #1cc88a);
        }
        .card {
            border-radius: 15px;
        }
    </style>
</head>

<body class="d-flex justify-content-center align-items-center vh-100">

<div class="card p-4 shadow" style="width:370px">

    <h3 class="text-center mb-3 text-primary">Login</h3>

    <!-- ✅ ERROR MESSAGE (FIXED) -->
    <c:if test="${not empty error}">
        <div class="alert alert-danger text-center">
            ${error}
        </div>
    </c:if>

    <form action="/login" method="post">

        <!-- ROLE -->
        <div class="mb-2">
            <label>Role</label>
            <select name="role" class="form-control">
                <option value="staff">Staff</option>
                <option value="student">Student</option>
            </select>
        </div>

        <!-- EMAIL -->
        <div class="mb-2">
            <label>Email</label>
            <input type="text" name="username" class="form-control" placeholder="Enter email" required>
        </div>

        <!-- PASSWORD WITH EYE -->
        <div class="mb-2">
            <label>Password</label>
            <div class="input-group">
                <input type="password" id="password" name="password" class="form-control" required>
                <span class="input-group-text" onclick="togglePassword()" style="cursor:pointer;">
                    <i class="bi bi-eye" id="eyeIcon"></i>
                </span>
            </div>
        </div>

        <button class="btn btn-primary w-100 mt-3">Login</button>

    </form>

    <!-- REGISTER LINK -->
    <div class="text-center mt-3">
        <p>Don't have an account? 
            <a href="/register" class="fw-bold">Register</a>
        </p>
    </div>

</div>

<!-- 👁️ PASSWORD TOGGLE SCRIPT -->
<script>
function togglePassword() {
    let pass = document.getElementById("password");
    let icon = document.getElementById("eyeIcon");

    if(pass.type === "password") {
        pass.type = "text";
        icon.classList.remove("bi-eye");
        icon.classList.add("bi-eye-slash");
    } else {
        pass.type = "password";
        icon.classList.remove("bi-eye-slash");
        icon.classList.add("bi-eye");
    }
}
</script>

</body>
</html>