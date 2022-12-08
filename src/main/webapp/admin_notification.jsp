<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Admin"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page errorPage="Error_Page/error_page_unautorized_user.jsp" %>

			<%
			Session session2 = FactoryProvider.getFactory().openSession();
			Transaction transaction = session2.beginTransaction();
			//check for parsing 
			
			
			List<Admin> listAdmin = new ArrayList<Admin>(); 
			Admin currentAdmin = (Admin) session.getAttribute("admin_id");
					if(currentAdmin == null){
						response.sendRedirect("admin_login.jsp");
					}else{
						
						Admin adminRegistRequ = session2.get(Admin.class, currentAdmin.getAdminID());
						
						String query = "from Admin where adminID=:x";
						Query query2 = session2.createQuery(query);
						query2.setParameter("x", currentAdmin.getAdminID());
						
						listAdmin = query2.list();
						
						//login for all admin request -VIEW CODE FACTORY
						 
						transaction.commit();
						session2.close();
						String status = "";
						
						if (currentAdmin.getStatus().equalsIgnoreCase("pending")) {
							status = "bg-danger";
						} else {
							status = "black";
						}
					}
			%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Notification</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/admin_notification.css">

<style>
.aligntext {
	text-align: left
}
</style>
</head>
<body>
	<section class="main-content">
		<div class="container">
			<h1 class="text-center">All Notifications</h1>

			<table class="table">
				<thead>
					<tr>
						<th>User</th>
						<th>Status</th>
						<th>Gender</th>

						<th>Phone</th>
						<th>Update Admin status</th>

					</tr>
				</thead>

				<%
				for (Admin admin : listAdmin) {
				%>

				<!-- TODO: Select Query run many times, it should be run one time only  -->

				<tbody>
					<tr>
						<td>
							<div class="user-info">
								<div class="user-info__img">
									<img src="images/dash.png" alt="User Img">
								</div>
								<div class="user-info__basic">
									<h5 class="mb-0"><%=admin.getFirstName()%></h5>
									<p class="text-muted mb-0"><%=admin.getLastName()%></p>
								</div>
							</div>
						</td>
						<td><span class="active-circle bg-success"></span> <%=admin.getStatus()%></td>
						<td><%=admin.getGender()%></td>
						<td><%=admin.getMobile_no()%></td>
						<td>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter">View Detials</button>

						</td>
						<td>
							<!--  <div class="dropdown open">
                                    <a href="#!" class="px-2" id="triggerId1" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                                <i class="fa fa-ellipsis-v"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="triggerId1">
                                        <a class="dropdown-item" href="#"><i class="fa fa-pencil mr-1"></i> Edit</a>
                                        <a class="dropdown-item text-danger" href="#"><i class="fa fa-trash mr-1"></i> Delete</a>
                                    </div>
                                </div> -->
						</td>
					</tr>
				</tbody>
				<%
				}
				%>


			</table>

			<!-- model: view Detials -->

			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Admin
								Request</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

				

						<div class="modal-body">

							<!-- view Detials   -->
							<table class="table" style="border: 1px; text-align: left;">
								<thead>
									<tr>
										<th scope="col">First Name</th>
										<td style="text-align: left"><%=currentAdmin.getFirstName()%></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Last Name</th>
										<td style="text-align: left"><%=currentAdmin.getLastName()%></td>
									</tr>
									<tr>
										<th scope="row">Age</th>
										<td style="text-align: left"><%=currentAdmin.getAge()%></td>
									</tr>
									<tr>
										<th scope="row">Gender</th>
										<td style="text-align: left"><%=currentAdmin.getGender()%></td>
									</tr>
									<tr>
										<th scope="row">Mobile No</th>
										<td style="text-align: left"><%=currentAdmin.getMobile_no()%></td>
									</tr>
									<tr>
										<th scope="row">Status</th>
										<td style="text-align: left; color: black;"><%=currentAdmin.getStatus()%></td>
									</tr>
								</tbody>
							</table>



						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<!-- <button type="button" class="btn btn-primary">Save
								changes</button> -->
						</div>
						


					</div>
				</div>
			</div>
			<!-- End model: view Detials -->

			<!-- Button trigger modal : vie Details -->
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script>
		
		  $(document).ready(function () {
              
              $("#add_trainer").addClass("active");
            
        });
		</script>

</body>
</html>