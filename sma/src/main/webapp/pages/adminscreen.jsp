<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>

body {
    font-family: 'Poppins', sans-serif;
}

/* Navbar */
.navbar-custom {
    background: linear-gradient(90deg, #0d47a1, #1976d2);
    box-shadow: 0 4px 20px rgba(0,0,0,0.3);
}
.navbar-custom a {
    color: white !important;
    font-weight: 600;
}
.navbar-custom a:hover {
    color: yellow !important;
}

/* Enroll Section */
.enroll {
    background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                url("images/addstudent.jpg") center/cover no-repeat;
    padding-top: 40px;
}

/* View Section */
.view {
     background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                url("images/viewstudent.jpg") center/cover no-repeat;           
    padding: 50px 0;
}

/* Card Styling */
.glass-card {
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(12px);
    border-radius: 15px;
    padding: 25px;
    color: white;
    border: 1px solid rgba(255,255,255,0.25);
    box-shadow: 0 8px 30px rgba(0,0,0,0.4);
}

/* Headings */
.heading {
    font-weight: 600;
    color: #1a237e;
}

/* Buttons */
.btn-modern {
    background: #0d47a1;
    color: white;
    font-weight: 600;
    transition: 0.3s;
}
.btn-modern:hover {
    background: #1565c0;
}

/* View Table Neon */
.table-dark {
    background: #0d47a1 !important;
}

.badge {
    font-size: 13px;
}

/* Pagination */
.pagination .page-link {
    border-radius: 6px;
    font-weight: 600;
}

/* Background Image Blur */
/* VIEW SECTION (Responsive Blurred Background) */
.view {
    position: relative;
    min-height: 100vh;
    padding: 60px 0;
    overflow: hidden;
}

/* Blurred Background Layer */
.view::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;

    background: 
        linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.85)),
        url('images/view-bg.jpg') center/cover no-repeat;

    filter: blur(10px);
    opacity: 0.8;
    z-index: -1;
}

/* Ensures cards are always readable */
.view .card,
.view h2 {
    position: relative;
    z-index: 2;
}

/* Frosted glass card */
.glass-card {
    background: rgba(255, 255, 255, 0.15);
    border-radius: 12px;
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
}

/* Table Card Frost Effect */
.card.shadow-lg {
    background: rgba(255, 255, 255, 0.10);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    border-radius: 15px;
}

</style>

</head>
<body>

<nav class="navbar shadow-lg px-4 py-3"
     style="
        background: linear-gradient(90deg, #6a00ff, #b100ff, #ff2cc3);
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
     ">

    <div class="d-flex align-items-center">
        <img src="images/cjclogo.png" width="120" class="me-3">
        <h3 class="text-white fw-semibold m-0">Student Management</h3>
    </div>

    <div>
        <a href="#enroll" class="btn btn-light fw-bold mx-1 px-3">Enroll</a>
        <a href="#view" class="btn btn-warning fw-bold mx-1 px-3">View</a>
        <a href="/" class="btn btn-dark fw-bold mx-1 px-3">Logout</a>
    </div>

</nav>






<!-- ENROLL SECTION -->
<section class="enroll vh-100 d-flex align-items-center" id="enroll">
    <div class="container">

        <div class="card shadow-lg p-4 w-75 mx-auto glass-card">
            <h3 class="text-center text-white mb-4">Student Enrollment Form</h3>

            <form action="enroll_student">

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="text-white">Full Name</label>
                        <input type="text" class="form-control form-control-sm" name="studentFullName">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="text-white">Email</label>
                        <input type="email" class="form-control form-control-sm" name="studentEmail">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="text-white">Age</label>
                        <input type="number" class="form-control form-control-sm" name="studentAge">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="text-white">College Name</label>
                        <input type="text" class="form-control form-control-sm" name="studentCollageName">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="text-white">Fees Paid</label>
                        <input type="number" class="form-control form-control-sm" name="feesPaid">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="text-white d-block">Course</label>

                        <label class="me-3 text-white">
                            <input type="radio" name="studentCourse" value="Java" checked> Java
                        </label>

                        <label class="me-3 text-white">
                            <input type="radio" name="studentCourse" value="Python"> Python
                        </label>

                        <label class="text-white">
                            <input type="radio" name="studentCourse" value="Testing"> Testing
                        </label>

                    </div>
                </div>

                <div class="row">
                    <div class="col mb-3">
                        <label class="text-white">Batch Mode</label>
                        <select class="form-control form-control-sm" name="batchMode">
                            <option value="#">Select Batch Mode</option>
                            <option>Online</option>
                            <option>Offline</option>
                        </select>
                    </div>

                    <div class="col mb-3">
                        <label class="text-white">Batch Number</label>
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
                    <button class="btn btn-warning px-4 fw-bold">Submit</button>
                </div>

            </form>

        </div>

    </div>
</section>


<section class="view" id="view">
    <div class="container">

        <h2 class="text-center text-white fw-bold mb-4">View Student Records</h2>

        <!-- Search Box -->
        <div class="card p-3 shadow glass-card">
            <form action="search" class="d-flex justify-content-center gap-3 flex-wrap">
                <select name="batchNumber" class="form-select w-auto">
                    <option>Select Batch Number</option>
                    <option>FDJ-160</option>
                    <option>REG-197</option>
                    <option>FDJ-161</option>
                    <option>REG-162</option>
                </select>

                <select name="batchMode" class="form-select w-auto">
                    <option>Select Mode</option>
                    <option>Online</option>
                    <option>Offline</option>
                </select>

                <button class="btn btn-modern">Search</button>
            </form>

            <marquee>
                <h4 class="text-warning mt-2">${message}</h4>
            </marquee>
        </div>

        <!-- Student Table -->
        <div class="card shadow-lg mt-4">
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

                                    <td><span class="badge bg-info text-dark px-3 py-2">${s.batchMode}</span></td>
                                    <td><span class="badge bg-success px-3 py-2">${s.feesPaid}</span></td>

                                    <td class="d-flex justify-content-center gap-2">
                                        <a class="btn btn-success btn-sm" href="payfees?studentId=${s.studentId}">Pay Fees</a>
                                        <a class="btn btn-primary btn-sm" href="shiftbatch?batchNumber=${s.batchNumber}&batchMode=${s.batchMode}&studentId=${s.studentId}">Batch Shift</a>
                                        <a class="btn btn-danger btn-sm" href="delete?studentId=${s.studentId}">Remove</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>

            </div>
        </div>

        <!-- Pagination -->
        <div class="mt-4 d-flex justify-content-center">
            <ul class="pagination pagination-lg">
                <li class="page-item active"><a class="page-link" href="paging?pagenumber=0">1</a></li>
                <li class="page-item"><a class="page-link" href="paging?pagenumber=1">2</a></li>
                <li class="page-item"><a class="page-link" href="paging?pagenumber=2">3</a></li>
            </ul>
        </div>

    </div>
</section>


</body>
</html>
