<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" 
      rel="stylesheet">

<style>

    body {
        height: 100vh;
        margin: 0;
        background: linear-gradient(135deg, #0d0d0d, #111, #000);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        width: 400px;
    }

    .card-custom {
        background: #101010;
        border-radius: 20px;
        padding: 30px;
        border: 1px solid rgba(0,255,255,0.2);
        box-shadow: 0 0 25px rgba(0,255,255,0.15);
    }

    .card-custom h3 {
        color: cyan;
        text-shadow: 0 0 8px cyan;
        font-weight: 600;
    }

    .form-control {
        background: rgba(255,255,255,0.07);
        border: 1px solid rgba(255,255,255,0.2);
        color: #fff;
    }

    .form-control::placeholder {
        color: #ccc;
    }

    .btn-custom {
        background: cyan;
        font-weight: bold;
        color: #000;
        border-radius: 8px;
        box-shadow: 0 0 12px cyan;
    }

    .alert-custom {
        background: rgba(255, 0, 0, 0.20);
        border-left: 6px solid #ff4d4d;
        padding: 12px;
        color: #ff8080;
        border-radius: 6px;
        text-align: center;
        font-weight: 600;
        margin-bottom: 18px;
        animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-8px); }
        to { opacity: 1; transform: translateY(0); }
    }

</style>

</head>

<body>

<div class="login-container">

    <div class="card-custom">

        <!-- Warning Message -->
        <c:if test="${not empty login_fail}">
            <div class="alert-custom">
                ⚠ ${login_fail}
            </div>
        </c:if>

        <h3 class="text-center mb-4">Login</h3>

        <form action="login">
            <div class="mb-3">
                <input type="text" name="username" 
                       class="form-control form-control-lg"
                       placeholder="Enter Username" required>
            </div>

            <div class="mb-4">
                <input type="password" name="password"
                       class="form-control form-control-lg"
                       placeholder="Enter Password" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-custom btn-lg">
                    Login
                </button>
            </div>

        </form>

    </div>

</div>

</body>
</html>
