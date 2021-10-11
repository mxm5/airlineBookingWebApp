<%@ page contentType="text/html;charset=UTF-8"  %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="bootstrap/css.jsp"/>
    <title>login customer</title>
</head>
<body>
<jsp:include page="components/spacer.jsp"/>
<%
    if(session.getAttribute("currentCustomer")!=null)
        response.sendRedirect("index.jsp");
%>
<div style="text-align: center" >
    <h3>Register new user</h3>
</div>
<jsp:include page="components/spacer.jsp"/>
<form class="container" action="auth-user" method="POST">
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

    <button type="submit" class="btn btn-primary p">Submit</button>
</form>
<jsp:include page="components/spacer.jsp"/>
<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>