<!DOCTYPE html>
<html lang="en">
  <head>

    <title>Document</title>
    <jsp:include page="basic/bootstrapCss.jsp"/>
  </head>

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

          <a
            role="button"
            class="btn btn-outline-light me-2"
            href="/user-login"
            >try again</a
          >
        </figure>
      </div>
    </div>
    <jsp:include page="basic/bootstrapJavaScript.jsp"/>
  </body>
</html>
<!-- https://getbootstrap.com/docs/5.1/examples/#snippets  -->
