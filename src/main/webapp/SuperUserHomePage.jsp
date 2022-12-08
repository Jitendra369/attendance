<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Super User</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/admin_home.css">
</head>
<body>

	<!-- side navigation -->
	<!--Main Navigation-->
	<header>
		<!-- Sidebar -->
		<nav id="sidebarMenu"
			class="collapse d-lg-block sidebar collapse bg-white">
			<div class="position-sticky">
				<div class="list-group list-group-flush mx-3 mt-4">
					<a href="#"
						class="list-group-item list-group-item-action py-2 ripple"
						aria-current="true"> <i
						class="fas fa-tachometer-alt fa-fw me-3"></i><img
						src="images/dash.png" height="20px" width="20px" class="img-fluid">
						<span class="mar">Main dashboard</span>
					</a> <a href="#"
						class="list-group-item list-group-item-action py-2 ripple active">
						<i class="fas fa-chart-area fa-fw me-3"></i><img
						src="images/noti.png" height="20px" width="20px" class="img-fluid"><span
						class="mar">Notifications</span>
					</a> <a href="#"
						class="list-group-item list-group-item-action py-2 ripple"> <i
						class="fas fa-tachometer-alt fa-fw me-3"></i><img
						src="images/trainer.png" height="20px" width="20px"
						class="img-fluid"><span>Add Trainer</span></a> <a href="#"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="fas fa-chart-line fa-fw me-3"></i><img
						src="images/session.png" height="20px" width="20px"
						class="img-fluid"><span class="mar">Add Session</span></a> <a
						href="#"
						class="list-group-item list-group-item-action py-2 ripple"> <i
						class="fas fa-chart-pie fa-fw me-3"></i><img
						src="images/skills.png" height="20px" width="20px"
						class="img-fluid"><span class="mar">Add Skills</span>
					</a> <a href="#"
						class="list-group-item list-group-item-action py-2 ripple"><i
						class="fas fa-chart-bar fa-fw me-3"></i><img src="images/mapp.png"
						height="20px" width="20px" class="img-fluid"><span
						class="mar">Map Skills</span></a>

				</div>
			</div>
		</nav>
		<!-- Sidebar -->

		<!-- Navbar -->
		<nav id="main-navbar"
			class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
			<!-- Container wrapper -->
			<div class="container-fluid">
				<!-- Toggle button -->
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse" data-mdb-target="#sidebarMenu"
					aria-controls="sidebarMenu" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>

				<!-- Brand -->
				<a class="navbar-brand" href="#"> <img
					src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
					height="25" alt="MDB Logo" loading="lazy" />
				</a>
				<!-- Search form -->
				<form class="d-none d-md-flex input-group w-auto my-auto">
					<input autocomplete="off" type="search"
						class="form-control rounded"
						placeholder='Search (ctrl + "/" to focus)'
						style="min-width: 225px;" /> <span
						class="input-group-text border-0"><i class="fas fa-search"></i></span>
				</form>

				<!-- Right links -->
				<ul class="navbar-nav ms-auto d-flex flex-row">
					<!-- Notification dropdown -->
					<li class="nav-item dropdown"><a
						class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow"
						href="#" id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-bell"></i> <span
							class="badge rounded-pill badge-notification bg-danger">1</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">Some news</a></li>
							<li><a class="dropdown-item" href="#">Another news</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>

					<!-- Icon -->
					<li class="nav-item"><a class="nav-link me-3 me-lg-0" href="#">
							<i class="fas fa-fill-drip"></i>
					</a></li>
					<!-- Icon -->
					<li class="nav-item me-3 me-lg-0"><a class="nav-link" href="#">
							<i class="fab fa-github"></i>
					</a></li>

					<!-- Icon dropdown -->
					<li class="nav-item dropdown"><a
						class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow"
						href="#" id="navbarDropdown" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
							class="united kingdom flag m-0"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#"><i
									class="united kingdom flag"></i>English <i
									class="fa fa-check text-success ms-2"></i></a></li>
							<li>
								<hr class="dropdown-divider" /> <a
								class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow"
								href="#" id="navbarDropdown" role="button"
								data-mdb-toggle="dropdown" aria-expanded="false">
									<i class="flag-united-kingdom flag m-0"></i>
							</a>
								<ul class="dropdown-menu dropdown-menu-end"
									aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#"><i
											class="flag-united-kingdom flag"></i>English <i
											class="fa fa-check text-success ms-2"></i></a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-poland flag"></i>Polski</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-china flag"></i>ä¸­æ</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-japan flag"></i>æ¥æ¬èª</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-germany flag"></i>Deutsch</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-france flag"></i>FranÃ§ais</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-spain flag"></i>EspaÃ±ol</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-russia flag"></i>Ð ÑÑÑÐºÐ¸Ð¹</a></li>
									<li><a class="dropdown-item" href="#"><i
											class="flag-portugal flag"></i>PortuguÃªs</a></li>
								</ul>
							</li>
						</ul> <!-- Avatar -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center"
						href="#" id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <img
							src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img (31).webp"
							class="rounded-circle" height="22" alt="Avatar" loading="lazy" />
					</a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">My profile</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li><a class="dropdown-item" href="#">Logout</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- Container wrapper -->
		</nav>
		<!-- Navbar -->
	</header>
	<!--Main Navigation-->

	<!--Main layout-->
	<main style="margin-top: 58px;">
		<div class="container pt-4">
			<jsp:include page="superUserViewAdminReq.jsp"></jsp:include>

		</div>



	</main>
	<!--Main layout-->
	<!-- end side-navigation -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<!-- sweet alert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>