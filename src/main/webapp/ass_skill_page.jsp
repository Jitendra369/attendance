<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="all_css_js.jsp"></jsp:include>

<title>Add Skill Page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<jsp:include page="nav_bar/admin_narbar.jsp"></jsp:include>
			</div>

			<div class="col-md-8">
				
				<main style="margin-top: 58px;">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-10">
								<form method="post" id="form_data" action="SaveSessionDetails">
									<fieldset class="margin_heading"
										style="margin-bottom: 0px; font-size: 12px; font-weight: bold; color: #1f497d;">
										<legend>Add Session Details</legend>
										<div class="form-group">
											<label for="exampleInputEmail1">Skill ID </label> <input
												type="text" class="form-control" id="skill_id"
												name="skill_id" aria-describedby="emailHelp"
												placeholder="Enter Skill ID ">

										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Session Type</label> <input
												type="text" class="form-control" id="skill_type"
												name="skill_type"
												placeholder="Ex. technical, non-technical..">
										</div>

										

                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Skill Description</label>
                                            <textarea class="form-control" name="skill_desc" placeholder="Ex. Define Skill "
                                                id="session_skill_details" rows="3"></textarea>
                                        </div>



										<div class="form-group text-center">
											<button id="submit_btn" class="btn btn-primary">Save Skills
												Details</button>
										</div>
										<div class="container text-center" id="loader"
											style="display: block;">
											<span class="fa fa-refresh fa-spin fa-4x"></span>
											<h4>Please wait...</h4>
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

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/add_skill.js"></script>
</body>
</html>