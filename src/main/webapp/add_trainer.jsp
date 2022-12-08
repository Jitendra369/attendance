<%@page import="com.mysql.cj.jdbc.ha.BestResponseTimeBalanceStrategy"%>
<%@page import="com.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%-- <%@ page errorPage="error_page_unautorized_user.jsp" %> --%>

<html lang="en">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Trainer</title>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css"> -->

<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> -->

<jsp:include page="all_css_js.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
<link rel="stylesheet" href="css/admin_home.css">

<link rel="stylesheet" href="css/addtrainer.css">

<style>
.margin_heading {
	margin-top: 10px;
	margin-bottom: 20px;
}
</style>



</head>

<body>

	<!-- Prevent back button-->
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>

	<%
	Admin admin = (Admin) session.getAttribute("admin_id");
	if (admin == null) {
		response.sendRedirect("admin_login.jsp");
	}
	%>
	<!-- header -->
	<jsp:include page="nav_bar/admin_narbar.jsp"></jsp:include>
	<!-- End header -->

	<!--Main layout-->
	<main style="margin-top: 58px;">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<form method="post" id="form_data" action="SaveTrainerInformation">
						<fieldset class="margin_heading"
							style="margin-bottom: 0px; font-size: 12px; font-weight: bold; color: #1f497d;">
							<legend>Add Session Details</legend>
							<div class="form-group">
								<label for="exampleInputEmail1">Trainer ID </label> <input
									type="text" class="form-control" id="session_id"
									name="session_id" aria-describedby="emailHelp"
									placeholder="Enter Session ID ">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Session Name</label> <input
									type="text" class="form-control" id="session_name"
									name="session_name" placeholder="Enter Name">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Contact Number</label> <input
									type="text" class="form-control" id="session_conum"
									name="contact_number" placeholder="Conatct Number">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Email</label> <input
									type="email" class="form-control" id="session_email"
									name="email_address" placeholder="Enail Address">
							</div>

							<div class="form-group">
								<label for="exampleFormControlTextarea1">Add Skill
									Details</label>
								<textarea class="form-control" name="add_skill_session" placeholder="Ex. Android, Java, Python"
									id="session_skill_details" rows="3"></textarea>
							</div>



							<!-- Add skills set, through modal -->
							<!-- Button trigger modal -->
							<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal">Add Skill Set</button>

							Modal
							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form>
												<div class="form-group">
													<label for="exampleInputEmail1">Skill ID </label> <input
														type="number" class="form-control" id="exampleInputEmail1"
														aria-describedby="emailHelp">

												</div>
												<div class="form-group">
													<label for="exampleInputPassword1">Skill Type</label> <input
														type="text" class="form-control"
														id="exampleInputPassword1">
												</div>
												<div class="form-group">
													<label for="exampleFormControlTextarea1">Skill
														Description</label>
													<textarea class="form-control"
														id="exampleFormControlTextarea1" rows="10"></textarea>
												</div>
											</form>

										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div> -->

							



						</fieldset>

						<fieldset class="margin_heading"
							style="width: auto; margin-bottom: 0px; font-size: 12px; font-weight: bold; color: #1f497d;">
							<legend>Add Trainer Details</legend>

							<div class="form-group">
								<label for="exampleInputPassword1">Trainer ID</label> <input
									type="text" class="form-control" id="trainer_id"
									name="trainer_id" placeholder="Trainer ID">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Trainer Name</label> <input
									type="text" class="form-control" id="trainer_name"
									name="trainer_name" placeholder="Trainer Name">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Trainer Contact
									Number</label> <input type="text" class="form-control"
									id="trainer_comtact_no" name="trainer_number"
									placeholder="Trainer Contact Number">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Trainer Email</label> <input
									type="text" class="form-control" id="trainer_email"
									name="trainer_email" placeholder="Trainer Email">
							</div>

							<div class="form-group">
								<label for="exampleFormControlTextarea1">Add Skill
									Details</label>
								<textarea class="form-control" name="skill_set_Trainer" placeholder="ex. Java , Android , Python"
									id="trainer_skills" rows="3"></textarea>
							</div>



						</fieldset>


						<div class="row justify-content-center margin_heading"
							style="margin-top: 10px;">
							<button type="submit" id="submit_btn" class="btn btn-primary">Save
								Trainer Details</button>
						</div>

						<div class="container text-center" id="loader" style="display:none" >
							<span class="fa fa-refresh fa-spin fa-4x"></span>
							<h4>Please wait...</h4>
						</div>

					</form>
				</div>
			</div>
		</div>


	</main>
	<!--Main layout-->
	<!-- end side-navigation -->

	<!-- <script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
		integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script> -->






<!-- 	<script>
		$(document).ready(function() {
			var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
		        removeItemButton: true,
		        maxItemCount:5,
		        searchResultLimit:5,
		        renderChoiceLimit:5
		      }); 
		});
	</script> -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	<script src="js/addtrainer.js"></script>
</body>

</html>