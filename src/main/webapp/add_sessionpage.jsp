<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/add_session.css">
<title>Add Session</title>
</head>

<body>

	<div class="container-fluid">
		<div class="row">

			<div class="col-md-2">
				<jsp:include page="nav_bar/admin_narbar.jsp"></jsp:include>
			</div>

			<div class="col-md-10">
				<!--Main layout-->
				<main style="margin-top: 58px;">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-10">
								<form method="post" id="form_data" action="SaveSessionDetails">
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
											<textarea class="form-control" name="add_skill_session"
												placeholder="Ex. Android, Java, Python"
												id="session_skill_details" rows="3"></textarea>
										</div>

                                        <div class="form-group text-center">
                                            <button id="btn" class="btn btn-primary">Save Session Details</button>

                                        </div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</main>

			</div>
		</div>
	</div>







	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<!-- sweet alert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/save_session_details.js"></script>
    
</body>

</html>