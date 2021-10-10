<%@ page import="Repositories.Impls.TicketRepository" %>
<%@ page import="java.io.PrintWriter" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<jsp:include page="components/topHeader.jsp"/>
<jsp:include page="components/navbarMenu.jsp"/>

<%

    String home = request.getParameter("home");
    String destination = request.getParameter("destination");


%>
<form class="container" action="index.jsp" method="get">
    <div class="form-group">
        <label for="exampleInputEmail1">From</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter home "
                name="home"
        />
        <br/>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">To</label>
        <br/>
        <input
                type="password"
                class="form-control p"
                size="55"
                id="exampleInputPassword1"
                placeholder="Enter destination"
                name="destination"
        />
    </div>
    <button type="submit" class="btn btn-primary p">Submit</button>
</form>

<%
    out.println(home);
    out.println(destination);
%>
<div class="table-responsive">

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">moving date</th>
            <th scope="col">Last</th>
            <th scope="col">Handle</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
        </tr>
        </tbody>
    </table>
</div>

<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>
