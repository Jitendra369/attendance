<%@page import="com.mysql.cj.jdbc.ha.BestResponseTimeBalanceStrategy"%>
<%@page import="com.entity.Admin" %>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <%@ page errorPage="error_page_unautorized_user.jsp" %>
    
    <html lang="en">

    <head>
    
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Admin Home Page</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <!-- font awesome -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="css/admin_home.css">
    </head>

    <body>
    
    <!-- Prevent back button-->
    <%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    %>

      <% Admin admin=(Admin) session.getAttribute("admin_id"); if (admin==null) {
        response.sendRedirect("admin_login.jsp"); } %>
        <!-- header -->
        <jsp:include page="nav_bar/admin_narbar.jsp"></jsp:include>
        
        <!-- end header -->

        <!--Main layout-->
        <main style="margin-top: 58px;">
          <div class="container pt-4">
            <jsp:include page="admin_notification.jsp"></jsp:include>

          </div>



        </main>
        <!--Main layout-->
        <!-- end side-navigation -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
          integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <!-- sweet alert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script> history.forward(); </script>
        
        <script>
        $(document).ready(function () {
        	$("#add_trainer").removeClass("active");
            $('#notification').addClass("active");
      });
        
        </script>
    </body>

    </html>