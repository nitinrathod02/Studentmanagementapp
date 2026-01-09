<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Batch Shift</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
      rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #4b0082, #6a0dad, #9b2aff);
    min-height: 100vh;
    font-family: 'Poppins', sans-serif;
}

.card-custom {
    background: rgba(255,255,255,0.12);
    backdrop-filter: blur(12px);
    border-radius: 20px;
    box-shadow: 0 0 25px rgba(0,0,0,0.4);
    color: white;
}

.table-custom th, .table-custom td {
    background: rgba(255,255,255,0.1) !important;
    color: white !important;
}

.select-custom {
    background: rgba(255,255,255,0.2);
    color: white;
    border: none;
    padding: 10px;
    border-radius: 8px;
}
.select-custom option {
    color: black;
}

.btn-modern {
    background: #00e676;
    font-weight: bold;
}
.btn-modern:hover {
    background: #00c853;
}
</style>

</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    
    <div class="card card-custom p-4 w-75">

        <h3 class="text-center fw-bold text-warning mb-3">
            Batch Shift Details
        </h3>

        <div class="table-responsive">
            <table class="table table-custom table-bordered text-center">
                <tbody>
                    <tr>
                        <th>Student ID</th>
                        <td>${stu.studentId}</td>
                    </tr>
                    <tr>
                        <th>Student Name</th>
                        <td>${stu.studentFullName}</td>
                    </tr>
                    <tr>
                        <th>Course</th>
                        <td>${stu.studentCourse}</td>
                    </tr>
                    <tr>
                        <th>Current Batch</th>
                        <td class="fw-bold text-warning">${stu.batchNumber}</td>
                    </tr>
                    <tr>
                        <th>Current Mode</th>
                        <td>${stu.batchMode}</td>
                    </tr>
                    <tr>
                        <th>Fees Paid</th>
                        <td class="fw-bold text-success">${stu.feesPaid}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- BATCH SHIFT FORM -->
        <form action="updatebatch" class="mt-4">

            <input type="hidden" name="studentId" value="${stu.studentId}">

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="fw-bold">Select New Batch Number</label>
                    <select name="batchNumber" class="form-select select-custom">
                        <option disabled selected>Choose Batch</option>
                        <option>FDJ-160</option>
                        <option>REG-197</option>
                        <option>FDJ-161</option>
                        <option>REG-162</option>
                    </select>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="fw-bold">Select New Batch Mode</label>
                    <select name="batchMode" class="form-select select-custom">
                        <option disabled selected>Choose Mode</option>
                        <option>Online</option>
                        <option>Offline</option>
                    </select>
                </div>
            </div>

            <div class="text-center mt-3">
                <button class="btn btn-modern px-4 py-2">Shift Batch</button>
            </div>

        </form>

    </div>

</div>

</body>
</html>
