<header>
          <!-- Sidebar -->
          <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
            <div class="position-sticky">
              <div class="list-group list-group-flush mx-3 mt-4">
                
                <a href="#" id="main_dashboard" class="list-group-item list-group-item-action py-2 ripple" aria-current="true"> <i
                    class="fas fa-tachometer-alt fa-fw me-3"></i><img src="images/dash.png" height="20px" width="20px"
                    class="img-fluid">
                  <span class="mar">Main dashboard</span>
                </a>
                
                <a href="admin_homePage.jsp" id="notification" class="list-group-item list-group-item-action py-2 ripple">
                  <i class="fas fa-chart-area fa-fw me-3"></i><img src="images/noti.png" height="20px" width="20px"
                    class="img-fluid"><span class="mar">Notifications</span>
                </a>
                
                
                <a href="add_trainer.jsp" id="add_trainer" class="list-group-item list-group-item-action py-2 ripple"> <i
                    class="fas fa-tachometer-alt fa-fw me-3"></i><img src="images/trainer.png" height="20px"
                    width="20px" class="img-fluid"><span> Add Trainer</span></a> 
                    
                    
                    <a href="add_sessionpage.jsp" id="add session"
                  class="list-group-item list-group-item-action py-2 ripple"><i
                    class="fas fa-chart-line fa-fw me-3"></i><img src="images/session.png" height="20px" width="20px"
                    class="img-fluid"><span class="mar">Add Session</span></a>
                    
                    
                    <a href="ass_skill_page.jsp" id="add_skills"
                  class="list-group-item list-group-item-action py-2 ripple"> <i
                    class="fas fa-chart-pie fa-fw me-3"></i><img src="images/skills.png" height="20px" width="20px"
                    class="img-fluid"><span class="mar">Add Skills</span>
                </a> 
                
                
                <a href="map_skill_page.jsp" id="map_skills" class="list-group-item list-group-item-action py-2 ripple"><i
                    class="fas fa-chart-bar fa-fw me-3"></i><img src="images/mapp.png" height="20px" width="20px"
                    class="img-fluid"><span class="mar">Map Skills</span></a>

              </div>
            </div>
          </nav>
          <!-- Sidebar -->

          <!-- Navbar -->
          <div class="container">
            <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
              <!-- Container wrapper -->
              <div class="container-fluid">
                <!-- Toggle button -->
                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#sidebarMenu"
                  aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                  <i class="fas fa-bars"></i>
                </button>

                <!-- Brand -->
                <a class="navbar-brand" href="#"> <img
                    src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp" height="25" alt="MDB Logo"
                    loading="lazy" />
                </a>
                <!-- Search form -->
                <form class="d-none d-md-flex input-group w-auto my-auto">
                  <input autocomplete="off" type="search" class="form-control rounded"
                    placeholder='Search (ctrl + "/" to focus)' style="min-width: 225px;" /> <span
                    class="input-group-text border-0"><i class="fas fa-search"></i></span>
                </form>

                <!-- Right links -->
                <ul class="navbar-nav ms-auto d-flex flex-row">

                  <!-- Notification dropdown -->
                  <!-- <li class="nav-item dropdown">
                  <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink"
                    role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-bell"></i>
                    <span class="badge rounded-pill badge-notification bg-danger">1</span>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                    <li>
                      <a class="dropdown-item" href="#">Some news</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">Another news</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </li>
                  </ul>
                </li> -->

                  <!-- Icon -->
                  <!-- <li class="nav-item">
                  <a class="nav-link me-3 me-lg-0" href="#">
                    <i class="fas fa-fill-drip"></i>
                  </a>
                </li> -->
                  <!-- Icon -->
                  <!-- <li class="nav-item me-3 me-lg-0"><a class="nav-link" href="#">
                      <i class="fab fa-github"></i>
                    </a></li> -->

                  <li>
                    <div class="btn-group dropleft">
                      <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        view
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="LogOutSession">LogOut</a>
                         <a class="dropdown-item" href="#">Notification</a>
                        <a class="dropdown-item" href="#">Profile setting</a>
                      </div>
                    </div>

                  </li>
                  <!-- Icon dropdown -->
                  <li class="nav-item dropdown">
                    <a class="nav-link me-3 dropleft me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdown"
                      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button"> </a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </li>
                </ul>
              </div>
              <!-- Container wrapper -->
            </nav>

          </div>
          <!-- Navbar -->
        </header>