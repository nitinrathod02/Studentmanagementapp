<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* Enroll Background */
.enroll {
    background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)),
                url("images/addstudent.jpg");
    background-size: cover;
    background-position: center;
    padding-top: 50px;
}

/* View Background */
.view {
    background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                url("images/viewstudent.jpg");
    background-size: cover;
    background-position: center;
    padding: 50px 0;
}

/* Heading */
.heading {
    font-family: 'Poppins', sans-serif;
    font-weight: 600;
    text-align: center;
    color: #1a237e;
}

/* Navbar Styling */
.navbar-custom {
    background: #0d47a1;
}
.navbar-custom a {
    color: white !important;
    margin-left: 10px;
}
.navbar-custom a:hover {
    color: #ffeb3b !important;
}
form label {
    font-size: 13px;
    font-weight: 600;
}
</style>

</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-custom px-4 py-2">
    <img src="images/cjclogo.png" width="110" height="55">
    <div>
        <a href="#enroll" class="btn btn-warning btn-sm mx-1">Enroll Student</a>
        <a href="#view" class="btn btn-light btn-sm mx-1">View Student</a>
        <a href="/" class="btn btn-danger btn-sm mx-1">Logout</a>
    </div>
</nav>


<!-- Enroll Section -->
<section class="enroll vh-100" id="enroll">
    <div class="container">
        <div class="card shadow-lg p-4 w-50 mx-auto" style="border-radius: 12px;">
            <h3 class="heading mb-4">Student Enrollment Form</h3>

            <form action="enroll_student">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Full Name</label>
                        <input type="text" class="form-control form-control-sm" name="studentFullName">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Email</label>
                        <input type="email" class="form-control form-control-sm" name="studentEmail">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Age</label>
                        <input type="number" class="form-control form-control-sm" name="studentAge">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>College Name</label>
                        <input type="text" class="form-control form-control-sm" name="studentCollageName">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Fees Paid</label>
                        <input type="number" class="form-control form-control-sm" name="feesPaid">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="d-block">Course</label>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="studentCourse" value="Java" checked>
                            <label class="ms-1">Java</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="studentCourse" value="Python">
                            <label class="ms-1">Python</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input type="radio" name="studentCourse" value="Testing">
                            <label class="ms-1">Testing</label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col mb-3">
                        <label>Batch Mode</label>
                        <select class="form-control form-control-sm" name="batchMode">
                            <option value="#">Select Batch Mode</option>
                            <option>Online</option>
                            <option>Offline</option>
                        </select>
                    </div>
                    <div class="col mb-3">
                        <label>Batch Number</label>
                        <select class="form-control form-control-sm" name="batchNumber">
                            <option value="#">Select Batch Number</option>
                            <option>FDJ-197</option>
                            <option>REG-197</option>
                            <option>FDJ-161</option>
                            <option>REG-162</option>
                        </select>
                    </div>
                </div>

                <div class="text-center mt-3">
                    <button class="btn btn-primary px-4">Submit</button>
                </div>
            </form>
        </div>
    </div>
</section>


<!-- View Section -->
<section class="view" id="view">
    <div class="container">

        <h2 class="text-center text-white fw-bold mb-4">View Student Records</h2>

        <!-- Search Box -->
        <div class="card p-3 shadow mb-4">
            <form action="search" class="d-flex justify-content-center gap-3 flex-wrap">
                
                <select name="batchNumber" class="form-select w-auto">
                    <option>Select Batch Number</option>
                    <option>FDJ-197</option>
                    <option>REG-197</option>
                    <option>FDJ-161</option>
                    <option>REG-162</option>
                </select>

                <select name="batchMode" class="form-select w-auto">
                    <option>Select Mode</option>
                    <option>Online</option>
                    <option>Offline</option>
                </select>

                <button class="btn btn-primary">Search</button>
            </form>

            <marquee>
                <h4 class="text-warning mt-2">${message}</h4>
            </marquee>
        </div>

        <!-- Student Table -->
        <div class="card shadow-lg">
            <div class="card-body">

                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped text-center">
                        <thead class="table-dark">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>College</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Mode</th>
                                <th>Fees</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach items="${data}" var="s">
                                <tr>
                                    <td>${s.studentId}</td>
                                    <td>${s.studentFullName}</td>
                                    <td>${s.studentEmail}</td>
                                    <td>${s.studentAge}</td>
                                    <td>${s.studentCollageName}</td>
                                    <td>${s.studentCourse}</td>
                                    <td>${s.batchNumber}</td>
                                    <td>
                                        <span class="badge bg-info text-dark px-3 py-2">${s.batchMode}</span>
                                    </td>
                                    <td>
                                        <span class="badge bg-success px-3 py-2">${s.feesPaid}</span>
                                    </td>

                                    <td class="d-flex justify-content-center gap-2">
                                        <a class="btn btn-success btn-sm">Pay Fees</a>
                                        <a class="btn btn-primary btn-sm">Batch Shift</a>
                                        <a class="btn btn-danger btn-sm"
                                           href="delete?studentId=${s.studentId}">
                                           Remove
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>

            </div>
        </div>

    </div>
</section>

</body>
</html>
