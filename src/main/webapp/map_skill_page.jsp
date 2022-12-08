<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Map Skill Page</title>
        <jsp:include page="all_css_js.jsp"></jsp:include>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <jsp:include page="nav_bar/admin_narbar.jsp"></jsp:include>
                </div>

                <div class="col-md-8" style="margin-top: 100px;">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Enter Session ID</label>
                            <input type="email" class="form-control" id="session_id" name="session_id"
                                aria-describedby="emailHelp" placeholder="Enter email">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Enter Skill ID</label>
                            <input type="email" class="form-control" id="skill_id" name="skill_id"
                                aria-describedby="emailHelp" placeholder="Enter email">
                        </div>


                        <button type="submit" class="btn btn-primary">Mapped Session with Skill</button>
                    </form>


                    <div class="row">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Select Session</th>
                                    <th scope="col">Select Skills</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="dropdown show" style="width: 700px;">
                                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                             Select Session
                                            </a>
                                          
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Sessio id </label>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label>Sessio id </label>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label>Sessio id </label>
                                                    </div>
                                                </div>
                                              <a class="dropdown-item" href="#">Action</a>
                                              <a class="dropdown-item" href="#">Another action</a>
                                              <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                          </div>

                                    </td>
                                    <td>Otto</td>
                                    <td><button class="btn btn-primary">Mapped it!</button></td>
                                </tr>
                               
                            </tbody>
                        </table>
        
                    </div>


                </div>
            </div>

            
        </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </body>

    </html>