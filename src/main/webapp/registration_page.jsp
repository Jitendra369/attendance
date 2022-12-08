<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/register_page.css">
<title>Hello, world!</title>
</head>

<body>

	<!-- nar-bar -->
	<jsp:include page="navbar_all_users.jsp"></jsp:include>



	<div class="container-fluid">
		<div class="col-md-12 text-center ">
			<h2 style="color: orange;">Registration Form</h2>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-8 col-10">
				<form id="form-regi" method="post" action="SaveRegistDataServlet">
					<div class="form-group">
						<label class="from-ed" for="exampleInputEmail1">First Name</label>
						<input type="text" class="form-control from-ed"
							placeholder="Enter First Name" id="user_fname" name="first_name"
							aria-describedby="emailHelp">

					</div>
					<div class="form-group">
						<label class="from-ed" for="exampleInputPassword1">Last
							Name</label> <input type="text" class="form-control from-ed"
							placeholder="Enter Last Name" name="last_name" id="user_lname">
					</div>


					<div class="form-group">
						<label class="from-ed" for="exampleInputPassword1">Employee
							ID </label> <input type="number" class="form-control from-ed"
							name="emp_id" id="emp_id">
						<!-- readonly="readonly" -->
					</div>

					<div class="form-group">
						<label class="from-ed" for="exampleInputPassword1">Email</label> <input
							type="email" placeholder="Enter Email address"
							class="form-control from-ed" name="email" id="user_email">
					</div>

					<div class="form-group">
						<label class="from-ed" for="exampleInputPassword1">Password</label>
						<input type="password" placeholder="Enter Password"
							class="form-control from-ed" name="password" id="user_pass">
					</div>
					<div class="form-group form-check from-ed ">
						<input type="checkbox" class="form-check-input form-ed"
							id="checkbox_agree"> <label class="from-ed"
							class="form-check-label" for="exampleCheck1">Agree terms
							and Condition</label>
					</div>

					<div class="row justify-content-center">
						<button type="submit" id="submit_btn" class="btn btn-primary from-ed mb-5"
							style="width: 150px;" >Submit</button>
					</div>

					<div class="container text-center" id="loader" style="display:none" >
						<span class="fa fa-refresh fa-spin fa-4x"></span>
						<h4>Please wait...</h4>
					</div>


				</form>
			</div>
		</div>

	</div>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<!-- sweet alert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<!-- register page script file -->
	<script src="js/register.js"></script>
	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>