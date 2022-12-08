<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxDatatypes.Array"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Admin"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



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

	<%
	Session session2 = FactoryProvider.getFactory().openSession();
	Transaction transaction = session2.beginTransaction();
	//get all the pending request from data-base

	//String getAllthePending = "from Admin where status=:x";
	//Query query = session2.createQuery(getAllthePending);
	//query.setParameter("x", "pending");

	Criteria criteria = session2.createCriteria(Admin.class);
	criteria.add(Restrictions.eq("status", "pending"));

	List<Admin> lisAdmin = criteria.list();
	transaction.commit();
	session2.close();
	%>



	<section class="main-content">
		<div class="container">
			<h1 class="text-center">All Admin request</h1>

			<!-- showing all the admin request  -->
			<table class="table">
				<thead>
					<tr>
						<th>User</th>
						<th>Status</th>
						<th>Gender</th>

						<th>Phone</th>
						<th class="text-center">Update Admin status</th>

					</tr>
				</thead>


				<!-- TODO: Select Query run many times, it should be run one time only  -->
				<!-- it contains all the pending request  -->
				<!-- tbody -->

				<%
				for (Admin admin : lisAdmin) {
				%>

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
						<td><%= admin.getMobile_no() %></td>
						<td>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter" id="view_details_btn" value="<%= admin.getAdminID() %>" onclick="viewAdminPendDeta(<%= admin.getAdminID() %>)">View Details</button>
								
							<button type="button" class="btn btn-info" id="approve_btn" onclick="approvePendReq(<%= admin.getAdminID() %>)">Approve</button>
							<button type="button" class="btn btn-danger" id="cancle_btn" onclick="canclePendingReq(<%= admin.getAdminID() %>)" >Cancel</button>

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
			<!-- end all the admin request -->

			<!-- model: view Detials : poopOver model -->

			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Admin
								Request Details</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>


						<div class="modal-body">
						
						<!-- get admin request by ID -->
						<%
						
						
						
						%> 
							<!-- view Detials   -->
							<table class="table" style="border: 1px; text-align: left;">
								<thead>
									<tr>
										<th scope="col">First Name </th>
										<td style="text-align: left" id="f_name"></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Last Name</th>
										<td style="text-align: left" id="l_name">landu</td>
									</tr>
									<tr>
										<th scope="row">Age</th>
										<td style="text-align: left" id="age">sandu</td>
									</tr>
									<tr>
										<th scope="row">Gender</th>
										<td style="text-align: left" id="gender">gondu</td>
									</tr>
									<tr>
										<th scope="row">Mobile No</th>
										<td style="text-align: left" id="mobile">randu</td>
									</tr>
									<tr>
										<th scope="row">Status</th>
										<td style="text-align: left;" id="status">dema</td>
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
		<script src="js/superuser_view_pendreq.js"></script>

</body>
</html>