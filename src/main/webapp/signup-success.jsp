<!DOCTYPE html>
<html lang="en">
  <head>

    <title>sign up success</title>
    <jsp:include page="bootstrap/css.jsp"/>
  </head>

  <body class="text-center vsc-initialized">
  <%
    response.setHeader("Cache-Control","no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires","0");
    String password = request.getParameter("password");
    if(password==null) {
      response.sendRedirect("signup.jsp");
    }
  %>
    <!-- top nav start -->
    <nav class="navbar navbar-light bg-light">
      <a class="navbar-brand" href="#"> Airline booking </a>
    </nav>
    <!-- top nav end -->

    <div
      class="col-sm-6 col-lg-4 mb-4"
      style="position: absolute; left: 33.3333%; top: 171px"
    >
      <div class="card bg-success text-white text-center p-3">
        <figure class="mb-0">
          <blockquote class="blockquote">
            <p>you are logged in successfully in system</p>
          </blockquote>

          <a
            role="button"
            class="btn btn-outline-light me-2"
            href="login.jsp"
            >login to your account </a
          >
        </figure>
      </div>
    </div>
  <jsp:include page="bootstrap/js.jsp"/>
  </body>
</html>
