<%@ page import="java.util.List" %>
<%@ page import="com.example.qlktx.models.BEAN.Room" %>
<%@ page import="com.example.qlktx.models.BEAN.Student" %><%--
  Created by IntelliJ IDEA.
  User: LONG HOANG
  Date: 11/28/2022
  Time: 1:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <%--  href="/includes/asserts/css/bootstrap.min.css"--%>
    <%--  href="${pageContext.request.contextPath}/css/styles.css"--%>
    <link href="${pageContext.request.contextPath}/template/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/template/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" type="text/css" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/template/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/template/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="container-xxl position-relative bg-white d-flex p-0">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Sidebar Start -->
    <div class="sidebar pe-4 pb-3">
        <nav class="navbar bg-light navbar-light">
            <a href="/" class="navbar-brand mx-4 mb-3">
                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>KTX</h3>
            </a>
            <div class="d-flex align-items-center ms-4 mb-4">
                <div class="position-relative">
                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                </div>
                <div class="ms-3">
                    <h6 class="mb-0">tieanh</h6>
                    <span>Admin</span>
                </div>
            </div>
            <div class="navbar-nav w-100">
                <a href="/" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Student</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="ShowStudentServlet" class="dropdown-item">List Student</a>
                        <a href="AddStudentServlet" class="dropdown-item">Add Student</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Room</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="rooms" class="dropdown-item">List room</a>
                        <a href="rooms/add-room" class="dropdown-item">Add Room</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Staff</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="staffServlet" class="dropdown-item">List staff</a>
                        <a href="staffControllerServlet" class="dropdown-item">Add staff</a>
                    </div>
                </div>

                <a href="" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Logout</a>

            </div>
        </nav>
    </div>
    <!-- Sidebar End -->


    <!-- Content Start -->
    <div class="content">
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-3">
            <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
            </a>
            <a href="#" class="sidebar-toggler flex-shrink-0">
                <i class="fa fa-bars"></i>
            </a>
            <form action="rooms" method="get" class="d-none d-md-flex ms-4">
                <input class="form-control border-0" name="room_name" type="search" placeholder="Search">
            </form>
        </nav>
        <!-- Navbar End -->



        <!-- Recent Sales Start -->
        <div class="container-fluid pt-4 px-4">
            <div class="bg-light text-center rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <h6 class="mb-0">Rooms</h6>
                </div>
                <div class="table-responsive">
                    <table class="table text-center align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">
                            <th scope="col">Name</th>
                            <th scope="col">Building</th>
                            <th scope="col">Number of Students</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Recent Sales End -->

        <!-- Content End -->




    </div>
    <!-- Content End -->


</div>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/chart/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/tempusdominus/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="${pageContext.request.contextPath}/template/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/template/js/main.js"></script>
</body>

</html>




<%--<form action="SearchStudentServlet">    &lt;%&ndash;Form search&ndash;%&gt;--%>
<%--    Name: <input type="text" name="name" value="" class="text">--%>
<%--    <button type="submit" class="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="5" height="5"><path fill="none" d="M0 0h24v24H0z"/><path d="M18.031 16.617l4.283 4.282-1.415 1.415-4.282-4.283A8.96 8.96 0 0 1 11 20c-4.968 0-9-4.032-9-9s4.032-9 9-9 9 4.032 9 9a8.96 8.96 0 0 1-1.969 5.617zm-2.006-.742A6.977 6.977 0 0 0 18 11c0-3.868-3.133-7-7-7-3.868 0-7 3.132-7 7 0 3.867 3.132 7 7 7a6.977 6.977 0 0 0 4.875-1.975l.15-.15z"/></svg></button>--%>
<%--    <br>--%>
<%--    <input type="reset" value="Reset">--%>
<%--</form>--%>

<%--<form action="AddInforStudentServlet">      &lt;%&ndash;Form show&ndash;%&gt;--%>
<%--    <input type="submit" value="Add">--%>
<%--</form>--%>

<%--<form action="AddInforStudentServlet">      &lt;%&ndash;Form show&ndash;%&gt;--%>
<%--    <input type="submit" value="Add">--%>
<%--</form>--%>

<%--<table>--%>
<%--    <tr>--%>
<%--        <th> ID </th>--%>
<%--        <th> Phòng </th>--%>
<%--        <th> Tên </th>--%>
<%--        <th> Ngày sinh </th>--%>
<%--        <th> Giới tính </th>--%>
<%--        <th> CCCD </th>--%>
<%--        <th> SĐT </th>--%>
<%--        <th> Trường </th>--%>
<%--        <th> Khoa </th>--%>
<%--        <th> Lớp </th>--%>
<%--        <th> Ngày bắt đầu </th>--%>
<%--        <th> Ngày hết hạn </th>--%>
<%--        <th> Xóa SV </th>--%>
<%--        <th> Cập nhật SV </th>--%>
<%--    </tr>--%>
<%--    <% for (Student student:students) {%>--%>
<%--    <tr>--%>
<%--        <td> <%= student.getId() %> </td>--%>
<%--        <td> <%= student.getRoom_name() %> </td>--%>
<%--        <td> <%= student.getName() %> </td>--%>
<%--        <td> <%= student.getDate() %> </td>--%>
<%--        <td>--%>
<%--            <%if (student.getSex()==1)%>--%>
<%--            <%= "Nam" %>--%>
<%--            <%if (student.getSex()==0)%>--%>
<%--            <%= "Nu" %>--%>
<%--        </td>--%>
<%--        <td> <%= student.getCccd() %> </td>--%>
<%--        <td> <%= student.getPhone_number() %> </td>--%>
<%--        <td> <%= student.getUni() %> </td>--%>
<%--        <td> <%= student.getFaculty() %> </td>--%>
<%--        <td> <%= student.get_class() %> </td>--%>
<%--        <td> <%= student.getDate_from() %> </td>--%>
<%--        <td> <%= student.getDate_to() %> </td>--%>
<%--        <td> <a href="DeleteStudentServlet?id=<%=student.getId()%>"> Del </a> </td>--%>
<%--        <td> <a href="ChangeInforStudentServlet?id=<%=student.getId()%>&room_name=<%=student.getRoom_name()%>&name=<%=student.getName()%>&date=<%=student.getDate()%>&sex=<%=student.getSex()%>&cccd=<%=student.getCccd()%>&phone_number=<%=student.getPhone_number()%>&uni=<%=student.getUni()%>&faculty=<%=student.getFaculty()%>&class=<%=student.get_class()%>&date_from=<%=student.getDate_from()%>&date_to=<%=student.getDate_to()%>"> Change </a> </td>--%>
<%--    </tr>--%>
<%--    <%}%>--%>
<%--    &lt;%&ndash;    <a> <%=rooms%> </a>&ndash;%&gt;--%>
<%--</table>--%>