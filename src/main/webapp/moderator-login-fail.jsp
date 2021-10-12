<!DOCTYPE html>
<html lang="en">
<head>

    <title>moderator login fail</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<%
    response.setHeader("Cache-Control","no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires","0");
    String password = request.getParameter("password");
    if(password==null) {
        response.sendRedirect("moderator-login.jsp");
    }
%>
<body class="text-center vsc-initialized">



<!-- top nav start -->
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#"> Airline booking </a>
</nav>
<!-- top nav end -->

<div
        class="col-sm-6 col-lg-4 mb-4"
        style="position: absolute; left: 33.3333%; top: 171px"
>
    <div class="card bg-danger text-white text-center p-3">
        <figure class="mb-0">
            <blockquote class="blockquote">
                <p>login failed </p>
            </blockquote>
            <a href="moderator-login.jsp"
               role="button"
               class="btn btn-outline-light me-2">try again</a>

        </figure>
    </div>
</div>
<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>

