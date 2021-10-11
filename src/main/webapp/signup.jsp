
<%@ page contentType="text/html;charset=UTF-8"  %>
<!doctype html>
<head>
    <title>sign up </title>
    <jsp:include page="bootstrap/css.jsp"/>
    <jsp:include page="components/spacer.jsp"/>
</head>
<html lang="en">
<body>
<div style="text-align: center" >
    <h3>Register new user</h3>
</div>
<jsp:include page="components/spacer.jsp"/>
<form class="container" action="reg-user" method="POST">
    <div class="form-group">
        <label for="fn">First Name</label>
        <br />
        <input
                type="text"
                class="form-control p"
                size="55"
                id="fn"
                aria-describedby="emailHelp"
                placeholder="Enter first name "
                name="fn"
        />
        <br />
    </div>    <div class="form-group">
        <label for="ln">Last Name</label>
        <br />
        <input
                type="text"
                class="form-control p"
                size="55"
                id="ln"
                aria-describedby="emailHelp"
                placeholder="Enter Last name "
                name="ln"
        />
        <br />
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">User Name</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter user name "
                name="username"
        />
        <br/>
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
        <br>
        <br>
    <button type="submit" class="btn btn-primary p">Submit</button>
</form>

<jsp:include page="components/spacer.jsp"/>
<div style="text-align: center" >
    <h3><%
        String lable = "";
        String e = ((String) request.getAttribute("e"));
        if (e!=null) lable = e;
    %>
    <%=lable%>
    </h3>
</div>
<jsp:include page="components/spacer.jsp"/>
<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>