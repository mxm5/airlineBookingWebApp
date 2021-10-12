<%@ page import="Domain.Ticket" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="Util.Context" %>
<%@ page import="static Util.Context.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create tickets</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    if (session.getAttribute("currentModerator") == null || getCurrentModerator()==null) {
        response.sendRedirect("moderator-login.jsp");
    }
%>
<jsp:include page="components/spacer.jsp"/>
<div class="all-classes-container" style="text-align: center">
    <h3>
        create your company
    </h3>
</div>
<br>
<br>
<form class="container" action="create-company" method="get">
    <div class="form-group">
        <label for="amount">enter the name</label>
        <br/>
        <input
                type="text"
                class="form-control "
                id="amount"
                placeholder="Enter amount of tickets"
                name="brand"
        />

        <br>

    </div>


    <button type="submit" class="btn btn-success p">Submit</button>
</form>
<jsp:include page="components/spacer.jsp"/>
<%
    String lable ="";
    Object err = request.getAttribute("er");
    Object sc = request.getAttribute("sc");
    if (err != null ) {
        lable = err.toString();
        out.println("" +
                "<div class=\"alert alert-danger m-6\" role=\"alert\" style=\"margin: 7rem ; margin-top: 0\">\n" +
                lable +
                "</div>");
    }
    if (err == null && sc != null) {
        lable = sc.toString();
        out.println("" +
                "<div class=\"alert alert-success m-6\" role=\"alert\" style=\"margin: 7rem ; margin-top: 0\">\n" +
                lable +
                "</div>");
    }

%>


<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>
