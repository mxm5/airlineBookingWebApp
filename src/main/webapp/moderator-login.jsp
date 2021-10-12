<%--
  Created by IntelliJ IDEA.
  User: derian
  Date: 12.10.21
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="bootstrap/css.jsp"/>
    <title>Title</title>
</head>
<jsp:include page="components/spacer.jsp"/>
<body>
<div style="text-align: center" >
    <h3>login as moderator</h3>
</div>
<jsp:include page="components/spacer.jsp"/>
<form class="container" action="auth-mod" method="POST">
    <div class="form-group">
        <label for="mod-name">User Name</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="mod-name"
                placeholder="Enter user name "
                name="username"
        />
        <br/>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <br/>
        <input
                type="password"
                class="form-control p"
                size="55"
                id="exampleInputPassword1"
                placeholder="Enter Password"
                name="password"
        />
    </div>

    <button type="submit" class="btn btn-success p">Submit</button>
</form>
<jsp:include page="components/spacer.jsp"/>
<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>
