<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <jsp:include page="../all_css_js.jsp"></jsp:include>
    
</head>
<body>
    <div class="container-fluid">
        <div class="row justify-content-evenly">
            <div class="col-md-8">
                <h2>Error Page</h2>
                <p>Unauthorized User , please Login! </p>
                <a href="login_page.jsp"><button class="button">Home Page</button></a>

            </div>
        </div>
    </div>
</body>
</html>