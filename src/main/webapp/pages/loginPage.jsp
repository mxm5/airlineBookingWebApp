<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
  <head>

    <title>Document</title>
    <jsp:include page="/bootstrap/css.jsp"/>
  </head>

  <body>
    <!-- top nav start -->
    <jsp:include page="/components/topHeader.jsp"/>
    <!-- top nav end -->
    <br />
    <br />
    <
    <br />
    <br />
    <br />
    <!-- form start -->
    <form class="container" action="index.jsp" method="get">
      <div class="form-group">
        <label for="exampleInputEmail1">User Name</label>
        <br />
        <input
          type="text"
          class="form-control p"
          size="55"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Enter user name "
          name="username"
        />
        <br />
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <br />
        <input
          type="password"
          class="form-control p"
          size="55"
          id="exampleInputPassword1"
          placeholder="Enter Password"
          name="password"
        />
      </div>
      <!-- 
        <div class="form-check">
        <input
          type="checkbox"
          class="form-check-input p big-checkbox"
          id="exampleCheck1"
        />
        <label class="form-check-label" for="exampleCheck1"
          >keep me logged in</label
        >
      </div> 
    -->
      <button type="submit" class="btn btn-primary p">Submit</button>
    </form>
    <!-- form end -->
    <jsp:include page="/bootstrap/js.jsp"/>
  </body>
</html>
<!-- https://getbootstrap.com/docs/5.1/examples/#snippets  -->
